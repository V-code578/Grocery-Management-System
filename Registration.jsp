<%-- 
    Document   : Registration
    Created on : 15 Sep, 2021, 11:26:45 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <title>register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <body>
        <%@include file="header.jsp"%>
        <script>



            //            jQuery.validator.addMethod( name, method [, message ] )
//            
// value---> "current value of the validated element".
//elememt---> " element to be validated ".

            jQuery.validator.addMethod("checkemail", function (value, element) {
                return /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/.test(value) || /^[0-9]{10}$/.test(value);
            });
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
                            minlength: "Please enter the password greater than or equal to  6.",
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
                background-image:  url("images/backrg.png");
                background-repeat: no-repeat;
                background-size: 1700px; 
            }
             .error{
                color:red;
            }
            .button{
                padding: 100px;
                width: 6%;
                background: cornflowerblue;
                color: white;
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

            td input{
                display:block;
            }
            .form {
                width: 100%;
                ;
                margin: 19px auto;
                padding: 41px;
                position: relative;
            }
            .form-holder h2{
                color: #ffeb3b;
                padding: 10px;
                text-align: center;
                font-size: 22px;
            }
            .form-holder {
                background: #000;
                width: 430px;
                max-width: 90%;
                padding: 0px 0px;
                opacity: .7;
                border-radius: 44px;

            }
            .wrapper{
                display: flex;
                align-items: center;
                justify-content: center;
                min-height: 2vh;
                height: auto;
            }
            .logo{
                display: block;
                width: 100px;
                margin: 0px auto;
                border-radius: 20px;
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
            label {
                display: inline-block;
                margin-bottom: 0.5rem;
                color: aqua;
            }

            img{
                box-shadow: 1px 1px 5px 1px rgb(0 0 0 / 10%);
                border-radius: 5px;
                width: 23px;
                margin-right: 10px;
            }

            #msg{
                width: 50%;
            }
        </style>

        <br><br>
    <center>

        <br><br>
<div class="form-holder">
        <% if (request.getAttribute("status") != null) {%>
        <div id="msg">  <%= request.getAttribute("status")%></div>
        <%}%>


        <form method="POST" id ="signup" action="register" class="form">
            <font color="red"> 


            <h2>Register</h2>
            </font>
            <div class="form-group">
                <div class="wrapper">
                    <div class="container ">
                        <div class="form-group">
                            <div class="form-group">
                                <label><img src="images/user_1.jpeg" alt=""></label>
                                <input type="text"  id="name" name="name" placeholder="Enter Name">
                            </div>
                            <div class="form-group">
                                <label><img src="images/phone.jpeg" alt=""></label>
                                <input type="number" name="phone" placeholder="Enter Phone number">
                                
                            </div>
                            <div class="form-group">
                                <label><img src="images/email_1.jpeg" alt=""></label>
                                <input type="email" placeholder="Enter email" name="email">
                            </div>
                            <div class="form-group">
                                <label><img src="images/lock_1.jpeg" alt=""></label>
                                <input type="password" id="pw" name="pw" placeholder="Enter password">
                            </div>
                            <div class="form-group">
                                <label> <img src="images/lock_1.jpeg" alt=""></label>
                                <input type="password" name="cp" placeholder="re-enter password">
                            </div>
                             <button type="submit" class="btn btn-outline-info" name="register" style="background-image: linear-gradient( 179deg, #ff4133, #ab08c7);">Register</button>
                        </div>

                     



                    </div>
                </div>
            </div>
        </form>
</div>
    </center>
    <br> <br> <br> <br>
    <br><br>
    <%@include file="footer.jsp"%>
</body>


</html>
<!--            <table>
                
                <tr class="form-group">
                   
                    <td> <img src="images/user_1.jpeg" alt=""></td>
                    <td style="color: aqua"> Name  </td>
                    <td><input type="text"  id="name" name="name" placeholder="Enter Name"</td>
                </tr> 
                 <tr class="form-group">
                    <td ><img src="images/phone.jpeg" alt=""></td>
                    <td  style="color: aqua"> Phone Number   </td>
                    <td> <input type="number" name="phone" placeholder="Enter Phone number"> </td>
                </tr>
                <tr class="form-group">
                    <td> <img src="images/email_1.jpeg" alt=""></td>
                    <td  style="color: aqua" > Email  </td>
                    <td>   <input type="email" placeholder="Enter email" name="email"></td>
                </tr>
                <tr class="form-group">
                    <td><img src="images/lock_1.jpeg" alt=""></td>
                    <td  style="color: aqua"> Password  </td>
                    <td>   <input type="password" id="pw" name="pw" placeholder="Enter password"></td>
                </tr>
                <tr class="form-group">
                    <td> <img src="images/lock_1.jpeg" alt=""></td>
                    <td  style="color: aqua"> Confirm Password  </td>
                    <td>   <input type="password" name="cp" placeholder="re-enter password"></td> 
                </tr>
                <tr>
 


  </tr>
                
            </table>-->
