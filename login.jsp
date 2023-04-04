<%-- 
    Document   : Login
    Created on : 15 Sep, 2021, 11:32:39 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>Login page</title>
        <meta charset="UTF-8">
        <!--        <meta name="viewport" content="width=device-width">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <!-- CSS only -->

    </head>
    <body>
        <%@include file="header1.jsp"%>
        <script>



            jQuery.validator.addMethod("checkemail", function (value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            }, "Please enter the email format as abc@gmail.com");

            jQuery(document).ready(function ($) {
                $("#login").validate({
                    rules: {
                        email: {
                            required: true,
                            checkemail: true
                        },
                        pw1: {
                            required: true,
                            minlength: 6
                        }
                    },
                    messages: {
                        email: {
                            required: "Please enter the email."
                        },
                        pw1: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to 6."
                        }
                    }
                });
            });
//             jQuery.validator.addMethod("checkemail", function (value, element) {
//              return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
//          });
            jQuery(document).ready(function ($) {
                $("#signup").validate({
                    //ignore: [],
                    rules: {
                        name: {
                            required: true
                        },
                        email: {
                            required: true,
                            checkemail: true
                        },
                        phone: {
                            required: true,
                            minlength: 10,
                            maxlength: 10
                        },
                        pw: {
                            required: true,
                            minlength: 6
                        },
                        cp: {
                            required: true,
                            minlength: 6,
                            equalTo: "#pw"
                        }
                    },
                    messages: {
                        name: {
                            required: "Please enter the name."
                        },
                        email: {
                            required: "Please enter the email.",
                            email: "Please enter valid email id"
                        },
                        phone: {
                            required: "Please enter the number.",
                            minlength: "Please enter the  10 digit number .",
                            maxlength: "more than 10 digits."
                        },
                        pw: {
                            required: "Please enter the password.",
                            minlength: "Please enter the password greater than or equal to  6."
                        },
                        cp: {
                            required: "Please reenter the password.",
                            minlength: "Please enter the password greater than or equal to 6.",
                            equalTo: "mismatch password"
                        }
                    }
                });
            });



        </script>
        <style>
            body{
                background-image:  url("images/4000.jpeg");
                background-repeat: no-repeat;
                background-size: 1550px 1151px;
                height: 200px;
            }
            /*            label{
                            margin-left: -0.5rem;
                        }
                        .error{
                            color:red;
                        }*/
            /*            .button{
                            padding: 100px;
                            width: 6%;
                            background: cornflowerblue;
                            color: white;
                        }*/

             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
            #msg
            {

                background: #e9a3a3;
                color: #020101;
                border: 1px solid #8a6e1a;
                width: 81%;
                height: 7%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;

            }
           
            .logo {
                display: block;
                width: 131px;
                margin: -6px 6% -16% 5%;
                border-radius: 8px;
                background: #222;
                padding: 10px;
            }

            /*            .form-control {
                            display: block;
                            width: 332%;
                            height: calc(1.5em + 0.75rem + -1px);
                            padding: 0.375rem 0.75rem;
                            font-size: 1rem;
                            font-weight: 400;
                            line-height: 1.5;
                            margin-left: -6.5rem;
                            color: #495057;
                            background-color: #fff;
                            background-clip: padding-box;
                            border: 1px solid #ced4da;
                            border-radius: .25rem;
                            transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
                        }*/
            /*            label {
                            display: inline-block;
                            margin-bottom: 0.5rem;
                            color: aqua;
                        }*/
            img{
                box-shadow: 1px 1px 5px 1px rgb(0 0 0 / 10%);
                border-radius: 0px;
                width: 28px;
                margin-right: 10px;

            }

            #msg{
                width: 28%;
              background: #ffe9a8;
                color: #020101;
                border: 1px solid #8a6e1a;
                
                height: 7%;
                font-weight: bold;
                font-size: 25px;
                padding: 5px;

         
            }

            .card{
                width: 451px;
                height: 596px;
                border-radius: 50px;
/*                  box-shadow: 0 0 40px 20px rgba(0 150 136 / 38%);
                  perspective: 1000px;*/
            }
            .inner-box{
                position: relative;
                width: 100%;
                height: 100%;

                transform-style: preserve-3d;
                transition: transform 1s;
            }
            .card-front, .card-back{
                position: absolute;
                width: 451px;
                height: 610px;
                border-radius: 35px;
                background-position: center;
                background-size: cover;
                background-image: linear-gradient(rgb(0 0 0 / 74%),rgb(0 0 0 / 74%)),url(images/7000.jpeg);
                padding: 55px;
                box-sizing: border-box;
                backface-visibility: hidden;
            }
            .card-back{
                transform: rotateY(180deg);
            }
            .card h2{
                font-weight: normal;
                font-size: 24px;
                text-align: center;
                margin-bottom:7px;
            }
            .input-box{
                width: 100%;
                background: transparent;
                border:1px solid #fff;
                margin: 6px 0;
                height: 32px;
                border-radius: 20px;
                padding: 0 10px;
                box-sizing: border-box;
                outline: none;
                text-align: unset;
                color: #fff;
            }

            btn1{
                width: 100%;
                background: transparent;
                border: 1px solid #fff;
                margin: 35px 0 10px;
                height: 32px;
                font-size: 12px;
                border-radius: 20px;
                padding: 0 10px;
                box-sizing: border-box;
                outline: none;
                color: #fff;
                cursor: pointer;
            }

            .form-control1 {
                display: block;
                width: 90%;
                margin-left: 16%;
                height: 34px;
                padding: 6px 12px;
                font-size: 14px;
                line-height: 1.42857143;
                color: #f8f1f1;
                background-color: #0000;
                background-image: none;
                border: 3px solid #ffeb3b;;
                border-radius: 7px;
            }
            ::placeholder{
                color: white;
            }
            .error{
                color: #f9a825;
                margin: 0% 0% 3% 13%;
            }
            span{
                font-size: 13px;
                margin-left: 10px;
            }
            .card .btn1{
                margin-top: 16px;
            }
            .card a{
                color: #fff;
                text-decoration: none;
                display: block;
                text-align: center;
                font-size: 13px;
                margin-top: 8px;
            }
        </style>
        <br>
        <br>
    <center>
        <!--        <div  class="form-holder">-->
        <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>

     
        <div class="container">
            <div class="card">
                <div class="inner-box" id="card">
                    <div class="card-front">
                        <h2 style=" margin-top: -5px;   color: #ffeb3b;">LOGIN</h2>
                        <img src="images/login_1.jpeg" class="logo" alt="" style="margin-left:23px;">
                        <form method="POST" id="login" action="register" class="form"  style="    width: 85%; margin:15% 6% 9% 3%;">
                            
                            
                            <label><img src="images/email_1.jpeg" alt=""  style="width: 39px; margin-left: -259px;margin-bottom: -69px;"></label>
                            <input type="email" class="input-box form-control1" name="email" placeholder="Enter email" required><br><br>
                            <label><img src="images/lock_1.jpeg" alt="" style=" width:34px; margin-left: -257px;margin-bottom:  -70px"></label>
                            <input type="password" class="input-box form-control1" id="pw1" name="pw" placeholder="Enter password" required><br>
                            <!-- <button type="submit" class="submit-btn">Submit</button> -->
                            <button type="submit" class="btn btn-outline-info" style="margin-left: 0%; margin-top: 10%;width: 40%; background-image: linear-gradient(179deg, #ff9800, #f44336); color: white;" name="login">Submit</button>
                        </form>
                        <button type="button" class="btn btn-outline-info" style="margin-left: -3%;margin-top: -6%;width: 56%;background-image: linear-gradient( 179deg, #ff413300, #ffeb3b);color: black;" onclick="openRegister()">I'm New Here</button>
                        <a style="color: #89ff00" href="forgotpass.jsp">Forgot Password?</a>
                    </div>




                    <div class="card-back">
                        <h2 style=" margin-top: -39px;  color: #ffeb3b;">REGISTER</h2>
                        <form method="POST" id ="signup" action="register" class="form" style="width: 77%; margin: -1% 9% 0% 0%;">
                            <div>
                                <label><img src="images/user_1.jpeg" alt="" style= " margin-left: -222px;  margin-bottom: -72px;"></label>
                                <input type="text" class="input-box form-control1"  id="name" name="name" placeholder="Enter Name" required>
                            </div>
                            <div>
                                <label><img src="images/phone.jpeg" alt="" style= " margin-left: -222px;  margin-bottom: -60px;" ></label>
                                <input type="number" class="input-box form-control1" name="phone" placeholder="Enter Phone Number" required>
                            </div>
                            <div>
                                <label><img src="images/email_1.jpeg" alt="" style= " margin-left: -222px;  margin-bottom: -60px;"></label>
                                <input type="email" class="input-box form-control1" name="email" placeholder="Enter Email" required>
                            </div>
                            <div>
                                <label><img src="images/lock_1.jpeg" alt="" style= " margin-left: -222px;  margin-bottom: -60px;"></label>
                                <input type="password" class="input-box form-control1" id="pw" name="pw" placeholder="Password" required>
                            </div>
                            <div>
                                <label><img src="images/lock_1.jpeg" alt="" style= " margin-left: -222px;  margin-bottom: -60px;"></label>
                                <input type="password" class="input-box form-control1"  name="cp" placeholder="Re-enter Password" required>
                            </div>
                            <button type="submit" class="btn btn-outline-info"  style="margin-left: 17%;margin-top: 2%;width: 43%;background-image: linear-gradient(179deg, #ff9800, #f44336); color: white;" name="register" >Register</button>

                        </form>
                        <button type="button" class="btn btn-outline-info" style="margin-left: 4%; margin-top: 5%;width: 59%;background-image: linear-gradient( 179deg, #ff413300, #ffeb3b);color: black;" onclick="openLogin()">I've an account</button>
                       
                    </div>

                </div>
            </div>
        </div>
    </center>
    <br><br>
    <br><br>
    <br><br> <br><br> <br><br>

    <%@include file="footer.jsp"%>
    <script>
        var card = document.getElementById("card");

        function openRegister() {

            card.style.transform = "rotateY(-180deg)";
        }
        function openLogin() {
            card.style.transform = "rotateY(0deg)";
        }
    </script>
</body>


</html>