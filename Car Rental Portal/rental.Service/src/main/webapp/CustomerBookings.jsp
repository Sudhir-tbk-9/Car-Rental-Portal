<!DOCTYPE html>
<%@page import="bookingDto.Booking"%>
<%@page import="steer.CarDto.CarDto"%>
<%@page import="java.util.List"%>
<%@page import="retal.steer.dao.CarDao"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Bookings</title>
    <style>
        html, body {
            height: 100%;
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background-color: #2e2e2e ;
        }

        .container {
            display: flex;
            height: 100vh ;
            
        }

        .sidebar {
            background-color: #333;
            color: #fff;
            
            width : 24rem ;
            display: flex;
            height : 100% ;
            position : fixed ;
            flex-direction: column;
        }

        .logo {
            text-align: center;
            margin-bottom: 40px;
            font-size: 2rem ;
            font-weight: 800  ;
            background-color: #333 ;
            color: #fff ;
        }

        .menu {
            list-style: none;
            padding: 10px;
            margin: 5px;
            flex: 1;
            justify-content: center;
            align-content: center;
            
        }

       

        .menu a {
        	font-size : 1.5rem ;
        	text-decoration: none;
            color: #fff;
            font-weight: bold;
            display: flex;
            padding-top: 42px;
            padding-left : 100px ;
            padding-bottom : 39px ;
            margin-bottom : 25px ;
            border-radius : 0.9em ;
            transition: background-color 0.3s ease;
        }

        .menu a:hover {
            background-color: #555;
        }

        main {
            padding: 20px;
            flex-grow: 1;
        }

        header {
            background-color: #333;
            color: #fff;
            padding: 20px;
            text-align: center;
        }


section{
	/* font-size: 18px ;
	color : black ;
	background-color: #555;
	display: flex;
	flex-wrap : wrap ;
	padding : 55px ;
	justify-content: center;
	align-items: center;
	position: relative;
	animation: animatebg 5s linear infinite;
*/
	font-size: 18px;
    color: black;
    background-color: #555;
    display: flex;
    flex-wrap: wrap;
    padding: 55px;
    justify-content: center;
    align-items: center;
    position: relative;
    animation: animatebg 5s linear infinite;
	
}
  
  .main-content {
    margin-left: 24rem; /* Adjust this value based on your sidebar width */
    width: calc(100% - 24rem);
    overflow-y: auto;
    scrollbar-color: Black;
    scrollbar-width: thin;
}

button a {
    text-decoration: none;
}
    
.bold{
font-weight: 500 ;
font-size: 1em ;
}

img{
width: 100px;
height : 100px;
}

.card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .card {
            width: 300px;
            margin: 20px;
            background-color: black;
            color : white ;
            
            border: 1px solid #e1e1e1;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease-in-out;
        }

        .card:hover {
            transform: scale(1.05);
             box-shadow: 0 24px 100px black;
           
        }

        .card img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-bottom: 1px solid #e1e1e1;
        }

        .card-content {
            padding: 15px;
        }

        .card-content h3 {
            font-size: 1.5em;
            margin-bottom: 10px;
        }

        .card-content p {
            font-size: 1em;
            margin-bottom: 10px;
        }

        .card-content button {
            background-color: grey;
            color: white;
            border: none;
            padding: 8px 16px;
            border-radius: 4px;
            cursor: pointer;
            font-size: 14px;
            font-weight: 600;
            transition: background-color 0.3s ease-in-out;
        }

        .card-content button:hover {
            background-color: white;
            border : 2px solid blue ;
            
        }
        
          main {
	font-size: 2.4em;
	font-weight : 700 ;
	margin-top : 40vh ;
	align-items : center;
	width : 100vw ;
	height : 100px ;
	color: black;
	padding-left : 20vw ;
	padding-right : 20vw ;
	position: absolute;
	top: 45px;
	left: 50%;
	transform: translateX(-50%);
	display: flex;
	z-index: 200;
	background-color: transparent ;
	backdrop-filter: blur(35px); 
	
}
        
    </style>
</head>
<body>
     <% System.out.println("Debug Point 1");
        
     	String mobile = request.getParameter("mobile");
        
     	  if (mobile == null || mobile.trim().isEmpty()) {
              // Redirect or handle the case when mobile is null
              response.sendRedirect("CustomerHome.jsp");
          } else {
              request.setAttribute("mobile", mobile);
              System.out.println("Mobile: " + mobile);
        
        
    %>
    <div class="container">
        <nav class="sidebar">
            <br>
            <br>
            <br>
           
            <ul class="menu">
            <div class="logo" >
                Your Bookings
            <br>
            
            </div>
            
             <li><a href="CustomerHome.jsp" style="--i:1;" class="active">Go Back </a></li>
             <li><a href="logout" style="--i:3;">Log Out</a></li>
            
            
            </ul>
            
            
             
        </nav>
       <div class="main-content">
         <section>
     <%
        CarDao dao = new CarDao();
       
        List<Object[]> userBookingsWithCars = dao.getUserBookingsWithCarDetails(mobile);
        System.out.println("Debug Point 2");
        
        // Display the combined information
        for (Object[] combinedObject : userBookingsWithCars) {
            Booking booking = (Booking) combinedObject[0];
            CarDto car = (CarDto) combinedObject[1];
            List<String> images = (List<String>) combinedObject[2];
            String base64Image = (images != null && !images.isEmpty()) ? images.get(0) : "";
           
            System.out.println("BookingId : " + booking.getBooking_id());
            System.out.println("Car: " + car.getBrand() + " " + car.getModel());
       
    %>
    <div class="card">
        <img src='data:image/png;base64,<%=base64Image%>' alt="<%=car.getBrand()%> Image">
        <div class="card-content">
            <h3><%=car.getBrand()%> <%=car.getModel()%></h3>
            <p>Fuel Type: <%=car.getFuelType()%></p>
            <p>Transmission: <%=car.getTransmission()%></p>
            <p>Capacity: <%=car.getCapacity()%></p>
            <p>Dealer Name: <%=car.getDealerName() %></p>
            <p>Dealer Contact: <%=car.getDealerId() %></p>
            <p>Booking Date: <%=booking.getBooking_date()%></p>
            <p>Return Date: <%=booking.getReturn_date()%></p>
            <p>Amount Paid: <%=booking.getAmount_paid()%></p>
        </div>
    </div>
    <%
    System.out.println("Debug Point 3");
        }
    %>
</section>
       </div>            
    </div>
    
    <%
    System.out.println("Debug Point 4 added afte setting null in mob code not literally");
        }
    %>
       
</body>
</html>
