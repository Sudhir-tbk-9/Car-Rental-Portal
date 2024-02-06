package steer.Car.Controller;


import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import AuthenticationAndConnection.ConnectionJDBC;

@WebServlet("/ProcessBooking")
public class BookingController extends HttpServlet {
    private static final long serialVersionUID = 1L;


	static Connection conn = ConnectionJDBC.getDBConnection();
	
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
            // Retrieve form parameters
            long mobile = Long.parseLong(request.getParameter("mobile"));
            String name = request.getParameter("name");
            String email = request.getParameter("email");
            int carId = Integer.parseInt(request.getParameter("carId"));
            String bookingDateStr = request.getParameter("bookingDate");
            String returnDateStr = request.getParameter("returnDate");
            double amountToBePaid = Double.parseDouble(request.getParameter("amountToBePaid"));

            System.out.println("Mobile: " + mobile);
            System.out.println("Name: " + name);
            System.out.println("Email: " + email);
            System.out.println("Car ID: " + carId);
            System.out.println("Booking Date: " + bookingDateStr);
            System.out.println("Return Date: " + returnDateStr);
            System.out.println("Amount to be Paid: " + amountToBePaid);

            
            // Convert date strings to Date objects
//            SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm");
//            Date bookingDate = dateFormat.parse(bookingDateStr);
//            Date returnDate = dateFormat.parse(returnDateStr);

            // Insert data into the 'booking' table using a prepared statement
            String insertQuery = "INSERT INTO booking (mobile, name, email, car_id, booking_date, return_date, amount_paid) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = conn.prepareStatement(insertQuery)) 
            {
                preparedStatement.setLong(1, mobile);
                preparedStatement.setString(2, name);
                preparedStatement.setString(3, email);
                preparedStatement.setInt(4, carId);
                preparedStatement.setString(5, bookingDateStr);
                preparedStatement.setString(6,returnDateStr);
                preparedStatement.setDouble(7, amountToBePaid);

//                // Execute the insert statement
                preparedStatement.executeUpdate();
            

                System.out.println("booking successful");
            // Redirect to a success page or display a success message
          

          	 PrintWriter pw  = response.getWriter();
 	        
            pw.write("<html><body><main> Booking Confirmed ! Enjoy your journey... &nbsp;&nbsp <img src='booked.png' alt='Image' height='250px' width='250px'> </main></body></html>" );
     		RequestDispatcher rd = request.getRequestDispatcher("CustomerBookings.jsp");
//     		
     		rd.forward(request, response);
//            
        } catch ( SQLException e) {
            // Handle exceptions appropriately (e.g., log them or show an error page)
            e.printStackTrace();
            PrintWriter pw  = response.getWriter();
 	        
            pw.write("<html><body><main> Booking Failed ! Try Again ... &nbsp;&nbsp <img src='booked.png' alt='Image' height='250px' width='250px'> </main></body></html>" );
     		RequestDispatcher rd = request.getRequestDispatcher("CustomerHome.jsp");
//     		
     		rd.forward(request, response);
           
        }
    
}
}

