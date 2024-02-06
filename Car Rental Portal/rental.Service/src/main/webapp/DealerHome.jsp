<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Dealer :Home</title>
<link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

<style>        
   
    * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           
        }

        .header {
            position: absolute;
            top: 0;
            left: 0;
            width: 100vw;
            padding: 23px 2%;
            background-color: rgba(244, 224, 10, 0.991);
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
        }

        .logo {
              font-size: 35px;
            color: #240af2;
            text-decoration: none;
            font-weight: 800;
            opacity: 0;
            animation: slideRight 1s ease forwards;
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
            padding-left: 1px;
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
            border-color: #0b3af4;
        }

        .social-media a i {
            font-size: 40px;
            color:  #0b3af4 ;
            padding-bottom : 40px ;
            padding-right : 15px ;
        }

        .home {
            position: relative;
            width: 100vw;
            height: 100vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            /* padding: 50px 8% 0; */
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
            background: #1743e3;
            border: 2px solid #1743e3;
            border-radius: 6px;
            box-shadow: 0 0 10px rgba(0, 0, 0, .1);
            font-size: 16px;
            color: #eaeaea;
            letter-spacing: 1px;
            text-decoration: none;
            font-weight: 900;
            opacity: 0;
            animation: slidetop 1s ease forwards;
            animation-delay: 2s;
        }

        .btn:hover {
            background: transparent;
            color: #1743e3;
        }

        .home-img {
            position: relative;
            right: -7%;
            width: 450px;
            height: 450px;
            padding-left: 100px;
            transform: rotate(45deg);

        }

        .home-img .rhombus {
            position: absolute;
            width: 100%;
            height: 100%;
            background: yellow;
            border: 25px solid #1743e3;
            box-shadow: -15px 25px 15px rgba(0, 0, 0, .2);
            opacity: 0;
            animation: zoomout 1s ease forwards;
            animation-delay: 1.6s;
         /*   margin-right: 410px;
            right: 30px;
            top : 400px ;
            */
        }

        .home-img .rhombus img {
            position: absolute;
            top: -152px;
            left: -352px;
            width: 630px;
            transform: rotate(-45deg);
            opacity: 0;
            animation: Car 1s ease forwards;
            animation-delay: 2s;
        }

        .home .rhombus2 {
            position: absolute;
            top: -25%;
            right: -25%;
            width: 700px;
            height: 700px;
            background: #1743e3;
            transform: rotate(45deg);
            z-index: -1;
            opacity: 0;
            animation: rhombus2 1s ease forwards;
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

        @keyframes zoomout {
            0% {
                transform: scale(1.1);
                opacity: 0;
            }

            100% {
                transform: scale(1);
                opacity: 1;
            }
        }
        @keyframes rhombus2 {
            0% {
                right: -40%;
                opacity: 0;
            }

            100% {
                right: -25%;
                opacity: 1;
            }
        }

        @keyframes Car {
        
            0% {
           	 	transform: translate(300px , -300px) scale(0) rotate(-45deg);
                opacity: 0;
            }

            100% {
            	
                transform: translate(0 , 0) scale(0.8) rotate(-45deg);
                opacity: 1;
            }
        }
      
      
/* ======================================== */      
 body {
    background-color: yellow ;
}

.wrapper {
    width: 100%;
    height: 90%;
    display: flex;
    align-items: center;
    overflow: hidden;
    
}

.container {
    height: 580px;
    display: flex;
    flex-wrap: nowrap;
    justify-content: start;
    left: 5px;
    
}

.card {
    width: 80px;
    border-radius: .75rem;
    background-size: cover;
    cursor: pointer;
    overflow: hidden;
    border-radius: 2rem;
    margin: 0 10px;
    display: flex;
    align-items: flex-end;
    transition: .6s cubic-bezier(.28,-0.03,0,.99);
    box-shadow: 0px 10px 30px -5px rgba(0,0,0,0.8);
}

.card > .row {
    color: white;
    display: flex;
    flex-wrap: nowrap;
}

.card > .row > .icon {
    background: #223;
    color: white;
    border-radius: 50%;
    width: 50px;
    display: flex;
    justify-content: center;
    align-items: center;
    margin: 15px;
}

.card > .row > .description {
    display: flex;
    justify-content: center;
    flex-direction: column;
    overflow: hidden;
    height: 80px;
    width: 520px;
    opacity: 0;
    transform: translateY(30px);
    transition-delay: .3s;
    transition: all .3s ease;
}

.description p {
     color: #blue;
     padding-top: 0px;
     font-size: 1em;
     background-color : yellow ;
     text-transform: uppercase;
     font-weight: 500 ;
     width: inherit;
     border-radius: 2rem ;
     margin: auto;
     padding-left: 35% ;
    /* padding-bottom: 20px; */
}

.description h2 {
    text-transform: uppercase;
    backdrop-filter : blur(10px) ;
    width: 100%;
    border-radius: 2rem ;
   
}

input {
    display: none;
}

input:checked + label {
    width: 800px;
}

input:checked + label .description {
    opacity: 1 !important;
    transform: translateY(0) !important;
}
        /* ============================== */
		
		.card[for="c1"]{
		background-image: url("fotor-ai-2024010135310.jpg");
		}
		.card[for="c2"]{
		background-image: url("c2.jpg");
		}
		.card[for="c3"]{
		background-image: url("c3.jpg");
		}
		.card[for="c4"]{
		background-image: url("c4.jpg");
		}

   section{
    overflow: hidden;
   }     



</style>
</head>
<body>

<% 

String userName = (String) session.getAttribute("username");
String userPhone = (String) session.getAttribute("userPhone");
String loginMessage = (String) request.getAttribute("loginMessage");

	if (userName != null) {
		
%>
  
<header class="header">
        <a href="#" class="logo">Steer. Rent Cars</a>

        <nav class="navbar">
            <a href="DealerHome.jsp" style="--i:1;" class="active">Home</a>
            <a href="#" style="--i:2;">About</a>
            <a href="logout" style="--i:3;">Log Out</a>
            <a href="#" style="--i:5;">Contact</a>
        </nav>
        <div class="social-media">
            <a href="#" style="--i:1;"><i class='bx bxl-twitter'></i></a>
            <a href="#" style="--i:2;"><i class='bx bxl-facebook'></i></a>
            <a href="#" style="--i:3;"><i class='bx bxl-instagram'></i></a>
        </div>
        
        <h1> Welcome...  <%=userName%> !</h1>
        <% 
            if (loginMessage != null) {
        %>
        <h3 style="color: green;"><%= loginMessage %></h3>
        <%
            }
        %>
    </header>

<section class="home">
    
<div class="wrapper">
	<div class="container home-content">
	
<input type="radio" name="slide" id="c1" checked>
<label for="c1" class="card">
    <div class="row">
        <div class="icon">1</div>
        <div class="description">
            <h2>DISPLAY ALL</h2>
            <p>
            
            <input type="hidden" name="carId" value="<%= userName %>">
    		<input type="hidden" name="carId" value="<%= userPhone %>">
            
            <a href="DisplayCarDealerOnly.jsp">View All Cars</a>
            </p>
        </div>
    </div>
</label>

<input type="radio" name="slide" id="c2">
<label for="c2" class="card">
    <div class="row">
        <div class="icon">2</div>
        <div class="description">
            <h2>INSERT</h2>
            <p>
            
            <input type="hidden" name="carId" value="<%= userName %>">
    		<input type="hidden" name="carId" value="<%= userPhone %>">
                
    		<a href="InsertNewCar.jsp">Insert a New Car</a>
            </p>
        </div>
    </div>
</label>

<input type="radio" name="slide" id="c3">
<label for="c3" class="card">
    <div class="row">
        <div class="icon">3</div>
        <div class="description">
            <h2>UPDATE</h2>
            <p>
            
            <input type="hidden" name="carId" value="<%= userName %>">
    		<input type="hidden" name="carId" value="<%= userPhone %>">
    		
                <a href="DisplayCarDealerOnly.jsp">Update an Existing Car</a>
            </p>
        </div>
    </div>
</label>

<input type="radio" name="slide" id="c4">
<label for="c4" class="card">
    
    <div class="row">
        <div class="icon">4</div>
        <div class="description">
            <h2>DELETE</h2>
            <p>
            <input type="hidden" name="carId" value="<%= userName %>">
    		<input type="hidden" name="carId" value="<%= userPhone %>">
            	<a href="DisplayCarDealerOnly.jsp">Delete an Existing Car</a>
            </p>
        </div>
    </div>
</label>
	
</div>
</div>
<div class="home-img">
<div class="rhombus">
        <img src="fliped red.png" alt="NOT LOADED">
</div>
</div>
<div class="rhombus2"></div>
 
</section>

<%
    } 
	else {
        // If not logged in, redirect to login page
        response.sendRedirect("Login.jsp");
    }
	%>
	
	
</body>
</html>