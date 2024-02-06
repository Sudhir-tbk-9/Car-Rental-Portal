package steer.CarDto;

import java.awt.image.BufferedImage;
import java.sql.Blob;

public class CarDto {

	int carId ;
	String brand ;
	String model ;
	String fuelType ;
	String transmission ;
	int capacity ;
	Blob picture;
	BufferedImage pic;
	private byte[] pict ; 
	int price ;
//	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	
	private String dealerName ;
	private String dealerId ;

	
	
public String getDealerName() {
		return dealerName;
	}

	public void setDealerName(String dealerName) {
		this.dealerName = dealerName;
	}

	public String getDealerId() {
		return dealerId;
	}

	public void setDealerId(String dealerId) {
		this.dealerId = dealerId;
	}

	public CarDto(int carId, String brand, String model, String fuelType, String transmission, int capacity,
			 String dealerName, String dealerId,  int price) {
		super();
		this.carId = carId;
		this.brand = brand;
		this.model = model;
		this.fuelType = fuelType;
		this.transmission = transmission;
		this.capacity = capacity;
		this.dealerName = dealerName;
		this.dealerId = dealerId;
		this.price = price;
	}

	//	~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~`
	
	public CarDto(Blob picture) {
		super();
		this.picture = picture;
	} 
	
	public CarDto(int carId, String brand, String model, String fuelType, String transmission, int capacity,
			 int price) {
		super();
		this.carId = carId;
		this.brand = brand;
		this.model = model;
		this.fuelType = fuelType;
		this.transmission = transmission;
		this.capacity = capacity;
		this.price = price;
	}
	
	
	public byte[] getPict() {
		
		return pict;
	}

	public void setPict(byte[] picData) {
		this.pict = picData;
	}

	public BufferedImage getPic() {
		return pic;
	}

	public void setPic(BufferedImage pic) {
		this.pic = pic;
	}

	public CarDto(){
		super();
	}

	
	
	public int getCarId() {
		return carId;
	}

	public void setCarId(int carId) {
		this.carId = carId;
	}

	public String getBrand() {
		return brand;
	}

	public void setBrand(String brand) {
		this.brand = brand;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}

	public String getTransmission() {
		return transmission;
	}

	public void setTransmission(String transmission) {
		this.transmission = transmission;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}

	public Blob getPicture() {
		return picture;
	}

	public void setPicture(java.sql.Blob picture) {
		this.picture = picture;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}


	@Override
	public String toString() {
		return "CarDto [carId=" + carId + ", brand=" + brand + ", model=" + model + ", fuelType=" + fuelType
				+ ", transmission=" + transmission + ", capacity=" + capacity + ", picture=" + picture + ", price="
				+ price + "]";
	}

	


	
	
}