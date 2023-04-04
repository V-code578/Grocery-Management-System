<%-- 
    Document   : dog2col
    Created on : 20 Sep, 2021, 10:00:14 PM
    Author     : User
--%>
<%@page import="model.Dproduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Dproduct"%>
<%@page import="model.Registration"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
        <title>categories</title>
        <style>
            
            
            .container1{
                margin-top: 100px;
                width: 100%;
                padding-left: 100px;
            }
            .container{
                max-width: 1300px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }
            
             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}

            body{
                
               background-image:linear-gradient( 
312deg, rgb(233 139 43 / 60%), rgb(255 255 255 / 52%));
            background-repeat: repeat;
                background-size: 100% ;
                
            }
            /*             body{
                            font-family: 'Poppins', sans-serif;
                            background-color: white;
                        }
            /*             .header{
                            background: radial-gradient(#fff,#ffd2d2);
                            background-color: whitesmoke;
                        }*/

            .col-md-5:hover{
                transform: translateY(-20px);

            }
            .col-md-7{
                /*                color:#555;*/

            }
            .row{
                display: flex;
                align-items:center;
                flex-wrap: wrap;
                justify-content:space-around;
            }
            .price{
                color:#090909;
                font-size:26px;
                font-weight:bold;
                padding-top: 20px;
            }
            /*            .cart{
                            background: #FE980F;
                            color:#FFFFFF;
                            font-size: 15px;
                            margin-left:20px;
                        }*/
            .but{
                display: inline-block;
                background: #ff523b;
                color: #fff;
                padding: 8px 30px;
                margin: 30px 0;
                border-radius: 30px;
                text-decoration: none;
            }
            img{
                width: 78%;
                vertical-align: middle;
            }
        </style>
    </head>
    <body>
        <div class="header">
            <%@include file="header1.jsp"%>
       <body ng-app="">
<form style="text-align: unset;
    font-size:21px;
    background-color: #141d2a;
    color:#f4e164;
    margin-top: -21px;">
  Pick a category: &nbsp
  <input type="radio" onchange="window.location.replace('category.jsp?category=Fruits')">Fruits &nbsp &nbsp
  <input type="radio" onchange="window.location.replace('category.jsp?category=Vegetables')">Vegetables &nbsp &nbsp
  <input type="radio" onchange="window.location.replace('category.jsp?category=Oils')">Organic edible oils &nbsp &nbsp
   <input type="radio" onchange="window.location.replace('category.jsp?category=Grains')">Food grains &nbsp &nbsp
  <input type="radio" onchange="window.location.replace('category.jsp?category=Beverages')">Beverages &nbsp &nbsp
   <input type="radio" onchange="window.location.replace('category.jsp?category=House')">House Holds &nbsp &nbsp
  <input type="radio" onchange="window.location.replace('category.jsp?category=Snacks')">Snacks &nbsp &nbsp
  <input type="radio" onchange="window.location.replace('category.jsp?category=Staples')">Organic staples
  
</form>



</body>


            <div class="container">

                <%
                    Registration r = new Registration(session);
                    ArrayList<Dproduct> al = r.get_productinfo(request.getParameter("category"));
                    Iterator<Dproduct> it = al.iterator();
                    while (it.hasNext()) {
                        Dproduct s = it.next();%>
                <form action="addtocart" method="POST">
                   
                    <div class="container1">
                        <div class="row"> 
                            <div class="col-md-5" >
                                
                                <img  src="images/<%=s.getP_image()%>"  class="d-block w-100">
                            </div>
                            <div class="col-md-7">
                                <h2><%=s.getP_name()%></h2>
                                <input type="hidden" name="p_id" value="<%=s.getP_id()%>">
                                <p class="price" >&#8377 <%=s.getP_cost()%></p>
                                <p><%=s.getP_details()%></p>

                                <% if (session.getAttribute("uname") != null) {%>
                                <button type="submit" name="addtocart" class=" btn btn-danger">Add to Cart </button>
                                <% } else {
                                    session.setAttribute("logoutredirect", "category.jsp?category=" + request.getParameter("category"));
                                %>
                                <a href="login.jsp" class="but" >Add To Cart</a>
                                <% } %>

                            </div>

                        </div>
                    </div>
                </form>

                <% }%>



            </div>
        </div>
        <br><br><br>
        <%@include file="footer.jsp"%>
    </body>
</html>
