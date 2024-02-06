<%@page import="java.util.List"%>
<%@page import="retal.steer.dao.CarDao"%>
<%@page import="steer.CarDto.CarDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin : Home</title>
<link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

<style>

  
    	*{ 
        margin: 0;
        padding: 0;
        font-weight : 700 ;
        box-sizing: border-box;
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
           
        }
        
        body{
        background-image: url("blue-569222_1920.jpg");
        background-repeat: no-repeat;
        background-position: center;
        background-size: cover;
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
	background-image: url("BackgroundImage/black-1072366.jpg");
	background-size: cover;
	display: flex;
	justify-content: center;
	align-items: center;
	position: relative;
	animation: animatebg 5s linear infinite;
	
}

.tab {
	
	height: 96vh;
	width: 100vw;
	border-collapse: collapse; /* Added to collapse the borders and prevent double borders */
   /* border-bottom: 2px solid grey; /* Added to give a bottom border to the table */
	
}

.tab td, .tab th {
    text-align: center;
    border-bottom: 5px solid grey; /* Added to give borders to table cells */
    
   }
   
  button {
    background-color: #fffdd0;
    color: white; 
    border-bottom : 2px solid grey;
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

	 .tdimage img {
        width: 100%;
        height: 100%;
        object-fit: cover;
    }
    
    .tdimage{
   		 height: 210px ;
    	 width: 295px ;
    }
    
    .cen{
     justify-content: center;
     align-items: center;
     align-content: center;
     padding: 5px ;
     height: 50px ;
   	 width: 90px ;
   	 background-color: black;
   	 color: white;
   	 font-weight: 800 ;
    }
    
    .sel{
    height: 50px ;
   	width: 130px ;
   	padding: 5px ;
   	font-weight: 800 ;
   	border: 2px solid black ;
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
<% 
String userName = (String) session.getAttribute("username");
String loginMessage = (String) request.getAttribute("loginMessage");

	if (userName != null) {
	
%>
  
<header class="header">
        <a href="#" class="logo">Steer. Rent Cars</a>

        <nav class="navbar">
            <a href="AdminHome.jsp" style="--i:1;" class="active">Admin Home</a>
            <a href="#" style="--i:2;">About</a>
            <a href="logout" style="--i:3;">Log Out</a>
            <a href="#" style="--i:5;">Contact</a>
        </nav>
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
        List<Object[]> carAndImages = dao.getAllCarAndImages(); 
        
            
        %>
		<table class="tab" border="5px solid blue">
            <caption></caption>
            <tr class="bold">
                <td>Car Id</td>
                <td>Picture</td>
                <td>Brand Name</td>
                <td>Model</td>
                <td>Fuel Type</td>
                <td>Transmission</td>
                <td>Capacity</td>
                <td>Price</td>
                <td>Approval</td>
                <td>Submit</td>
               
            </tr>
            
		<% for (Object[] carAndImage : carAndImages) {
            CarDto car = (CarDto) carAndImage[0];
            List<String> images = (List<String>)carAndImage[1];
            String base64Image = (images != null && !images.isEmpty()) ? images.get(0) : "";
         
        %>
         
         <tr>
                    <td><%= car.getCarId() %></td>
                    
                    <td class="tdimage" ><img src='data:image/png;base64,<%= base64Image %>'></td>
                    
                    <td><%= car.getBrand() %></td>
                    <td><%= car.getModel() %></td>
                    <td><%= car.getFuelType() %></td>
                    <td><%= car.getTransmission() %></td>
                    <td><%= car.getCapacity() %></td>
                    <td><%= car.getPrice() %></td>
                   
                   
                    <td>
                    <form action="submitApproval" method="post">
        		<label for="approvalStatus">Accept or Reject</label>
        		<select class="sel" id="approvalStatus" name="approvalStatus" >
            		<option value="" name="">Select</option>
            		<option value="approve" name="approve">Approve</option>
            		<option value="reject" name="reject">Reject</option>
    	    	</select>
    
                    </td>
                    
                      <td>
        	
			<input type="hidden" name="carId" value="<%= car.getCarId() %>">
            <button class="cen" type="submit" name="submitApproval">Submit</button>
        	
    				</td>
    				</form>
                </tr>
              <%
            }
        %>  
        </table>
       
    </section>
	
	<%
    } 
	else {
        // If not logged in, redirect to login page
        response.sendRedirect("Login.jsp");
    }
	%>
	
		
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