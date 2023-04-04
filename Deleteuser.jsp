<%-- 
    Document   : Delete
    Created on : Oct 3, 2021, 3:20:18 PM
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
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Ubuntu">

        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
    </head>
    <style>
        .errmsg{
            background:green;
            padding:6px;
            width:50%;
            color:white;
            font-weight: bold;
            
        }
            .jumbotron{
                background-color: #f2f2b5cc;
            }
            .form-control{
                width:30%;
            }
            #search{
                width:50%;
            }
             body{
                margin: 36px;
                background-color: white;
                background-repeat: no-repeat;
                background-size: 1600px;
                height: 200px
            }
            .footer {
                /* position: fixed;*/
                /*  height: 10% !important;*/
                margin-top: 200px;              
                bottom: 0;
                width: 100%;
                padding: 0px !important;
            }
            
           
.inner p {
  margin-top: 40px;
  font-family: sans-serif;
  font-size: 70px;
  font-weight: bold;
  color: #ef0566;
  text-align: center;
  letter-spacing: 1px;
  text-shadow: 16px 17px 9px #0d0c0c;;
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
    
             .inner .cta {
            
            top: -6px;
            position: relative; }
    </style>
         <body>
        <%@include file="header.jsp"%>
          <video id="background-video" autoplay loop muted poster="images/delete.mp4">
  <source src="images/delete.mp4" type="video/mp4">
</video>
    <center>
         
  <div class="inner">
      <div class="cta" style=" width:577px;
    margin-left: 20px;">
    <span> <p>Delete User</p></span>
  </div> </div>
       
         <% if (request.getAttribute("status") != null) {%>
        <h1 class= "errmsg" > <%=request.getAttribute("status")%></h1>
        <%}%>
        <div class="container ">
            <div class="jumbotron">
               
                <table class="table" style="margin-bottom:-41px;">
                    <thead>
                        <tr style="background-color: #0575ff73;">
                    <br>
                    <th>Slno</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Phone</th>
                    <th>Date</th>
                    <th>Delete</th>
                    </tr>
                    </thead>
                    <tbody id= "table" >
                        <% if (session.getAttribute("id") !=null && session.getAttribute("id").equals("1")){
                            Registration reg =new Registration(session);
                            ArrayList<student>mydata = reg.getUserDetails();
                         
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
                        <td>
                            <form action="delete" method="POST">
                                <input type="hidden" name="userid" value="<%=s.getId()%>"/>
                                <input type="submit" class="btn btn-danger" value="Delete"/>
                        </form>
                        </td>
                        </tr>
                        <%}
                        }%>
                    </tbody>
                </table>
            </div>
        </div>
       
    </center>
         <script>
             $(document).ready(function(){
             $("$search").on("keyup", function(){
                 var value =$(this).val().toLowerCase();
                 $("#table tr").filter(function (){
                $(this).toggle($(this).text().toLowerCase().indexOf(value) >0)
             });
         });
     });
         </script>
    <%@include file="footer.jsp"%>
</body>
</html>
