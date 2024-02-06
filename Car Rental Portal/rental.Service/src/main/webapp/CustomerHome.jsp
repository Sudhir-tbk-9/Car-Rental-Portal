<%@page import="steer.CarDto.CarDto"%>
<%@page import="retal.steer.dao.CarDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customer :Home</title>
<link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

<style>

    * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           
        }
        
     /*   body{
        background-image: url("black-1072366.jpg");
    	background-repeat : no-repeat ;
		background-size: cover;
        background-position: center;
       
        }
     */

        .header {
            position: fixed ;
            top: 0;
            margin-bottom : 50px ;
            left: 0;
            width: 100vw;
            height : 12vh ;
            padding: 10px 4%;
            background-color: #1f1e3e;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
            line-height: 3em ;
        }

        .logo {
            font-size: 2.2em;
            font-weight : 800 ;
            color: #fff;
            text-decoration: none;
            font-weight: 800;
            opacity: 0;
            padding-left : 0 ;
            margin-left : 0 ;
            animation: slideRight 1s ease forwards;
        }
        
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        

        .navbar a {
            display: inline-block;
            font-size: 1.8em;
            color: #fff;
            text-decoration: none;
            font-weight: 500;
            margin: 0 20px;
            transition: .3s;
            opacity: 0;
            animation: slidetop .5s ease forwards;
            animation-delay: calc(.2s * var(--i));
        }

        .navbar a:hover,
        .navbar a:active {
            color: #0106f8;
        }
        
        .navbar-mobile {
            display: none;
            flex-direction: column;
            position: absolute;
            top: 5vh;
            left: 0;
            background-color: blue;
            width: 100%;
            text-align: center;
            z-index: 99;
        }

        .navbar-toggle {
            display: none;
            cursor: pointer;
        }

        .navbar-toggle i {
            font-size: 2em;
        }

        @media screen and (max-width: 768px) 
        {
            .navbar a {
                display: none;
            }

            .navbar-toggle {
                display: block;
            }

            .navbar-mobile a {
                display: block;
                padding: 15px;
            }
        }

        .social-media {
            display: flex;
            justify-content: center;
            align-items: center;
            width: 150px;
            height: 40px;
        }

        .social-media a {
            display: inline-flex;
            width: 40px;
            height: 40px;
            font-size: 3.5em;
            padding-top: 3px;
            padding-left: 4px;
            margin: auto;
            background: transparent;
            border: 2px solid transparent;
            text-decoration: none;
            transition: .5s;
            
            opacity: 0;
            animation: slideSc1 .5s ease forwards;
            animation-delay: calc(.2s * var(--i));
        }

        .social-media a:hover {
            border-color: white;
        }

        .social-media a i {
            font-size: 31px;
            color:  white ;
           
        }

        .home {
            position: relative;
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .home-content {
            max-width: 1000px;
        }

        .home-content h1 {
            font-size: 3em;
            line-height: 1.2;
            opacity: 0;
            animation: slideBottom .5s ease forwards;
            animation-delay: 1s;
        }

        .home-content h3 {
            font-size: 40px;
            color: #1743e3;
            opacity: 0;
            animation: slideRight 1s ease forwards;
            animation-delay: 1.3s;
        }

        .home-content p {
            font-size: 16px;
            margin: 15px 0 30px;
            opacity: 0;
            animation: slideLeft 1s ease forwards;
            animation-delay: 1.6s;
        }

        .btn {
            display: inline-block;
            padding: 10px 28px;
            background: grey;
            border: 2px solid #1743e3;
            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .1);
            font-size: 16px;
            color: black;
            letter-spacing: 1px;
            text-decoration: none;
            font-weight: 900;
            opacity: 0;
            animation: slidetop 1s ease forwards;
            animation-delay: 2s;
        }

        .btn:hover {
            background: transparent;
            color: white;
        }

     
    

          @keyframes slideRight {
            
           0%{
                transform: translateX(-100px);
                opacity: 0;
            }

            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes slideLeft {
            0% {
                transform: translateX(100px);
                opacity: 0;
            }

            100% {
                transform: translateX(0);
                opacity: 1;
            }
        }

        @keyframes slidetop {
            0% {
                transform: translateY(100px);
                opacity: 0;
            }

            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }

        @keyframes slideBottom {
            0% {
                transform: translateY(-100px);
                opacity: 0;
            }

            100% {
                transform: translateY(0);
                opacity: 1;
            }
        }


        @keyframes slideSc1 {
            0% {
                opacity: 0;
            }

            100% {
                opacity: 1;
            }
        }

section{
	margin-top : 50px ;
	font-size: 18px ;
	color : white ;
	background : #1f1e3e ;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	animation: animatebg 5s linear infinite;
	
	
}
   
  button {
    background-color: grey;
    color: white; 
    border: 1px solid white;
    padding: 6px 12px;
    text-align: center;
    display: inline-block;
    font-size: 14px;
    margin: 4px 2px;
    cursor: pointer;
    border-radius: 10px;
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
            padding: 55px;
        }

        .card {
            width: 300px;
            margin: 20px;
            background-color: rgb(172 168 168 / 10%) ;
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
	font-size: 2em;
	font-weight : 700 ;
	margin-top : 40vh ;
	align-items : center;
	width : 100vw ;
	height : 100px ;
	color: white;
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

 h1{
        color : white ;
        }
       
       .btn-style{
       border : 1px solid grey ;
       text-decoration: none ;
       background-color: transparent;
       color: white ;
       border-radius: 0.4em ;
       padding: 2px ;
       margin: 15px 70px ;
       
       }

</style>
</head>
<body>


<% 
String userName = (String) session.getAttribute("username");
String loginMessage = (String) request.getAttribute("loginMessage");
String mobile = (String) request.getAttribute("mobile");
	if (userName != null) {
	
%>

<header class="header">    
       <a href="#" class="logo">Steer. Rent Cars</a>
        <nav class="navbar">
            <a href="CustomerBookings.jsp?mobile=<%= session.getAttribute("mobile") %>" style="--i:2;">My Bookings</a>
            <a href="logout" style="--i:3;">Log Out</a>
            <a href="#" style="--i:5;">Contact</a>

            <div class="navbar-toggle" onclick="toggleNavbar()">
                <i class='bx bx-menu'></i>
            </div>
        </nav>

        <div class="navbar-mobile">
            <a href="CustomerBookings.jsp?mobile=<%= session.getAttribute("mobile") %>" style="--i:2;">My Bookings</a>
            <a href="logout" style="--i:3;">Log Out</a>
            <a href="#" style="--i:5;">Contact</a>
           
        </div>

        <div class="social-media">
            <a href="#" style="--i:1;"><i class='bx bxl-twitter'></i></a>
            <a href="#" style="--i:2;"><i class='bx bxl-facebook'></i></a>
            <a href="#" style="--i:3;"><i class='bx bxl-instagram'></i></a>
        </div>
        
         <h1><%=" Welcome..." %></h1>
        <h1><%=  userName %></h1>
        <% 
            if (loginMessage != null) {
        %>
        <h3 style="color: green;"><%= loginMessage %></h3>
        <%
            }
        %>
        
      
    </header>
 <section>
        <%
     	CarDao dao = new CarDao();
        List<Object[]> carAndImages = dao.getApprovedCarAndImages(); 
        %>

 	  <div class="card-container">
      
		<% 
		for (Object[] carAndImage : carAndImages) {
            CarDto car = (CarDto) carAndImage[0];
            List<String> images = (List<String>)carAndImage[1];
            String base64Image = (images != null && !images.isEmpty()) ? images.get(0) : "";
         
         //   System.out.println("Car ID: " + car.getCarId());
        //    System.out.println("Number of images: " + images.size());
       //     System.out.println("Base64 Image: " + base64Image);  
         %>
        
      <div class="card">
                    <img src='data:image/png;base64,<%=base64Image%>' alt="<%=car.getBrand()%> Image">
                    <div class="card-content">
                        <h3><%=car.getBrand()%> <%=car.getModel()%></h3>
                        <p>Fuel Type: <%=car.getFuelType()%></p>
                        <p>Transmission: <%=car.getTransmission()%></p>
                        <p>Capacity: <%=car.getCapacity()%></p>
                        <p>Price: <%=car.getPrice() + "₹ / day "%></p>
      <a class="btn-style" href="Booking.jsp?mobile=<%= session.getAttribute("mobile") %>&carId=<%=car.getCarId()%>">Rent / Book</a>
        
                    </div>
                </div>     
        <%
            }
        %>
        </table>
    </section>




	 <script>
        function toggleNavbar() {
            const navbarMobile = document.querySelector('.navbar-mobile');
            navbarMobile.style.display = navbarMobile.style.display === 'none' ? 'flex' : 'none';
        }
    </script>


<%
    } 
	else {
        // If not logged in, redirect to login page
        response.sendRedirect("Login.jsp");
    }
	%>
</body>
</html>