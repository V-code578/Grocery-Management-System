<%@page import="model.Order"%>
<%@page import="model.Cart"%>
<%@page import="java.util.Iterator"%>
<%@page import="model.Registration"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dproduct"%>

<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
      
        <title>Bootstrap CRUD Data Table for Database with Modal Form</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">

        <style>
            body {
                color: #566787;
               
                font-family: 'Varela Round', sans-serif;
                font-size: 17px;
                width: 100%;
            }
            
             body{
                background-image:  url("images/myorder.jpeg");
                background-repeat: repeat;
                background-size: 1700px;
            }
/*            .navbar{
                display: flex;
                align-items: center;
                padding: 10px;
                width: 100%;
            }*/

             a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
            .container{
               
                max-width: 1000px;
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


            .table-responsive {
                 
                margin: 20px 0;
                width: 90%;
            }
            .table-wrapper {
                margin-left: 200px;
               background-color:#f2f2b5a8;
                padding: 26px 166px;
                border-radius: 8px;
                min-width: 500px;
                box-shadow: 0 1px 1px rgba(0,0,0,.05);
            }
            .table-title {      
                
                padding-bottom: 15px;
                  background-image: linear-gradient( 
                    180deg, #6877c8b3, #00bcd442);
                color: #000000;
                padding: 16px 30px;
                min-width: 121%;
                margin: -24px -166px 10px;
                border-radius: 3px 3px 0 0;
            }
            .table-title img{
                float: left;
            }
            .table-title h2 {
                margin: 5px 0 0;
                font-size: 24px;
            }
            .table-title .btn-group {
                float: right;
            }

            .table-title .btn {
                color: #fff;
                float: right;
                font-size: 13px;
                border: none;
                min-width: 50px;
                border-radius: 2px;
                border: none;
                outline: none !important;
                margin-left: 10px;
            }
            .table-title .btn i {
                float: left;
                font-size: 21px;
                margin-right: 5px;
            }
            .table-title .btn span {
                float: left;
                margin-top: 2px;
            }
            table.table tr th, table.table tr td {
                border-color: #e9e9e9;
                padding: 12px 15px;
                vertical-align: middle;
                color: #000000;
            }
            table.table tr th:first-child {
                width: 60px;
            }
            table.table tr th:last-child {
                width: 100px;
            }
            table.table-striped tbody tr:nth-of-type(odd) {
                background-color: #fcfcfc;
            }
            table.table-striped.table-hover tbody tr:hover {
                background: #f5f5f5;
            }
            table.table th i {
                font-size: 13px;
                margin: 0 5px;
                cursor: pointer;
            }	
            table.table td:last-child i {
                opacity: 0.9;
                font-size: 22px;
                margin: 0 5px;
            }
            table.table td a {
                font-weight: bold;
                color: #566787;
                display: inline-block;
                text-decoration: none;
                outline: none !important;
            }
            table.table td a:hover {
                color: #2196F3;
            }
            table.table td a.edit {
                color: #FFC107;
            }
            table.table td a.delete {
                color: white;
            }
            table.table td i {
                font-size: 19px;
            }
            table.table .avatar {
                border-radius: 50%;
                vertical-align: middle;
                margin-right: 10px;
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
                float: right;
                font-size: 25px;
                color: black;
                padding-top: 30px;
                padding-right: 300px;
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
/*            .modal .modal-footer {
                background: #ecf0f1;
                border-radius: 0 0 3px 3px;
            }*/
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
                border-radius: 5px;
                min-width: 80px;
            }	
            .modal form label {
                font-weight: normal;
            }
            .btn-warning {
    color: #fff;
   background-image: linear-gradient( 179deg, #ff4133, #ab08c7);
   
}

            

           
            img{width:100px;
height: 100px;
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

        </style>
        <script>
            $(document).ready(function() {
                $('[data-toggle="tooltip"]').tooltip();
            });
        </script>
    </head>
    <body>
         <%@include file="header1.jsp"%>
          
        <div class="header">
            <div class="container">
               
            </div>
        </div>
        <% if (session.getAttribute("uname") != null) {%>
        <div class="container-xl">
            <div class="table-responsive">
                <div class="table-wrapper">
                    <div class="table-title">
                        <div class="row">
                            <div class="col-sm-4" style="margin-left:490px;">
                                <h2><b>My Orders </b></h2>
                            </div>
                        </div>
                    </div>    
                    <table class="table table-striped table-hover">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Product Name</th>
                                <th>Product cost</th>
                                <th>Status</th></tr>
                        </thead>
                        <tbody>
                            <%
                                Registration s1 = new Registration(session);
                                ArrayList<Order> ar = s1.getorderinfo();
                                Iterator<Order> itr = ar.iterator();
                                while (itr.hasNext()) {
                                    Order s = itr.next();
                            %> 
                            <%
                                Registration s2 = new Registration(session);
                                ArrayList<Order> ar1 = s2.getorderinfocart(s.getoid());
                                Iterator<Order> itr1 = ar1.iterator();
                                while (itr1.hasNext()) {
                                    Order s3 = itr1.next();
                            %> 
                            <tr> 
                                <td><img src="images/<%=s3.getp_image()%>"></td>
                                <td><%=s3.getc_name()%></td>
                                <td><%=s3.getc_cost()%></td>
                                <td><%=s.getstatus()%></td>
                            </tr>
                            <% }%>
                        <td>
                            <%if (s.getstatus().equals("ordered")) {%>
                            <form action="order" method="post">
                                <input type="hidden" name="orderid" value="<%=s.getoid()%>"/>
                                <input type="submit"  class="btn btn-warning" name="deleteorder" value="Cancel Order">
                            </form>
                            <%}%>
                        </td>
                        <%}%>
                        </tbody>
                        <hr>
                    </table>
                </div>
            </div>        
        </div>
        <br><br><br>
        <%}%>
        <%@include file="footer.jsp"%>
    </body>
</html>