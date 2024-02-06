<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration page</title>
<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    font-family: 'Poppins', sans-serif;
}

form{
padding: 10px ;
margin: 10px ;
backdrop-filter : blur(15px) ;
}
body {
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    /*
    background: #1f293a; 
    */
    background-color: white ;
    
}
.container {
    position: relative;
    width: 256px;
    height: 256px;
    display: flex;
    margin : auto;
    justify-content: center;
    align-items: center;
}
.container span {
    position: absolute;
    left: 0;
    width: 32px;
    height: 6px;
	background: white;
  
    border-radius: 8px;
    transform-origin: 128px;
    transform: scale(3.1) rotate(calc(var(--i) * (360deg / 50)));
    animation: animateBlink 3s linear infinite;
    animation-delay: calc(var(--i) * (3s / 50));
}
@keyframes animateBlink {
    0% {
        background: white;
    }
    25% {
        background: blue;
    }
}
.login-box {
    position: absolute;
    width: 400px;
}
.login-box form {
    width: 100%;
    padding: 0 50px;
}
h2 {
    font-size: 2em;
   /* color: #0ef; */
   color : blue ;
    text-align: center;
}
.input-box {
    position: relative;
    margin: 25px 0;
}
.input-box input {
    width: 100%;
    height: 50px;
    background: transparent;
    border: 2px solid blue;
    outline: none;
    border-radius: 40px;
    font-size: 1.3em;
    color: black;
    padding: 0 20px;
    transition: .5s ease;
   
    
}
.input-box input:focus,
.input-box input:valid {
    border-color: blue;
}
.input-box label {
    position: absolute;
    top: 50%;
    left: 20px;
    transform: translateY(-50%);
    font-size: 1.3em;
    color: blue;/*
    color: #0ef;*/
    background : white ;
    pointer-events: none;
    transition: .5s ease;
    
}
.input-box input:focus~label,
.input-box input:valid~label {
    top: 1px;
    font-size: 1.2em;
   
    padding: 0 8px;
    color: blue;
}
.forgot-pass {
    margin: -15px 0 10px;
    text-align: center;
}
.forgot-pass a {
    font-size: 1em;
    color: black;
    text-decoration: underline;
}
.forgot-pass a:hover {
    text-decoration: underline;
}
.btn {
    width: 100%;
    height: 45px;
    background: blue;
    border: none;
    outline: none;
    border-radius: 40px;
    cursor: pointer;
    font-size: 1em;
    color: white;
    font-weight: 600;
}
.login-link {
    margin: 20px 0 10px;
    text-align: center;
}
.login-link a {
    font-size: 1em;
    color: blue;
    text-decoration: none;
    font-weight: 600;
}
.login-link a:hover {
    text-decoration: underline;
}
#radio{
padding : 10px ;
color : #0e ;
margin: 2px ;
}

h4{
font-size : 1.1em ;
color : blue ;
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

</style>
</head>

<body>
    <div class="container">
        <div class="login-box">
            <h2>Register </h2>
            <form action="Register" method = "post">
                <div class="input-box">
                    <input type="tel" required name="phone">
                    <label >Phone</label>
                </div>
                <div class="input-box">
                    <input type="text" required name="name">
                    <label>Name</label>
                </div>
                <div class="input-box">
                    <input type="email" required name="email">
                    <label>Email-id</label>
                </div>

 <!-- ====================================================================== -->
<div >
 <h4>Register as :</h4> 
 <br>
        <label id="radio">
            <input type="radio" name="role" value="Customer">
           Customer</label>
        <label id="radio">
            <input type="radio" name="role" value="Dealer">
            Dealer </label>
      <% /*  <label id="radio">
            <input type="radio" name="role" value="Admin" >
            Admin</label> */ %>
    </div>

 <!-- ====================================================================== -->

                <div class="input-box">
                    <input type="password" required name="password">
                    <label >Password</label>
                </div>
                <div class="forgot-pass">
                    <a href="#">Forgot your password?</a>
                </div>
                <button type="submit" class="btn">Register</button>
                <div class="login-link">
                    <a href="Login.jsp">Already Registered ! Click Here </a>
                </div>
            </form>
        </div>
        <span style="--i:0;"></span>
        <span style="--i:1;"></span>
        <span style="--i:2;"></span>
        <span style="--i:3;"></span>
        <span style="--i:4;"></span>
        <span style="--i:5;"></span>
        <span style="--i:6;"></span>
        <span style="--i:7;"></span>
        <span style="--i:8;"></span>
        <span style="--i:9;"></span>
        <span style="--i:10;"></span>
        <span style="--i:11;"></span>
        <span style="--i:12;"></span>
        <span style="--i:13;"></span>
        <span style="--i:14;"></span>
        <span style="--i:15;"></span>
        <span style="--i:16;"></span>
        <span style="--i:17;"></span>
        <span style="--i:18;"></span>
        <span style="--i:19;"></span>
        <span style="--i:20;"></span>
        <span style="--i:21;"></span>
        <span style="--i:22;"></span>
        <span style="--i:23;"></span>
        <span style="--i:24;"></span>
        <span style="--i:25;"></span>
        <span style="--i:26;"></span>
        <span style="--i:27;"></span>
        <span style="--i:28;"></span>
        <span style="--i:29;"></span>
        <span style="--i:30;"></span>
        <span style="--i:31;"></span>
        <span style="--i:32;"></span>
        <span style="--i:33;"></span>
        <span style="--i:34;"></span>
        <span style="--i:35;"></span>
        <span style="--i:36;"></span>
        <span style="--i:37;"></span>
        <span style="--i:38;"></span>
        <span style="--i:39;"></span>
        <span style="--i:40;"></span>
        <span style="--i:41;"></span>
        <span style="--i:42;"></span>
        <span style="--i:43;"></span>
        <span style="--i:44;"></span>
        <span style="--i:45;"></span>
        <span style="--i:46;"></span>
        <span style="--i:47;"></span>
        <span style="--i:48;"></span>
        <span style="--i:49;"></span>
    </div>
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
