<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LOGIN PAGE</title>
<link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

<style>

* {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
	}


.header {
            position: absolute ;
            top: 0;
            left: 0;
            width: 100%;
           	padding : 25px 8% ;
            background-color: blue;
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
            backdrop-filter : blur(15%);
            margin-bottom: 50px:
        }

        .logo {
              
            font-size: 35px;
            color: white;
            text-decoration: none;
            font-weight: 800;
            opacity: 0;
            animation: slideRight 1s ease forwards;
        }

        .navbar a {
            display: inline-block;
            font-size: 1.8em;
            color: white;
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
            
            color: silver ;
            
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
            font-size: 35px;
            color:  white ;
           /* padding-bottom : 40px ;
            padding-right : 15px ; 
            padding-bottom: 64px;
   			padding-right: 9px;
   			margin-left : 5px ;
            transform: rotate(-45deg);*/
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
                
                opacity: 0;
            }

            100% {
                
                opacity: 1;
            }
        }
        

body {
	display: flex;
	justify-content: center;
	align-items: center;
	min-width: 100vh;
	color: black ;
	background-color:  white ;
	overflow: hidden;
}

section {
	display: flex;
	justify-content: center;
	
	z-index : 1 ;
	background-size: cover;
	background-position: center;
	width: 100%;
	height: 100vh;
	
}

.login-box {
	color: black ;
	position: relative;
	width: 500px;
	height: 550px;
	margin-top : 80px ;
	padding-top : 40px ;
	background-color: transparent ;
	border-radius: 20px;
	display: flex;
	justify-content: center;
	align-items: center;
	border: 2px solid black;
	backdrop-filter: blur(10px) ;
}

h2 {
	margin-top : 30px ;
	font-size: 3em;
	font-weight : 700;
	color: black;
	text-align: left;
	margin-bottom: 5px ;
	
}

.input-box {
	position: relative;
	width: 100%;
	margin: 40px 0px;
	border-bottom: 2px solid black;

}

.float {
	position: absolute;
	top: 50%;
	right: 10%;
	transform: translateY(-50%);
	font-size: 1.5 em;
	color: black;
	pointer-events: none;
	transition: .5s;
}

.input-box input:focus ~ .float, .input-box input:focus ~ .float {
	transform: translateY(-100%);
	top: -5px;
	font-size: 1.5em;
}

.input-box input {
	width: 100%;
	height: 50px;
	background: transparent;
	border: none;
	outline: none;
	font-size: 1em;
	color: black;
	padding: 0 5px 0 5px;
}

.input-box .icon {
	position: absolute;
	right: -8px;
	 color : #fff;
	font-size: 2em;
	line-height: 57px;
	color: black;
}

button {
	width: 100%;
	height: 40px;
	background: #fff;
	border: 2px solid black ;
	outline: none;
	border-radius: 40px;
	cursor: pointer;
	font-size: 1em;
	color: black;
	font-weight: 500;
	margin-top: 30px;
}

.register-link {
	font-size: 1.2em;
	color: white;
	text-align: center;
	margin: 20px 0 10px;
	/*background-color: #f5f5f5 ; */
	background-color: blue ;
	border-radius: 20px ;
	padding: 10px 4% ;
}

.register-link p a {
	color: white;
	text-decoration: none;
	font-weight: 600;
}

.register-link p a:hover {
	text-decoration: underline;
}

button {
	background-color: transparent;
	border: 2px solid black;
	color: black;
	font-size: 1.5em;
	font-weight: 700;
	backdrop-filter: blur(5px);
	margin-top: 0px ;
}


main {
	font-size: 1.4em;
	/*
	margin:auto ;
	padding-left : 40px ;
	padding-right : 40px ;
	padding-top : 5px ;
	padding-bottom : 5px ; 
	*/
	align-items : center;
	width : 100vw ;
	height : 100px ;
	margin-top : 10vh ;
	font-weight : 700 ;
	color: white;
	position: absolute;
	top: 45px;
	left: 50%;
	transform: translateX(-50%);
	display: flex;
	z-index: 200;
	background-color: blue ;
	backdrop-filter: blur(95px); 

}
.input-box input,
.login-options input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: none;
    outline: none;
    font-size: 1em;
    color: black;
    padding: 0 35px 0 5px;
}
form{  
border-radius : 20% ;
backdrop-filter : blur(15px);
height: 500px ;
width: 400px ;
padding: 22px ;
}


.login-box-content {
    margin-top : 25vh ;
    margin-right: 20px;
    
  
    }

.login-options {
    margin-bottom: 0px;
    color: black;
    align-items: flex-start;
    display: flex;
    flex-direction: row;
}

.login-options label {
    margin-top: 15px ;
    margin-left : 0px;
    display: flex ;
    font-weight :500 ;
    font-size: 1em;
    margin-right: 15px ;
    align-items: center;
    margin-bottom: 10px ;
    cursor: pointer;
}

.login-options input {
    margin-right: 10px;
   
}
.login-options .custom-radio {
    width: 20px;
    height: 20px;
    border-radius: 50%;
    background-color: #fff;
    display: flex;
    justify-content: center;
    align-items: center;
    border: 2px solid #000;
    transition: background-color 0.3s, border-color 0.3s;
}

.login-options input:checked + .custom-radio {
    background-color: #000;
    border-color: #fff;
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
            width: 114%;
            height: 105%;
            background: #eaeaea;
            border: 25px solid #1743e3;
            box-shadow: -15px 25px 15px rgba(0, 0, 0, .2);
            opacity: 0;
            animation: zoomout 1s ease forwards;
            animation-delay: 1.6s;
        }

        .home-img .rhombus img {
            position: absolute;
            top: 218px;
            left: -222px;
            max-width: 730px;
            transform: rotate(-45deg);
            opacity: 0;
            animation: Car 1s ease forwards;
            animation-delay: 2s;
        }

        .home .rhombus2 {
            position: absolute;
            top: -25%;
            right: -25%;
            width: 900px;
            height: 900px;
            background: #1743e3;
            transform: rotate(45deg);
            z-index: -1;
            opacity: 0;
            animation: rhombus2 1s ease forwards;
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
                right: -20%;
                opacity: 0;
            }

            100% {
                right: -105%;
                opacity: 1;
            }
        }

        
        @keyframes Car {
            0% {
                transform: translate(350px, -350px) scale(0) rotate(-45deg);
                opacity: 0;
            }

            100% {
                transform: translate(0, 0) scale(1) rotate(-45deg);
                opacity: 1;
            }
        }
        
       
</style>

</head>
<body>
<header class="header">
        <a href="#" class="logo">Steer. Rent Cars</a>

        <nav class="navbar">
            <a href="WelcomePage.jsp" style="--i:1;" class="active">Home</a>
            <a href="#" style="--i:2;">About</a>
            <a href="Login.jsp" value="Login" style="--i:3;">Log In</a>
            <a href="Register.jsp" style="--i:4;">Sign up</a>
            <a href="#" style="--i:5;">Contact</a>
        </nav>
        <div class="social-media">
            <a href="#" style="--i:1;"><i class='bx bxl-twitter'></i></a>
            <a href="#" style="--i:2;"><i class='bx bxl-facebook'></i></a>
            <a href="#" style="--i:3;"><i class='bx bxl-instagram'></i></a>
        </div>
    </header>


	<section>
<%String logOutS = (String)request.getAttribute("logOutS");%>
<%if(logOutS != null){%>
<h3> style="color: red"><%= logOutS %></h3><%}%>

<%String wrongPass = (String)request.getAttribute("wrongPass");%>
<%if(wrongPass != null){%>
<h3><%= wrongPass %></h3><%}%>
		
			<form action="Login" method="post">
				<div class="login-box-content">
			<h2>Login</h2>
				
				<div class="input-box">
					<span class="icon"> <ion-icon name="person-circle-outline"></ion-icon>
					</span> <input type="text" id="phone" name="phone" required >
					 <label class="float">Mobile No</label>
				</div>
				<div class="input-box">
					<span class="icon"> <ion-icon name="lock-closed"></ion-icon>
					</span> <input type="password" id="password" name="password" required> 
					<label class="float">Password</label>
				</div>
				</div>
				
	 <div class="login-options">
       <h4>Login as :</h4> <br>
       <br>
        <label>
            <input type="radio" name="role" value="Customer" required>
           Customer</label>
        <label>
            <input type="radio" name="role" value="Dealer" required>
            Dealer </label>
        <label>
            <input type="radio" name="role" value="Admin" required>
            Admin</label>
    </div>
			
				<button type="submit" value="AdminHome.jsp">Login</button>
				
				<div class="register-link">
					<p>
						Don't have an account ? 
						<a href="Register.jsp" value ="Register">Register here</a>
					</p>
				</div>
			</form>
		</div>
	</section>
	 <div class="home-img">
            <div class="rhombus">
                <img src="Homebluecarbgrm.png" alt="NOT LOADED">
            </div>
        </div>
        <div class="rhombus2"></div>
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