package retal.steer.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Base64;
import java.util.Collections;
import java.util.List;

import javax.imageio.ImageIO;

import AuthenticationAndConnection.ConnectionJDBC;
import bookingDto.Booking;
import steer.CarDto.CarDto;

import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import javax.imageio.ImageIO;
public class CarDao {
	public static int result ;
	
	static Connection conn = ConnectionJDBC.getDBConnection();
//===========================================================
	public CarDto saveCarDao(CarDto car) {
		
		try {
			CallableStatement call = conn.prepareCall("call saveCar(?,?,?,?,?,?,?)");
			
			call.setInt(1, car.getCarId());
			call.setString(2, car.getBrand());
			call.setString(3, car.getModel()) ;
			call.setString(4, car.getFuelType());
			call.setString(5, car.getTransmission());
			call.setInt(6, car.getCapacity());
			call.setInt(7, car.getPrice());
			
			call.execute();
			 
			return car;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return null;
	}
//=======================================================================================================
//=======================================================================================================

	public List<Object[]> getUserBookingsWithCarDetails(String mobile) {
	    List<Object[]> combinedList = new ArrayList<>();

	    // Get user bookings
	    List<Booking> userBookings = getUserBookings(mobile);

	  
	    List<Object[]> allCarAndImages = getAllCarAndImages();

	    
	    for (Booking booking : userBookings) {
	        
	        for (Object[] carAndImage : allCarAndImages) {
	            CarDto car = (CarDto) carAndImage[0];
	            List<String> images = (List<String>) carAndImage[1];

	            // Check if the car ID matches the booked car ID
	            if (booking.getCar_id() == car.getCarId()) {
	                // Create a new Object[] with Booking and Car details
	                Object[] combinedObject = new Object[]{booking, car, images};
	               
	                combinedList.add(combinedObject);
	               
	            }
	        }
	    }

	    return combinedList;
	}

	
//=======================================================================================================
//=======================================================================================================

	public List<Booking> getUserBookings(String mobile) {
        List<Booking> userBookings = new ArrayList<>();

        String query = "SELECT * FROM booking WHERE mobile = ?";

        try (PreparedStatement preparedStatement = conn.prepareStatement(query)) {
            preparedStatement.setString(1, mobile);

            try (ResultSet resultSet = preparedStatement.executeQuery()) {
                while (resultSet.next()) {
                    Booking booking = new Booking(
                    		resultSet.getInt("booking_id"),
                    		resultSet.getString("mobile"),
                    		resultSet.getString("name"),
                    		resultSet.getString("email"),
                    		resultSet.getInt("car_id"),
                    		resultSet.getString("booking_date"),
                    		resultSet.getString("return_date"),
                    		resultSet.getString("amount_paid"));
                    
                    userBookings.add(booking);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            // Handle the exception according to your application's error handling strategy
        }

        return userBookings;
    }

	

	
//=======================================================================================================
//=======================================================================================================
public List<Object[]> getAllCarAndImagesforDealer(String userName , String userPhone){
		
	    List<Object[]> carAndImages = new ArrayList<>();
	    
	    String sql = "SELECT * FROM cartable WHERE dealerName = ? AND dealerId = ?";
	    
	    try {
	        PreparedStatement prepState = conn.prepareStatement(sql);
	        prepState.setString(1, userName);
	        prepState.setString(2, userPhone);
	        
	        ResultSet rst = prepState.executeQuery();

	        while (rst.next()) {
	            CarDto car = mapResultSetToCarDto(rst);
	            List<String> images = getPictureById(car.getCarId());

	            Object[] carAndImage = new Object[]{car, images};
	            carAndImages.add(carAndImage);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return carAndImages;
	}

	
	
//=======================================================================================================
//=======================================================================================================
	public List<Object[]> getAllCarAndImages(){
		
		List<Object[]> carAndImages = new ArrayList<>();
		
		String sql = "Select * from cartable";
		try {
			PreparedStatement prepState = conn.prepareStatement(sql);
			
			ResultSet rst = prepState.executeQuery();
		
			while(rst.next()) {
				CarDto car = mapResultSetToCarDto(rst);
				List<String> images = getPictureById(car.getCarId());
				
				Object[] carAndImage = new Object[]{car,images};
				
				carAndImages.add(carAndImage);
				
			}	
			
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}
		return carAndImages ;
	}	
//===================================================================================================================
		public CarDto mapResultSetToCarDto(ResultSet resultSet) throws SQLException {
	        
			int carId = resultSet.getInt("carId");
		    String brand = resultSet.getString("brand");
		    String model = resultSet.getString("model");
		    String fuelType = resultSet.getString("fuelType");
		    String transmission = resultSet.getString("transmission");
		    int capacity = resultSet.getInt("capacity");
		    String dealerName = resultSet.getString("dealerName");
		    String dealerId = resultSet.getString("dealerId");
		    int price = resultSet.getInt("price");

		    return new CarDto(carId, brand, model, fuelType, transmission, capacity, dealerName, dealerId, price);
	    }
		
//===================================================================================================================
	public List<String> getPictureById(int carId) {
	   
		try {
	        CallableStatement call = conn.prepareCall("call displayImg(?)");
	        call.setInt(1, carId);
	        ResultSet resultSet = call.executeQuery();

//	        List<BufferedImage> images = new ArrayList<>();
	        
	        List<String> images = new ArrayList<String>();
	        

	        while (resultSet.next()) {
	            Blob blob = resultSet.getBlob("picture");
//	            System.out.println("blob image" + blob);
	            
	            byte[] picData = blob.getBytes(1, (int) blob.length());
//	            System.out.println("pic data " + picData);
	            
	            BufferedImage image = convertBytesToImage(picData);
	      
	            
	            String base64Image = encodeImageToBase64(image);
	           
	            images.add(base64Image);
	        }

	      

	        return images ;
		    
	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle the exception appropriately based on your application's needs
	    }
	    
	    
        return Collections.emptyList();
	}
	    
	
//==============================================================	
	public List<CarDto> getAllCarDetailsDao() {
	    try {
	        CallableStatement call = conn.prepareCall("call displayAll()");
	        ResultSet resultSet = call.executeQuery();
//	        System.out.println("checking " + call);
	        List<CarDto> cars = new ArrayList<>();

	        while (resultSet.next()) {
	         
	            CarDto car = new CarDto(
	                    resultSet.getInt("carId"),
	                    resultSet.getString("brand"),
	                    resultSet.getString("model"),
	                    resultSet.getString("fueltype"),
	                    resultSet.getString("transmission"),
	                    resultSet.getInt("capacity"),

	                    resultSet.getInt("price")
	            );

	            cars.add(car);
	        }

	        return cars;

	    } catch (SQLException e) {
	        e.printStackTrace();
	        // Handle the exception appropriately based on your application's needs
	    }

	    return null;
	}
//	=========================================================================================
	private BufferedImage convertBytesToImage(byte[] imageData) {
        try {
            ByteArrayInputStream bis = new ByteArrayInputStream(imageData);
            
//            System.out.println("convert method" + bis);
            return ImageIO.read(bis);
        
        } catch (IOException e) {
            e.printStackTrace();
                 }
        return null;
    }

	

	
	
//===========================================================
	
	public CarDto getCarDetailByCarIdDao(int idToUpdate) {
		
		try {
		CallableStatement call = conn.prepareCall("call getById(?)");
		call.setInt(1,idToUpdate );
		
		ResultSet rs = call.executeQuery();
			
		if(rs.next()) {
			
			return new CarDto(rs.getInt("carId"),
					rs.getString("brand"),
					rs.getString("model"),
					rs.getString("fueltype"),
					rs.getString("transmission"),
					rs.getInt("capacity"),
					rs.getInt("price")) ;
					
		}
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null ;
	}
	
//=========================================================================================
	
	public CarDto updateCarDao(CarDto carSaved) {
		
		String updateQuery = "update cars set brand = ?,model=?,fueltype=?,transmission=? ,capacity=? ,picture=? ,price=? where carId = ?";

		try {
			PreparedStatement prepState = conn.prepareStatement(updateQuery);
			
			prepState.setInt(8, carSaved.getCarId());
			prepState.setString(1, carSaved.getBrand());
			prepState.setString(2, carSaved.getModel()) ;
			prepState.setString(3, carSaved.getFuelType());
			prepState.setString(4, carSaved.getTransmission());
			prepState.setInt(5, carSaved.getCapacity());
			prepState.setBlob(6, carSaved.getPicture());
			prepState.setInt(7, carSaved.getPrice());
			
			prepState.executeUpdate();

			return carSaved ;

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return null;
	}
	//=================================================================================================================================		
	
			public int delCarDao(int idToDelete) {
					
				
				try {
					CallableStatement call = conn.prepareCall("call deleteById(?)");
					call.setInt(1, idToDelete);
					
					 return call.executeUpdate();
					
					
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				return 0 ;
		}
			

	//=================================================================================================================================
		
			 public void storeBlob(int carId, InputStream pictureStream) {
			        try {
			            CallableStatement call = conn.prepareCall("call storeBlob(?, ?)");
			            // Log values before the insertion
			            System.out.println("carId: " + carId);
			            System.out.println("pictureStream: " + pictureStream);

			            call.setInt(1, carId);
			           
			            call.setBlob(2, pictureStream);

			            // Execute the stored procedure
			            call.execute();

			        } catch (SQLException e) {
			            e.printStackTrace();
			        }
			        
			        	
			    }
	//===========================================================================================================================

			 public Blob convertToBlob(String parameter) {
			        try {
			            // Decode the Base64 string to a byte array
			            byte[] decodedBytes = Base64.getDecoder().decode(parameter);

			            // Create a Blob object from the byte array
			            Blob blob = conn.createBlob();
			           
			            blob.setBytes(1, decodedBytes);

			            return blob;

			        } catch (SQLException e) {
			            e.printStackTrace();
			           
			        }

			        return null;
			    }
			 
//	===========================================================================================================================	 

//	=================================================================================================
			 
			 // Function to encode BufferedImage to Base64
			    public String encodeImageToBase64(BufferedImage image){
			              try {
			            
			            ByteArrayOutputStream baos = new ByteArrayOutputStream();
			            ImageIO.write(image, "jpg", baos);
			            byte[] imageData = baos.toByteArray();
			            return Base64.getEncoder().encodeToString(imageData);
			       
			              } catch (Exception e) {
			            e.printStackTrace();
			            return "";
			        }
			    }
			   
//	===============================================================================================================
			    public List<Object[]> getApprovedCarAndImages(){
					
					List<Object[]> carAndImages = new ArrayList<>();
					
					String sql = "Select * from cartable where approval = 'approve' " ;
					try {
						PreparedStatement prepState = conn.prepareStatement(sql);
						
						ResultSet rst = prepState.executeQuery();
					
						while(rst.next()) {
							CarDto car = mapResultSetToCarDto(rst);
							List<String> images = getPictureById(car.getCarId());
							
							Object[] carAndImage = new Object[]{car,images};
							
							carAndImages.add(carAndImage);
							
						}	
						
					}catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					
				}
					return carAndImages ;
				}
			    
//***************************************************************************************************
				public void saveCarsDealerInfo(int carId, String dealerName, String dealerId) {
					String sqlupdate = "UPDATE cartable SET dealerName = ?, dealerId = ? WHERE carId = ?";
			          
					try {
						PreparedStatement preparedStatement = conn.prepareStatement(sqlupdate);
						
						preparedStatement.setString(1, dealerName);
			            preparedStatement.setString(2, dealerId);
			            preparedStatement.setInt(3, carId);
			            preparedStatement.executeUpdate();
						
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					
					
				} 
			    
			    
			 }
