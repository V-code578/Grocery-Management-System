<%-- 
    Document   : EditForm
    Created on : 22 Sep, 2021, 5:45:47 PM
    Author     : User
--%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.student"%>
<%@page import="model.Registration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>edit form</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <style>
        td input{
            display:block;
        }
        .col-md-4 {
            -ms-flex: 0 0 33.333333%;
            flex: 0 0 33.333333%;
            max-width: 84.333333%;
        }
        body{
                background-image:  url("images/Edit.jpeg");
                background-repeat: no-repeat;
                background-size: 1550px 1151px;
                height: 200px;
            }

        .form-holder {
            background: #000;
            width: 430px;
            max-width: 90%;
           padding-top: 0px;
    padding-bottom: 45px;
            opacity: .7;
           
        }
        .wrapper{
            padding: 14px;
            display: flex;
            align-items: center;
            justify-content: center;
            min-height: 2vh;
            height: auto;
        }

        .btn btn-primary:hover{
            transform: scale(1.4);
        }
        .form-control{
          
    display: block;
    width: 50%;
    height: 34px;
    padding: 6px 12px;
    font-size: 14px;
    line-height: 1.42857143;
    color: #555;
    background-color: #fff;
    background-image: none;
    border: 1px solid #ccc;
    border-radius: 4px;
        }
        
          #background-video {
                width: 100vw;
                height: 100vh;
                object-fit: cover;
                position: fixed;
                left: 0;
                right: 0;
                top: 0;
                bottom: 0;
                z-index: -1;
            }
             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
    </style>
    <body>
        <%@include file="header1.jsp"%>
        
    <center>
        <div class="wrapper">
            <div class="form-holder">
                <% if (session.getAttribute("uname") != null) {
                        Registration reg = new Registration(session);
                        student s = reg.getInfo();%>
                <form action='register' method='POST'>
                    <font color="green" size="5"><br>
                    <h2 style="color:#d9ff0b;">Edit Profile</h2>
                    </font>
                    <br>
                    <div class="wrapper">

                        <div class="container ">
                            <div class="form-group ">
                                <div class="form-group ">
                                    <label style="color:  #efb9b9;" >Name</label>
                                    <input type="text" class="form-control"   name="name" value="<%=s.getName()%>">
                                </div>
                                <div class="form-group ">
                                    <label style="color:  #efb9b9;">Phone Number</label>
                                    <input type="number" class="form-control"  name="pno" value="<%=s.getphone()%>">
                                </div>
                                <fieldset disabled>
                                <div class="form-group ">
                                    <label for="disabledemailInput" class="form-label" style="color:  #efb9b9;">Email</label>
                                    <input type="email" class="form-control"  name="email"   placeholder="<%=s.getemail()%>">
                                </div>
                                </fieldset>
                                
                                <button type="submit" class="btn btn-outline-info" name="submit">Update</button>
                            </div>

                        </div>
                    </div>
                </form>
            </div>
        </div>


        <%}%>



    </center>

    <%@include file="footer.jsp"%>

</body>
</html>
