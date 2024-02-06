<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <!DOCTYPE html>
    <html>

    <head>
        <meta charset="UTF-8">
        <title>+ADD NEW CAR</title>
        <link rel="stylesheet" href="StyleRegistrationWP.css">
        <link rel="stylesheet" href="http://unpkg.com/boxicons@2.1.2/css/boxicons.min.css">

        <style>
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;

            }

            .header {
				overflow :hidden;
                display: flex;
                justify-content: space-between;
                align-items: center;
                position: fixed;
                top: 0;
                left: 0;
                width: 100vw;
                height: 10vh;
                padding: 20px 6%;
                background-color: transparent;
                z-index: 100;
                backdrop-filter: blur(5px);

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
                font-size: 35px;
                color: #0b3af4;
               /* padding-bottom: 40px;
               transform: rotate(-45deg);
               */ 
                padding-right: 15px;
				
				
            }

            .home {
                /*
            position: relative;
            width: 100vw;
            height: 100vh;
            display: flex;
           justify-content: space-between;
            padding: 18vh 6% 0;
           align-items: center;
            margin-top: 8vh ;
            text-align: center;
            */
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                /* Remove this line */
                padding: 32vh 6% 0;
                margin-top: 10vh;
                text-align: center;
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
                    transform: translateX(-100px);
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
                    /* transform: translateX(100px) rotate(45deg);
                   */ opacity: 0;
                }

                100% {
                  /*  transform: translateX(0) rotate(45deg);
                   */ opacity: 1;
                }
            }


            body {

                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
                width: 100vw;
                background: url("oldtimer-1197800.jpg");
                background-size: cover;
                z-index: 1;
                background-repeat: no-repeat;
                padding-top: 18vh;
                

            }


            main {
                font-size: 1.4em;
                font-weight: 700;
                color: rgb(109, 36, 36);

                top: 50px;
                left: 50%;
                transform: translateX(-50%);
                display: flex;


            }

            section {
                display: flex;
                justify-content: center;
                align-items: center;
                position: relative;
                width: 100vw;
                height: 80vh;
                margin-top: 10vh;
            }

            .Register-box {
                position: relative;
                width: 40vw;
                height: 900px;
                margin-top: 1px;
                flex-wrap: nowrap;
                background-color: rgb(194, 34, 5);
                border-radius: 20px;
                display: flex;
                flex-direction: column;
                align-items: center;
                background: rgba(224, 219, 219, 0.194);
                border: 2px solid rgba(255, 255, 255, .5);
                margin-top: 40px;
                backdrop-filter: blur(5px);
				overflow:inherit;
            }

            form {
                margin-top: 0px;
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
                margin: 20px 0px;
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

            .input-box input:focus~.float,
            .input-box input:not(:placeholder-shown)~.float {
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

            button {
                width: 100%;
                height: 35px;
                background: #edeaea94;
                border: none;
                outline: none;
                border-radius: 40px;
                cursor: pointer;
                font-size: 1.2em;
                color: rgb(109, 36, 36);
                font-weight: 800;
                margin-top: 5px;
            }

            .back {
                width: 100%;
                height: 35px;
                background: #edeaea94;
                border: none;
                outline: none;
                border-radius: 40px;
                cursor: pointer;
                font-size: 1.2em;
                color: rgb(109, 36, 36);
                font-weight: 800;
                margin-top: 20px;
                padding-left: 36%;
                padding-top: 2%;
                font-style: none;
            }

            .uplabel {
                padding-left: 35px;
            }
        </style>
    </head>

    <body>

        <% String userName=(String) session.getAttribute("username"); String userPhone=(String)
            session.getAttribute("mobile"); %>


            <header class="header">
                <a href="#" class="logo">Steer. Rent Cars</a>

                <nav class="navbar">
                    <a href="DealerHome.jsp" style="--i:1;" class="active">Home</a>
                    <a href="#" style="--i:2;">About</a>
                    <a href="Login.jsp" value="Login" style="--i:3;">Log Out</a>
                    <a href="#" style="--i:5;">Contact</a>
                </nav>
                <div class="social-media">
                    <a href="#" style="--i:1;"><i class='bx bxl-twitter'></i></a>
                    <a href="#" style="--i:2;"><i class='bx bxl-facebook'></i></a>
                    <a href="#" style="--i:3;"><i class='bx bxl-instagram'></i></a>
                </div>
            </header>

            <section>
                <div class="Register-box">
                    <form action="insert" method="post" enctype="multipart/form-data">

                        <div class="input-box">
                            <input type="number" name="carId" required> <label class="float">Car-Id</label>
                        </div>
                        <div class="input-box">
                            <input type="text" name="brand" required> <label class="float">Brand Name</label>
                        </div>
                        <div class="input-box">
                            <input type="text" name="model" required>
                            <label class="float">Model</label>
                        </div>
                        <div class="input-box">
                            <input type="text" name="fueltype" required> <label class="float">Fuel Type</label>
                        </div>
                        <div class="input-box">
                            <input type="text" name="transmission" required> <label class="float">Transmission</label>
                        </div>
                        <div class="input-box">
                            <input type="number" name="capacity" required> <label class="float">Capacity</label>
                        </div>

                        <div class="input-box">
                            <label class="float uplabel">Upload
                                Picture</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="file" name="picture" required>

                        </div>
                        <div class="input-box">
                            <input type="number" name="price" required> <label class="float">Price</label>
                        </div>
                        <div class="input-box">
                            <input type="text" name="dealerName" value="<%= userName %>" readonly="readonly"> <label
                                class="float">Dealer Name</label>
                        </div>
                        <div class="input-box">
                            <input type="text" name="userPhone" value="<%= userPhone %>" readonly="readonly"> <label
                                class="float">Dealer Id</label>
                        </div>


                        <button type="submit">ADD</button>
                        <div class="back"><a href="DealerHome.jsp">&nbsp;&nbsp;&nbsp; GO BACK &nbsp;&nbsp;&nbsp;</a>
                        </div>
                </div>
                </form>
                </div>
            </section>
            <script>
                document.addEventListener("DOMContentLoaded", function () {
                    var mainElement = document.querySelector("main");

                    setTimeout(function () {
                        mainElement.style.opacity = "0";
                        mainElement.style.display = "none";
                    }, 5000); // 5000 milliseconds (5 seconds)
                });
            </script>


    </body>

    </html>