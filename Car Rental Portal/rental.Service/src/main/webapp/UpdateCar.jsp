<%@page import="steer.CarDto.CarDto"%>
<%@page import="org.hibernate.internal.build.AllowSysOut"%>
<%@page import="retal.steer.dao.CarDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update details</title>
<link rel="stylesheet"
	href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">
<style>
	
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
}

body {
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    width: 100vw;
    background: url("c3.jpg");
    background-size: cover;
    background-repeat: no-repeat;
}


.header {
    position: fixed;
    top: 0;
    left: 0;
    width: 100vw;
    height: 8vh;
    padding: 20px 6%;
    background-color: transparent;
    display: flex;
    justify-content: space-between;
    align-items: center;
    z-index: 100;
    margin-bottom: 92vh;
    backdrop-filter: blur(15px);
}

.logo {
    font-size: 35px;
    color: #240af2;
    text-decoration: none;
    font-weight: 600;
    opacity: 0;
    animation: slideRight 1s ease forwards;
}

.navbar a {
    display: inline-block;
    font-size: 2em;
    color: #222;
    text-decoration: none;
    font-weight: 500;
    margin: 0 20px;
    transition: .3s;
    opacity: 0;
    animation: slidetop .5s ease forwards;
    animation-delay: calc(.2s * var(--i));
}

/* Body Styles */
main {
    font-size: 1.4em;
    font-weight: 700;
    color: rgb(109, 36, 36);
    position: absolute;
    top: 50px;
    left: 50%;
    transform: translateX(-50%);
    display: flex;
    z-index: 200;
}

section {
    display: flex;
    justify-content: center;
    align-items: center;
    position: relative;
    width: 100%;
    height: 80vh;
    margin-top: 10vh;
}

.Register-box {
    position: relative;
    width: 40vw;
    height: 730px;
    margin-top: 1px;
    flex-wrap: nowrap;
    background-color: rgb(194, 34, 5);
    border-radius: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    background: rgba(224, 219, 219, 0.194);
    border: 2px solid rgba(255, 255, 255, .5);
    margin-top: 0px;
    backdrop-filter: blur(25px);
}

form {
    margin-top: 0px;
    padding: 5px ;
}

h2 {
    font-size: 2em;
    color: rgb(109, 36, 36);
    text-align: center;
    margin-bottom: 11px;
    margin-top: 11px;
}

.input-box {
    position: relative;
    width: 100%;
    margin: 10px 0px;
    border-bottom: 2px solid rgb(109, 36, 36);
}

.float {
    position: absolute;
    left: 0.5%;
    transform: translate(-20%);
    font-size: 1.3em;
    color: rgb(18, 12, 12);
    font-weight: 700;
    pointer-events: none;
    transition: 0.5s;
    transform-origin: left top;
}

.input-box input:focus ~ .float,
.input-box input:not(:placeholder-shown) ~ .float {
    transform: translate(0, -50%) scale(0.9);
    font-size: 1.2em;
}

.input-box input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1.2em;
    color: rgb(12, 11, 11);
    font-weight: 400;
    padding: 15px 15px 15px 15px;
}

button, .back {
    width: 100%;
    height: 35px;
    background: #edeaea94;
    border: none;
    outline: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 1.2em ;
    color: rgb(109, 36, 36);
    font-weight: 800;
    margin-top: 5px;
    margin-bottom: 5px ;
    text-decoration: none ;
}

.back {
   
    padding-left: 35px;
   
}

.uplabel {
    padding-left: 35px;
}

/* Animation Keyframes */
@keyframes slideRight {
    0% {
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
	#backa{
	padding-left: 35% ;
	text-decoration: none ;
	}
</style>
</head>
<body>
	<%
	String idPara = request.getParameter("id");

	if (idPara != null && !idPara.isEmpty()) {

		try {
			int idToUpdate = Integer.parseInt(idPara);
			CarDao dao = new CarDao();

			CarDto car = dao.getCarDetailByCarIdDao(idToUpdate);

			if (car != null) {
	%>

	<header class="header">
		<a href="#" class="logo">Steer. Rent Cars</a>

		<nav class="navbar">
			<a href="DealerHome.jsp" style="--i: 1;" class="active">Home</a> <a
				href="#" style="--i: 2;">About</a> <a href="Login.jsp" value="Login"
				style="--i: 3;">Log Out</a> <a href="#" style="--i: 4;">Sign up</a>
			<a href="#" style="--i: 5;">Contact</a>
		</nav>
		<div class="social-media">
			<a href="#" style="--i: 1;"><i class='bx bxl-twitter'></i></a> <a
				href="#" style="--i: 2;"><i class='bx bxl-facebook'></i></a> <a
				href="#" style="--i: 3;"><i class='bx bxl-instagram'></i></a>
		</div>
	</header>

	<section>
			<form action="update" method="post" enctype="multipart/form-data">
		<div class="Register-box">

				<div class="input-box">
					<input type="number" required name="carId" value="<%= car.getCarId() %>"> <label
						class="float">Car-Id</label>
				</div>
				<div class="input-box">
					<input type="text" required name="brand" value="<%= car.getBrand() %>"> <label
						class="float">Brand Name</label>
				</div>
				<div class="input-box">
					<input type="text" required name="model" value="<%= car.getModel() %>"> <label
						class="float">Model</label>
				</div>
				<div class="input-box">
					<input type="text" required name="fueltype" value="<%= car.getFuelType() %>"> <label
						class="float">Fuel Type</label>
				</div>
				<div class="input-box">
					<input type="text" required name="transmission" value="<%= car.getTransmission() %>"> <label
						class="float">Transmission</label>
				</div>
				<div class="input-box">
					<input type="number" required name="capacity" value="<%= car.getCapacity() %>"> <label
						class="float">Capacity</label>
				</div>

				<div class="input-box">
					<label class="float uplabel">Upload Picture</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
					<input type="file" required name="picture">

				</div>
				<div class="input-box">
					<input type="number" required name="price" value="<% car.getPrice(); %>"> <label
						class="float">Price</label>
				</div>


				<button type="submit">UPDATE</button>
				<div class="back">
					<a id="backa" href="DealerHome.jsp">&nbsp;&nbsp;&nbsp; GO BACK
						&nbsp;&nbsp;&nbsp;</a>
				</div>
		</div>
		
		</form>
	</section>

	<%
	} else {
	System.out.println("Error: Student details not found for ID " + idToUpdate);
	}
	} catch (NumberFormatException exp) {
	System.out.println("Error: Invalid ID parameter.");
	}
	} else {
	System.out.println("Error: Missing ID parameter. Please provide a valid ID.");

	}
	%>



</body>
</html>
</body>
</html>