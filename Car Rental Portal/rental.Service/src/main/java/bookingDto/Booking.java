package bookingDto;

import steer.CarDto.CarDto;

	import java.util.Date;

	public class Booking {
	    private String customerName;
	    private CarDto car;
	    private Date returnDate;
	    private long rentalDays;
	    private double totalAmount;

	    private int booking_id;
	    private String mobile;
	    private String name;
	    private String email;
	    private int car_id;
	    private String booking_date;
	    private String return_date;
	    private String amount_paid;
	   
	    
		

	    public int getBooking_id() {
			return booking_id;
		}

		public void setBooking_id(int booking_id) {
			this.booking_id = booking_id;
		}

		public String getMobile() {
			return mobile;
		}

		public void setMobile(String mobile) {
			this.mobile = mobile;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public int getCar_id() {
			return car_id;
		}

		public void setCar_id(int car_id) {
			this.car_id = car_id;
		}

		public String getBooking_date() {
			return booking_date;
		}

		public void setBooking_date(String booking_date) {
			this.booking_date = booking_date;
		}

		public String getReturn_date() {
			return return_date;
		}

		public void setReturn_date(String return_date) {
			this.return_date = return_date;
		}

		public String getAmount_paid() {
			return amount_paid;
		}

		public void setAmount_paid(String amount_paid) {
			this.amount_paid = amount_paid;
		}

		public Booking() {
	    }

	    public Booking(String customerName, CarDto car, Date returnDate, long rentalDays, double totalAmount) {
	        this.customerName = customerName;
	        this.car = car;
	        this.returnDate = returnDate;
	        this.rentalDays = rentalDays;
	        this.totalAmount = totalAmount;
	    }

	    public Booking(int booking_id, String mobile, String name, String email, int car_id, String booking_date,
				String return_date, String amount_paid) {
			this.booking_id = booking_id;
			this.mobile = mobile;
			this.name = name;
			this.email = email;
			this.car_id = car_id;
			this.booking_date = booking_date;
			this.return_date = return_date;
			this.amount_paid = amount_paid;
		}

		public String getCustomerName() {
	        return customerName;
	    }

	    public void setCustomerName(String customerName) {
	        this.customerName = customerName;
	    }

	    public CarDto getCar() {
	        return car;
	    }

	    public void setCar(CarDto car) {
	        this.car = car;
	    }

	    public Date getReturnDate() {
	        return returnDate;
	    }

	    public void setReturnDate(Date returnDate) {
	        this.returnDate = returnDate;
	    }

	    public long getRentalDays() {
	        return rentalDays;
	    }

	    public void setRentalDays(long rentalDays) {
	        this.rentalDays = rentalDays;
	    }

	    public double getTotalAmount() {
	        return totalAmount;
	    }

	    public void setTotalAmount(double totalAmount) {
	        this.totalAmount = totalAmount;
	    }
	}
	
