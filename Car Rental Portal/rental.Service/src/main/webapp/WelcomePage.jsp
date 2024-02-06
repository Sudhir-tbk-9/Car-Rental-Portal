<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Steer : Car Rental Service</title>
 <link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }

		body{
		overflow: hidden;
		}
			
        .header {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            padding: 30px 8%;
            background-color: rgba(0, 0, 255, 0.548);
            display: flex;
            justify-content: space-between;
            align-items: center;
            z-index: 100;
        }

        .logo {
            font-size: 35px;
            color: #222;
            text-decoration: none;
            font-weight: 600;
            opacity: 0;
            animation: slideRight 1s ease forwards;
        }

        .navbar a {
            display: inline-block;
            font-size: 28px;
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
            color: #1743e3;
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
            /* color: #eaeaea; */
            color: white;
            
        }

        .home {
            position: relative;
            width: 100%;
            height: 100vh;
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 50px 8% 0;
            /* overflow: hidden; */
        }

        .home-content {
            max-width: 600px;
        }

        .home-content h1 {
            font-size: 50px;
            line-height: 1.2;
            opacity: 0;
            animation: slideBottom .5s ease forwards;
            animation-delay: 1s;
        }

        .home-content h3 {
            font-size: 50px;
            color: #1743e3;
            opacity: 0;
            animation: slideRight 1s ease forwards;
            animation-delay: 1.3s;
        }

        .home-content p {
            font-size: 26px;
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
            font-size: 26px;
            color: #eaeaea;
            /* color: black; */
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
            background: #eaeaea;
            border: 25px solid #1743e3;
            box-shadow: -15px 25px 15px rgba(0, 0, 0, .2);
            opacity: 0;
            animation: zoomout 1s ease forwards;
            animation-delay: 1.6s;
        }

        .home-img .rhombus img {
            position: absolute;
            top: 110px;
            left: -180px;
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
            width: 700px;
            height: 700px;
            background: #1743e3;
            transform: rotate(45deg);
            z-index: -1;
            opacity: 0;
            animation: rhombus2 1s ease forwards;
        }

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
                transform: translate(300px, -300px) scale(0) rotate(-45deg);
                opacity: 0;
            }

            100% {
                transform: translate(0, 0) scale(1.2) rotate(-45deg);
                opacity: 1;
            }
        }
        
        
main {
	font-size: 1.4em;
	align-items : center;
	widows : 100vw ;
	font-weight : 700 ;
	color: red;
	position: absolute;
	bottom: 15px;
	left: 50%;
	transform: translateX(-50%);
	display: flex ;
	
	z-index: 200;

}
        
    </style> 
</head>
<body>
<header class="header">
        <a href="#" class="logo">Steer. Rent Cars</a>

        <nav class="navbar">
            <a href="WelcomePage.jsp" style="--i:1;" class="active">Home</a>
            <a href="#" style="--i:2;">About</a>
            <a href="Login.jsp" value="Login" style="--i:3;">Log in</a>
            <a href="Register.jsp" value="Register" style="--i:4;">Sign up</a>
            <a href="#" style="--i:5;">Contact</a>
        </nav>
        <div class="social-media">
            <a href="#" style="--i:1;"><i class='bx bxl-twitter'></i></a>
            <a href="#" style="--i:2;"><i class='bx bxl-facebook'></i></a>
            <a href="#" style="--i:3;"><i class='bx bxl-instagram'></i></a>
        </div>
    </header>
    <section class="home">
        <div class="home-content">
            <h1>Car Dealing Experience</h1>
            <h3>Redefined!</h3>
            <p>Get Around the City for Less. If You Find a Better Price, We'll Match It !
				Customer First Guarantee ~ 
				Wander Wisely ~ 
				Get 24-Hour Support!

            </p>
            <a href="Login.jsp" class="btn">Explore Cars</a>
        </div>

        <div class="home-img">
            <div class="rhombus">
                <img src="Homebluecarbgrm.png" alt="NOT LOADED">
            </div>
        </div>
        <div class="rhombus2"></div>
        
    </section>
    <script src="/WelcomePStyle.js" ></script>
    
</body>
</html>