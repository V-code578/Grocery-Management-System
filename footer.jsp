-<%-- 
    Document   : Footer
    Created on : 15 Sep, 2021, 11:27:49 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Footer Page</title>
    </head>
    <style>

        .footer .box-container{
            background-color: #141d2a;
            display: flex;
            gap: 1.5 rem;
            flex-wrap: wrap;
        }

        .footer .box-container .box{
            color: white;
            margin-right: 5px;
            padding: 4.7rem 5rem;
            flex:1 1 25rem;
        }

        .footer .box-container .box .share a{
            color: white;
            padding:0;
            height:4rem;
            width:4rem;
            line-height: 4rem;
            text-align: center;
        }

        .footer .box-container .box h3{
            font-size: 2.5rem;
            color:white;
        }

        .footer .box-container .box p{
            font-size: 1.3rem;
            color:white;
            padding:-0.3rem 0;
        }

        .footer .box-container .box .links{

            padding:1rem 0;
        }

        .footer .box-container .box .links a{
            color: white;
            display: block;
            padding:.5rem 0;
            font-size: 1.7rem;
            color:white;
        }

        .footer .box-container .box .links a:hover{
            text-decoration: underline;
            color:white;
        }

        .footer .credit{
            padding:2.5rem 1rem;
            border-top: .1rem solid rgba(0,0,0,.1);
            margin-top: 1rem;
            text-align: center;
            font-size: 2rem;
        }

        .footer .credit span{
            color: green;
        }
        *{margin:0; padding:0;}

        .footer .box-container .centerdive{
            height:2vh;
            display:flex;

        }
        .footer .box-container .centerdive .a{
            height:2vh;
            width:100px;
            background-color:#f5f6fa;
            text-align:center;
            margin:10px;
            line-height:110px;
            box-shadow:1px 4px 2px 2px #dcddel;

        }
        .footer .box-container .centerdive a i{
            transition:a11 0.3s linear;
        }       
        .footer .box-container .centerdive a:hover i{
            transform:scale(1.3);
        }
        .footer .box-container .centerdive .fa-facebook{

        }
        .footer .box-container .centerdive .fa-instagram{

        }
        .footer .box-container .centerdive .fa-youtube{

        }
        .footer .box-container .centerdive .fa-twitter{

        }

        .footer .box-container .centerdive a{
            color: white;
            display: block;
            padding:4.5px 0;
            font-size: 1.7rem;
            color:white;
            
        }
        .footer .cta {
            -webkit-box-shadow: -20px -20px 0 0 rgba(52, 58, 64, 0.2);
            box-shadow: -20px -20px 0 0 rgba(52, 58, 64, 0.2);
            padding: 14px;
            background-color: #8186d5;
            top: 56px;
            position: relative; }
       .gotopbtn{
            position:fixed;
            width:50px;
            height:50px;
            background: #da197c8c;;
            bottom:10px;
            right: 4px;
            text-decoration: none;
            text-align: center;
            line-height: 50px;
            color: white;
            font-size: 58px;
            padding: 7px;
            border-radius: 30px;
        }

        * {box-sizing:border-box}
    </style>
    <body>
        <section class="footer">
<div class="cta"style="    width:977px;
    margin-left: 202px;">
                        
                    <h2 class="mb-0" style="color:white;">Online Grocery Bazaar Shopping India</h2>
                    <h3 class="text-dark">Let's get started!</h3>
                

            </div>
            <div class="box-container">

                
                <div class="box">    
                    <u><h3> Created by</h3></u><br>
                    <b><p>ANUJ MR <br><br>  ARUSHI S AGADI<br><br> DEEPAK R <br><br> SIMRAN K <br><br> VINAY HN</p></b>

                </div>
                <div><br><br><br> <img style=" vertical-align: middle; border-style: none;width:60%;" src="images/Picture1.jpg"><h4 style="color:white;"> Connect With Us</h4><p style="color:white;">Email: grocery@gmail.com<br>Contact: 9596325489</p><br>
                </div>
                <div class="box">
                    <u><h3>Support</h3></u>

                    <div class="links">
                        <a href="#">product support</a>
                        <a href="#">Community</a>
                        <a href="#">Report abuse</a>
                        <a href="#">help</a>

                    </div>


                </div>  
                <div class="centerdive" ><br><br>

                    <li><br> <br><br><br> 
                        <a href=" https://www.facebook.com/codebasicshub" target="_blank">
                            <i class="fa fa-2x fa-facebook"></i> 
                        </a>
                        <a href="Twitter: https://twitter.com/codebasicshub" target="_blank">
                            <i class="fa fa-2x fa-twitter"></i> 
                        </a>
                        <a href=" https://www.instagram.com/codebasicshub/" target="_blank">
                            <i class="fa fa-2x fa-instagram"></i> 
                        </a>

                        <a href=" https://youtu.be/0ZaC6JaNpic" target="_blank">
                            <i class="fa fa-2x fa-youtube"></i> 
                        </a>
                    </li>


                </div>
                <div class="box">
                    <u><h3>About Us</h3></u>
                    <div class="links">
                        <P> Find grocery items of best quality available at the lowest prices Select a slot for delivery and your order will be delivered right to your doorstep. Contact Less Delivery. Wide Range of Products. Quality You Can Trust. Types: Fruits & Vegetables, Grocery & Staples etc</P>
                    </div>
                </div>



            </div>
<a class="gotopbtn" href="#"> <i class="fa-solid fa-angles-up"></i>^</a>
        </section>
    </body>
</html>