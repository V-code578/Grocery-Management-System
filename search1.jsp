<%-- 
    Document   : Search1
    Created on : Oct 2, 2021, 6:29:58 PM
    Author     : lenovo
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
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Pirata+One|Rubik:900">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <body>
        <%@include file="header1.jsp"%>
        <style>
            .jumbotron{
                background-color: #f2f2b5cc;
                border-radius: 120px;
            }
            .form-control{
                width:30%;
            }
            
             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
            body{
                background-image: url("images/5.jpg"); /* The image used */
                background-color: #cccccc; /* Used if the image is unavailable */
                height: 500px; /* You must set a specified height */
                background-position: center; /* Center the image */
                background-repeat: no-repeat; /* Do not repeat the image */
                background-size: cover; 
            }

            .footer {
                /* position: fixed;*/
                /*  height: 10% !important;*/
                margin-top: 200px;              
                bottom: 0;
                width: 100%;
                padding: 0px !important;
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

            h1 {
                text-transform: Uppercase;
                margin-bottom: -0.5em;
                font-family: 'Rubik', sans-serif;
                font-size: 5rem;
                color: #E4E5E6; }

            h1 {
                position: relative;
                background:linear-gradient(
181deg, #a90fe9, #f5f5f5, #e50904);
                -webkit-background-clip: text;
                -webkit-text-fill-color: transparent; }

            h1:before,
            h1:after {
                content: attr(data-text);
                position: absolute;
                top: 0;
                left: 0; }

             h1:before {
                z-index: -1;
                text-shadow: -0.001em -0.001em 1px rgba(255,255,255,.15)}

            h1:after {
                z-index: -2;
                text-shadow: 10px 10px 10px rgba(0,0,0,.5), 20px 20px 20px rgba(0,0,0,.4), 30px 30px 30px rgba(0,0,0,.1);
                mix-blend-mode: multiply; }
            </style>
        <center>
            <video id="background-video" autoplay loop muted poster="images/new1.mp4">
            <source src="images/search.mp4" type="video/mp4">
        </video>
        <% if (session.getAttribute("id") != null && session.getAttribute("id").equals("1")) {%>

        <br><h1 data-text="">Search By Id</h1>
        <br><br>
        <form action="search1" method="POST">
            <div class="form-group ">


                <input type="text" name="id" class="form-control" >
            </div>
            <button type="submit" class="btn btn-primary" name="submit" style="background-image: linear-gradient( 179deg, #ff4133, #ab08c7);">Search</button>
        </form>
        <% if (request.getParameter("id") != null) {%>
        <br> <div class="container ">
            <div class="jumbotron" style=" border-radius: 120px;">

                <table class="table">
                    <thead>
                        <tr style="background-color:#be9962f2;">
                    <br>
                    <th>Slno</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Date</th>

                    </tr>
                    </thead>
                    <tbody id="table">
                        <% Registration reg = new Registration(session);
                            ArrayList<student> mydata = reg.getUserinfo(request.getParameter("id"));
                            Iterator<student> itr = mydata.iterator();
                            while (itr.hasNext()) {
                                student s = itr.next();
                        %>
                        <tr>
                            <td><%=s.getId()%></td>
                            <td><%=s.getName()%></td>
                            <td><%=s.getemail()%></td>
                            <td><%=s.getphone()%></td>
                            <td><%=s.getdate()%></td>
                        </tr> 
                        <%}%> 
                    </tbody>
                </table>
            </div>
        </div>
        <%}
            }%> 
    </center>
    <%@include file="footer.jsp"%>
</body>
</html>