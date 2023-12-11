<%@page import="com.northeastern.coursematch.Controller.MainController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!-- <link rel="stylesheet" href="style.css"> -->
    <link rel="stylesheet" href="https://unicons.iconscout.com/release/v4.0.8/css/line.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Join Us | CourseHub</title>

    <style>

        body {
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            overflow-x: hidden;
        }

        body::-webkit-scrollbar {
            width: 0.5em; /* Adjust the width as needed */
        }

        body::-webkit-scrollbar-thumb {
            background-color: transparent; /* Make the thumb (the moving part) transparent */
        }

        body {
            overflow-y: scroll; /* Enable vertical scrolling */
        }

        .btn_black {
            background-color: #000000;
            color: white;
            border: none;
            border-radius: 10px; /* Add rounded corners */
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .btn_red {
            background-color: #be3144;
            color: white;
            border: none;
            border-radius: 10px; /* Add rounded corners */
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
        }

        .span {
            color: #be3144;
        }

        .main_title {
            font-size: 50px;
            font-weight: bold;
            margin-left: 140px;
            margin-right: 80px;
            padding-bottom: 15px;
        }

        .decriptionText {
            margin-top: 40px;
            font-size: 20px;
            margin-bottom: 40px; 
            margin-left: 140px;
            margin-right: 80px;
        }

        .logo_image {
            max-width: 100px;
            height: auto;
            margin-left: 30px;
        }
        .logincontainer {
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 75%;
            height: 550px;
            background: url('images/herobg.png') no-repeat center center fixed;
            background-size: contain;
            background-position: center;
            border-radius: 10px;
            margin-top: 20px;
            display: flex; /* Add display: flex; to make the .logincontainer a flex container */
            justify-content: center; /* Center the child elements horizontally */
            align-items: center; /* Center the child elements vertically */
        }

        .content {
            background: transparent;
            backdrop-filter: blur(10px); /* Apply a blur effect */
            height: 600px;
            width: 700px;
            border-radius: 20px;
            display: flex; /* Add display: flex; to make the .content a flex container */
            justify-content: center; /* Center the child elements horizontally */
            align-items: center; /* Center the child elements vertically */
            color: #ffffff;
        }

        .content .form_box {
            display: flex;
            justify-content: center;
            align-items: center;
            background: transparent;
            width: 100%;
            height: 100%;
            backdrop-filter: blur(20px);
            border-top-right-radius: 10px;
            border-bottom-right-radius: 10px;

        }

        .form_box h2 {
            font-size: 32px;
            text-align: center;
            color: #ffffff;
            font-weight: bold;
        }

        .form_box .input_box {
            width: 340px;
            height: 50px;
            border-bottom: 2px solid #e4e4e4;
            margin: 30px 0;
        }

        .input_box input {
            width: 100%;
            height: 100%;
            background: transparent;
            border: none;
            outline: none;
            font-size: 16px;
            color: #ffffff;
            font-weight: 500;
            padding-right: 28px;
        }

        .input_box label {
            position: absolute;
            /* top: 50%; */
            left: 180px;
            transform: translateY(-50%);
            font-size: 16px;
            font-weight: 500;
            pointer-events: none;
        }


        .input_box .icon {
            position: absolute;
            /* top: 13px; */
            right: 200px;
            font-size: 19px;
        }

        .forgot_pwd {
            font-size: 14.5px;
            font-weight: 500;
            margin: -15px 0 15px;
            padding-left: 220px;
        }

        .forgot_pwd a {
            color: #ffffff;
            text-decoration: none;
        }

        .forgot_pwd a:hover {
            text-decoration: underline;
        }


        .signinbtn {
            align-items: center;
            justify-content: center;
            width: 100%;
            height: 45px;
            border: none;
            outline: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 16px;
            color: #ffffff;
            font-weight: 500;
            box-shadow: 0 0 10px rgba(0, 0, 0, .5);
        }

        .form_box .login_register {
            font-size: 14.5px;
            font-weight: 500;
            text-align: center;
            margin-top: 25px;
        }

        .login_register p a{
            color: #be3144;
            font-weight: bold;
            text-decoration: none;
        }

        .login_register p a:hover {
            text-decoration: underline;
        }



        .roletitle {
            margin-bottom: 50px;
        }

        .radiolabel {
            margin-right: 50px;
            font-size: large;
            margin-bottom: 10px;
        }

        .radiolabel input {
            width: 20px;
            height: 20px;
        }

        .rolebtn {
            margin-top: 50px;
        }

        .radio label input {
            accent-color: #be3144;
        }
    </style>
</head>
<body style="background: black;">
    <img src="/images/logo.png" alt="logo" class="logo_image" style="padding-top: 40px;"/>

    <div class="logincontainer">
        <div class="content">
            <div class="form_box login">
                <form action="createUser" method="POST">
                    <h2>SIGN UP</h2>

                    

                    <div class="input_box">
                        <span class="icon"><i class="uil uil-user"></i></span>
                        <input type="text" name="name" required>
                        <label>First Name</label>
                    </div>

                    <div class="input_box">
                        <span class="icon"><i class="uil uil-user"></i></span>
                        <input type="text" required>
                        <label>Last Name</label>
                    </div>

                    <div class="roletitle">Select Role:</div>

                    <div class="rolebtn">
                        <div class="radiolabel">
                            <input type="radio" id="professor" name="role" value="professor" required>
                            <label for="professor">Professor</label>
                        </div>
                    
                        <div class="radiolabel">
                            <input type="radio" id="student" name="role" value="student" required>
                            <label for="student">Student</label>
                        </div>
                    </div>

                    <div class="input_box">
                        <span class="icon"><i class="uil uil-envelope"></i></span>
                        <input type="email" name="email" required>
                        <label>Email ID</label>
                    </div>

                    <div class="input_box">
                        <span class="icon"><i class="uil uil-key-skeleton"></i></span>
                        <input type="password" name ="password" required>
                        <label>Password</label>
                    </div>

                    <div class="input_box">
                        <span class="icon"><i class="uil uil-key-skeleton"></i></span>
                        <input type="password" required>
                        <label>Confirm Password</label>
                    </div>


                    <!-- <a href="SignupSuccess.html"> -->
                        <button type="submit" class="btn_red signinbtn">
                            Sign Up
                        </button>
                    <!-- </a> -->

                    <div class="login_register">
                        <p> Already have an account? <a href="Login.html" class="register_link">Sign In</a></p>
                    </div>

                </form>
            </div>
        </div>
    </div>
</body>
</html>