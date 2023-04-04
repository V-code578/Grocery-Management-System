<%@page import="model.Cart"%>
<%@page import="model.Registration"%>
<%@page import="model.Cart"%>
<%@page contentType="text/html"%>
<%@page import="model.Registration"%>
<%@page import="java.util.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>


        <meta charset="utf-8">

        <title>cart</title>
        
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 </head>
    <body>
        <%@include file="header1.jsp"%>
        <style>
           

             .container{
                max-width: 1500px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }
            
            body{
                   background-color: #e6a7bd;
                
                background-size: 1650px;
            }
            
             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
            .cost {
                float: right;
                font-size: 25px;
                color: black;
                padding-top: 20px;
                padding-right: 528px;
                margin-top: -100px;
                margin-left: 80px;
            }
            .row {
                margin-right: 0px;
                margin-left: 6px;
            }
            .table .thead-dark th {
                color: #ffffff;
                background-color: #6f650b;
                border-color: #454d55;
            }
           
            .table-bordered {
                border: 2px solid #000000;
            }
            .table {
                width: 83%;
                max-width: 100%;
                margin-bottom: 18px;
                margin: 1% 8%;
                background-color: #cbc9c9;
            }
            
            .btn btn-warning
            {
                margin-top: 17px
            }

            .col-sm-4{
                margin-left:550px;
            }
            td{ 
                text-align: center;
                
            }
            th{
                text-align: center;
            }
            .cost {
                float: right;
                font-size: 25px;
                color: black;
                padding-top: 20px;
                padding-right: 390px;
                margin-top: -100px;
                margin-left: 80px;
            }
             .footer {
                 position: relative;
                /*  height: 10% !important;*/
/*                margin-top: 200px;              */
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
                margin-left: -15px;
            }
    
            
        </style>
      <% if (session.getAttribute("uname") != null) {%>
       
      <div class="container">

            <div class="col-sm-4">
                <img style="width: 88%;
                     margin: 11% 4% -2% -51%;" src="images/mp.jpeg">

            </div>
        </div>


       <table class="table table-striped table-hover table-bordered table-dark table-fixed  ">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">Image</th>
                    <th scope="col">Product Name</th>
                    <th scope="col">Product Cost</th>
                    <th scope="col">Actions</th>
                </tr>
            </thead>
            <tbody  style="height: 10px !important; overflow: scroll; ">
                <% int tcost = 0;
                    Registration s1 = new Registration(session);
                    ArrayList<Cart> ar = s1.getcartinfo();
                    Iterator<Cart> itr = ar.iterator();
                    while (itr.hasNext()) {
                        Cart s = itr.next();
                        tcost = tcost + Integer.parseInt(s.getC_cost());
                %> 
                
                <tr >
                    <td  style="padding-top: 3%;" class="filterable-cell"><img src="images/<%=s.getC_image()%>"  width="100px" height="80px"></td>
                    <td  style="padding-top: 5%;padding-bottom: 3%" class="filterable-cell"><b style="font-size: 100%;"><%=s.getC_name()%></b></td>
                    <td  style="padding-top: 5%;padding-bottom: 3%" class="filterable-cell"><b style="font-size: 100%;">&#8377 <%=s.getC_cost()%></b></td>
                    <td  style="padding-top: 5%;padding-bottom: 3%" >
                        <form action="addtocart" method="post">
                            <input type="hidden" name="cid" value="<%=s.getC_id()%>"/>
                            <button type="submit" name="delete" class="btn btn-danger">Delete</button>
                        </form>
                    </td>
                </tr>
                <%}%>
            </tbody>

        </table>

       <button type="button" class="btn btn-info" style=" margin-top: 50px; margin-left: 140px ;background-image: linear-gradient( 
                                      179deg, #ff4133, #ab08c7);" onclick="history.back()"><---continue shopping</button> 
    <center>
         
         <div class="cost" >
            Total: &#8377 <%=tcost%>
            
        </div>
        <a href="booking.jsp"><button type="button" class="btn btn-info" style="margin: -3% -55% 7% 12%; background-image: linear-gradient( 
                                      179deg, #ff4133, #ab08c7);"> Buy now </button></a>
       
    </center>

       
    <%}%>
    <br><br><br><br><br><br>

    <%@include file="footer.jsp"%>

</body>
</html>