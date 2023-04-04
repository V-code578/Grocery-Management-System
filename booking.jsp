<%@page import="model.Cart"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Registration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dproduct"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
<!--        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
        <style>


            body {background-image: linear-gradient(263deg, #ef0b1617,#4b4a6f, #a251553d);
            background-repeat: no-repeat;
            background-size: 1560px 2225px;

               
                font-family: 'Varela Round', sans-serif;
                font-size: 17px;
            }
             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
/*
            .navbar{
                display: flex;
                align-items: center;
                padding: 10px;
                width: 100%;

            }*/
            .container{
                max-width: 1500px;
                margin:auto;
                padding-left: 25px;
                padding-right: 25px;
            }
/*            nav{
                flex: 1;
                text-align: right;

            }
            nav ul{
                display: inline-block;
                list-style-type: none;
            }
            nav ul li{
                display: inline-block;
                margin-right: 20px;
            }
            nav ul li a{
                text-decoration: none;
                color: #555;
            }
            nav ul li p{
                color: #555;
            }*/
            .selectpicker{
                color: #35475e;
                margin-left: 7px;
                font-size: 15px;
                background: rgb(243 184 16);
                font-family: cursive;
            }
            .table-responsive {
                margin: 30px 0;
            }
            .table-wrapper {
              
                padding: 20px 25px;
                border-radius: 3px;
                min-width: 1000px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {        
                padding-bottom: 15px;
                background: #35475e;
                color: #fff;
                padding: 16px 30px;
                width: 1200px;
                min-width: 0%;
                margin-left: 135px;
/*                margin: -20px -25px 10px;*/
                border-radius: 10px 10px 10px 10px;
                 box-shadow: -20px -20px 0 0 rgba(52, 58, 64, 0.2);
            }

            .pagination {
                float: right;
                margin: 0 0 5px;
            }
            .pagination li a {
                border: none;
                font-size: 13px;
                min-width: 30px;
                min-height: 30px;
                color: #999;
                margin: 0 2px;
                line-height: 30px;
                border-radius: 2px !important;
                text-align: center;
                padding: 0 6px;
            }
            .pagination li a:hover {
                color: #666;
            }	
            .pagination li.active a, .pagination li.active a.page-link {
                background: #03A9F4;
            }
            .pagination li.active a:hover {        
                background: #0397d6;
            }
            .pagination li.disabled i {
                color: #ccc;
            }
            .pagination li i {
                font-size: 16px;
                padding-top: 6px
            }
            .hint-text {
                float: left;
                margin-top: 10px;
                font-size: 13px;
            }    
            /* Custom checkbox */
            .cost{
                float: left;
                font-size: 25px;
                color: #ece6e6;
                padding-top: 30px;
                /*                padding-right: 300px;*/
            }
            /* Modal styles */
            .modal .modal-dialog {
                max-width: 400px;
            }
            .modal .modal-header, .modal .modal-body, .modal .modal-footer {
                padding: 20px 30px;
            }
            .modal .modal-content {
                border-radius: 3px;
                font-size: 14px;
            }
            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }
            .modal .modal-title {
                display: inline-block;
            }
            .modal .form-control {
                border-radius: 2px;
                box-shadow: none;
                border-color: #dddddd;
            }
            .modal textarea.form-control {
                resize: vertical;
            }
            .modal .btn {
                border-radius: 2px;
                min-width: 100px;
            }	
            .modal form label {
                font-weight: normal;
            }



            /*            wrappppp*/

            .wrapp{
                max-width: 1200px;
                border-radius: 20px;
                margin: auto;
                background:#101010;
                box-sizing: borgba(0,0,0,0.1)rder-box;
                padding: 40px;
                color: #d7e9e3;
                font-size: 15px;
                margin-top: 14px;
                float: center;

            }
            h1{
                text-align: center; 
            }
            input[type=text],input[type=password],input[type=number]{
                width:100%;
                box-sizing: border-box;
                padding:12px 5px;
                background: #ddd;
                outline: none;
                border:none;
                border-bottom: 3px double #fff;
                color: #555;
                border-radius: 5px;
                margin:5px;
                font-weight: bold;
            }
            input[type=submit]{
                width: 33%;
                box-sizing: border-box;
                padding: 10px 0;
                margin-top: 30px;
                outline: none;
                border: none;
                background: white;
                opacity: 0.7;
                border-radius:95px 0px;
                font-size: 20px;
                color: black;
            }
           
            .BK {
	display: flex;
        margin-left: 300px;
}

.BK .inner {
	width: 400px;
	height: 200px;
	line-height: 200px;
	font-size: 4em;
	font-family: sans-serif;
	font-weight: bold;
	white-space: nowrap;
	overflow: hidden;
}

.BK .inner:first-child {
	background-color: #e02c69;
	color: darkred;
	transform-origin: right;
	transform: perspective(100px) rotateY(-15deg);
}

.BK .inner:last-child {
	background-color:#e02c69;
	color: antiquewhite;
	transform-origin: left;
	transform: perspective(100px) rotateY(15deg);
}

.BK .inner span {
	position: absolute;
	animation: marquee 5s linear infinite;
}

.BK .inner:first-child span {
	animation-delay: 2.5s;
	left: -100%;
}

@keyframes marquee {
	from {
		left: 100%;
	}

	to {
		left: -100%;
	}
}

img{
    width:100px;
}
        </style>

    </head>
    
    <body>
         
        <div class="header">
             <%@include file="header1.jsp"%>
            <div class="container">
              
            </div>
        </div>
        <% if (session.getAttribute("uname") != null) {%>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <br>
                    
                        <div class="BK" >
  <div class="inner">
    <span>Book Order</span>
  </div>
  <div class="inner">
    <span>Book Order</span>
  </div>
</div>
                     
                   
                  
                    <div class="wrapp">
                        <div style="font-size:20px">  Buyer Name : <%= session.getAttribute("uname")%></div>
                        <br>
                        <%int tcost = 0;
                            Registration s1 = new Registration(session);
                            ArrayList<Cart> ar = s1.getcartinfo();
                            Iterator<Cart> itr = ar.iterator();
                            while (itr.hasNext()) {
                                Cart s = itr.next();
                                tcost = tcost + Integer.parseInt(s.getC_cost());
                        %>
                        <br>
                        <form action="order" method="POST">
                            <img src="images/<%=s.getC_image()%>">
                            <br>
                            <label for="price">Product name :   <%=s.getC_name()%></label>
                            <br>
                            <label for="price">Product Cost :&#8377 <%= s.getC_cost()%></label>
                            <br>
                            <hr>
                            <%}%>
                            <div class="cost">
                                Total: &#8377 <%=tcost%>
                            </div>
                            <br><br><br>
                            <br><center style="margin-left: 745px;
    margin-top: -56px;
">
                                Payment Method: Cash on delivery
                                  
                            </center>
                            <br>
                            <h2><u> Delivery Address :</u></h2>
                            <input type="text" id="adr" name="address" placeholder="Complete address" required><br>
                            <input type="text" id="city" name="city" placeholder="Enter city" required><br>
                            <input type="text" id="state" name="state" placeholder=" Enter state" required><br>
                            <!--<input type="number" id="code" name="code" placeholder="Enter pin code" required><br>-->
                            <input type="submit" name="submit" value="Confirm Order" class="btn"><br>
                            <input type="hidden" name="tcost" value=" <%=tcost%>">
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <%}%>
        <br><br><br><br>
        <%@include file="footer.jsp"%>
    </body>
</html>