<%@page import="java.awt.image.BufferedImage"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="java.util.List"%>
<%@page import="steer.CarDto.CarDto"%>
<%@page import="retal.steer.dao.CarDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cars In Serve</title>
<link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

<style>

    * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           
        }
        
        body{
        background-image: url("black-1072366.jpg");
        }

        .header {
            position: fixed ;
            top: 0;
            left: 0;
            width: 100vw;
            height : 5vh ;
            padding: 25px 6%;
            background-color: rgba(244, 224, 10, 0.991);
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
        }

        .logo {
            font-size: 25px;
            color: #222;
            text-decoration: none;
            font-weight: 600;
            opacity: 0;
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
            color: #222;
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
            background-color: rgba(244, 224, 10, 0.991);
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

        @media screen and (max-width: 768px) {
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
            font-size: 2.5em;
            padding-top: 2px;
            padding-left: 8px;
            margin: auto;
            background: transparent;
            border: 2px solid transparent;
            text-decoration: none;
            transition: .5s;
            transform: rotate(45deg);
            opacity: 0;
            animation: slideSc1 .5s ease forwards;
            animation-delay: calc(.2s * var(--i));
        }

        .social-media a:hover {
            border-color: #0b3af4;
        }

        .social-media a i {
            font-size: 24px;
            color:  #0b3af4 ;
            transform: rotate(-45deg);
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
                transform: translateX(100px) rotate(45deg);
                opacity: 0;
            }

            100% {
                transform: translateX(0) rotate(45deg);
                opacity: 1;
            }
        }

section{
	margin-top : 50px ;
	font-size: 18px ;
	color : black ;
	 background-image: url("black-1072366.jpg");
       
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	animation: animatebg 5s linear infinite;
	
}
   
  button {
    background-color: grey;
    color: white; 
    border: none;
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
<%%>
<%%>
<%%>
.card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-around;
            padding: 20px;
        }

        .card {
            width: 300px;
            margin: 20px;
            background-color: #ffffff;
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

        .card img 
        {
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

</style>
</head>
<body>
<header class="header">
      
       <a href="#" class="logo">Steer. Rent Cars</a>

        <nav class="navbar">
            <a href="DealerHome.jsp" style="--i:1;" class="active">Home</a>
            <a href="#" style="--i:2;">About</a>
            <a href="Login.jsp" value="Login" style="--i:3;">Log Out</a>
            <a href="#" style="--i:5;">Contact</a>

            <div class="navbar-toggle" onclick="toggleNavbar()">
                <i class='bx bx-menu'></i>
            </div>
        </nav>

        <div class="navbar-mobile">
            <a href="DealerHome.jsp" class="active">Home</a>
            <a href="#">About</a>
            <a href="Login.jsp" value="Login">Log Out</a>
            <a href="#">Contact</a>
        </div>

        <div class="social-media">
            <a href="#" style="--i:1;"><i class='bx bxl-twitter'></i></a>
            <a href="#" style="--i:2;"><i class='bx bxl-facebook'></i></a>
            <a href="#" style="--i:3;"><i class='bx bxl-instagram'></i></a>
        </div>
      
    </header>
 <section>
        <%
     	CarDao dao = new CarDao();
        List<Object[]> carAndImages = dao.getAllCarAndImages(); 
        %>

 	<div class="card-container">
      
		<% 
		for (Object[] carAndImage : carAndImages) {
            CarDto car = (CarDto) carAndImage[0];
            List<String> images = (List<String>)carAndImage[1];
            String base64Image = (images != null && !images.isEmpty()) ? images.get(0) : "";
         
            System.out.println("Car ID: " + car.getCarId());
            System.out.println("Number of images: " + images.size());
           // System.out.println("Base64 Image: " + base64Image);
         %>
        
      <div class="card">
                    <img src='data:image/png;base64,<%=base64Image%>' alt="<%=car.getBrand()%> Image">
                    <div class="card-content">
                        <h3><%=car.getBrand()%> <%=car.getModel()%></h3>
                        <p>Fuel Type: <%=car.getFuelType()%></p>
                        <p>Transmission: <%=car.getTransmission()%></p>
                        <p>Capacity: <%=car.getCapacity()%></p>
                        <p>Price: <%=car.getPrice()%></p>
                        <button><a href="UpdateCar.jsp?id=<%=car.getCarId()%>">Update</a></button>
                        <button><a href="DeleteCar.jsp?id=<%=car.getCarId()%>">Delete</a></button>
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

</body>
</html>