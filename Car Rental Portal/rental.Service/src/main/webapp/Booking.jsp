<%@page import="java.text.ParseException"%>
<%@page import="java.time.ZoneId"%>
<%@page import="java.time.temporal.ChronoUnit"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="steer.UserDto.UserDto"%>
<%@page import="retal.steer.dao.UserDao"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@ page import="java.util.Calendar" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="retal.steer.dao.CarDao" %>
<%@ page import="steer.CarDto.CarDto" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Booking Page</title>
    
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-image : url("car-5383371.jpg");
 			background-position :center;
 			background-size : cover;
 			background-repeat : no-repeat;
 			
            margin: 0;
            padding: 0;
        }

        h2 {
            color: white;
            align-items: center;
            justify-content: center;
        }

        form {
            max-width: 600px;
            margin: 20px auto;
            background-color: transparent;
            backdrop-filter : blur(2px) ;
            padding: 20px;
            border-radius: 0.9rem;
            border : thin;
            border-radius : 0.9rem ;
            box-shadow: 0 0 19px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin: 10px 0 5px;
            color: white;
        }

        input[type="text"],
        input[type="datetime-local"] {
            width: 100%;
            padding: 8px;
            margin: 5px 0 20px;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        input[type="submit"] {
            background-color: yellowgreen;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
        }
        
    
        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[readonly] {
            background-color: #eee;
            cursor: not-allowed;
        }
        
        .styled-button {
    background-color: yellowgreen;
    color: #fff;
    padding: 10px 15px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    text-decoration: none;
}

.styled-button:hover {
    background-color: #45a049;
}
    </style>
    
    <script>
        var bookingDate = new Date();
    </script>
</head>
<body>
<%
    // Get parameters from the URL
    long mobile = Long.parseLong(request.getParameter("mobile"));
    int carId = Integer.parseInt(request.getParameter("carId"));

    CarDao dao = new CarDao();
    UserDao userdao = new UserDao();

    // Fetch car and user details based
    CarDto car = dao.getCarDetailByCarIdDao(carId);
    UserDto user = userdao.getUserDetailByPhoneIdDao(mobile);

    System.out.println("Mobile parameter: " + request.getParameter("mobile"));
    System.out.println("CarId parameter: " + request.getParameter("carId"));

    // For testing purposes, you can print the details
    System.out.println("Mobile: " + mobile);
    System.out.println("Car ID: " + carId);
    System.out.println("Car Brand: " + car.getBrand());
    //System.out.println("booking Date: "+ bookingDate  );
    LocalDate currentDate = LocalDate.now();
    System.out.println("~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~");
%>

<form action="ProcessBooking" method="post">
<h2>Booking Details</h2>
    <label>Customer Mobile:</label>
    <input type="text" name="mobile" value="<%= mobile %>" readonly><br>

    <label>Customer Name:</label>
    <input type="text" name="name" value="<%= user.getName() %>" readonly><br>

    <label>Customer Email:</label>
    <input type="text" name="email" value="<%= user.getEmail() %>" readonly><br>

    <label>Car Brand:</label>
    <input type="text" name="carBrand" value="<%= car.getBrand() %>" readonly><br>

    <label>Booking Date:</label>
    <input type="datetime-local" name="bookingDate" id="bookingDate" required "><br>

    <label>Return Date:</label>
    <input type="datetime-local" id="returnDate" name="returnDate" required onchange="calculateAmount()"><br>

    <label>Amount to be Paid:</label>
    <input type="text" id="amountToBePaid" name="amountToBePaid" readonly><br>

    <input type="hidden" name="carId" value="<%= carId %>">
    <input type="submit" value="Confirm Booking">
   	
   	<a href="CustomerHome.jsp"><button class="styled-button">Go Back</button></a>
   	
   	
</form>


<script>
    function calculateAmount() {
        var bookingDateStr = document.getElementById("bookingDate").value;
        var bookingDate = new Date(bookingDateStr);

        var returnDateStr = document.getElementById("returnDate").value;
        var returnDate = new Date(returnDateStr);

        console.log("Booking Date:", bookingDate);
        console.log("Return Date:", returnDate);

        // Calculate the number of days between booking and return dates
        var rentalDays = (returnDate - bookingDate) / (1000 * 60 * 60 * 24);

        // You can replace the following line with the actual price per day from your server
        var pricePerDay = <%=car.getPrice() %>;

        // Calculate the amount to be paid
        var amountToBePaid = pricePerDay * rentalDays;

        // Set the calculated amount in the amountToBePaid input field
        document.getElementById("amountToBePaid").value = amountToBePaid.toFixed(2);
    }
</script>

	
<script>
  document.addEventListener("DOMContentLoaded", function() {
    var mainElement = document.querySelector("main");

    setTimeout(function() {
      mainElement.style.opacity = "0";
      mainElement.style.display = "none";
    }, 5000); //(5 seconds)
  });
</script>
</body>
</html>
