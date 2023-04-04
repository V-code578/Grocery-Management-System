<%@page import="model.Registration"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>


<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Grocery | Online Shopping website</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .admin-wrapper .admin-content{
                flex: 8;
                height: 100%;
                padding: 40px 100px 100px;
                overflow-y: scroll; 
                margin-left: 70px;

            }
            
             body{
                background-image:  url("images/adminuser.jpeg");
                background-repeat: repeat;
                background-size: 1700px;
            }

            .admin-content .page-title{
                text-align: center;
                margin-bottom: -6.5rem;
                font-family: 'Niconne', cursive;

            }

            a{
                color: #d52e3f;
                text-decoration: none;
                font-family: 'Niconne', cursive;
                font-size: 1.2rem;

            }
            .admin-wrapper .admin-content table{
                width: 83%;
                border-collapse: collapse;
                font-size: 1.1rem;
                background-color: #f2f2b5cc;

            }
            .admin-wrapper .admin-content th, td{
                padding: 15px;
                text-align: center;
                border-bottom: 1px solid lightgrey;
            }
            .edit{
                color: greenyellow;
                text-decoration: none;
            }
            .delete{
                color: red;
                text-decoration: none;
            }
            .post{
                color: blue;
                text-decoration: none;
            }
            .edit:hover,
            .delete:hover,
            .post:hover{
                text-decoration: underline;
            }
            .btn-group .button{

                color:#35475e;
                padding: 5px 20px;
                border: solid black;
                text-decoration: none;

                font-family: sans-serif;


                transition: 0.6s ease;
            }
            nav a{
                font-size: 25px;
                padding-top:5px;
                color: #ffffff;
            }
            .content .fetch input[type=submit]{
                padding: 2px;
                /*    border-bottom:  2px;*/
                /*    border-color: black;*/
                border-radius: 10px 10px 8px;
                float: right;
                background-color: black;
                color: white;
            }
            .content .fetch input[type=submit]:hover{
                background-color: whitesmoke;
                color: #233245;
            }

            .content div{
                font-size: 4rem;
                text-align: center;
                height:90vh;
                line-height: 15vh;
                color: #fcedd8;
                  margin-left: 185px;

                font-family: 'Niconne', cursive;
                font-weight: 700;
                text-shadow: 5px 4px 1px #eb452b, 6px 9px 0px #efa032, 9px 8px 1px #c11a2b;
            }

            .content p{
                text-align: center;
                font-family: "Helvetica";
                font-size:0.8rem;
            }
            .print{
                color: green;
                text-decoration: none;
                text-align: center;
                font-size: 25px;
                margin-left: 185px;
            }
            tr{
                font-size: 18px;
            }
            td{
                font-size: 14px;
                color: black;
            }
            img{
                width:105px;
                margin-left: -190px;
            }
            th{
                background-image: linear-gradient( 
                    180deg, #6877c8b3, #00bcd442);
                align-items: center;
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
            .sidebar-container {
                position: fixed;
                width: 236px;
                margin-top: -12px;
                height: 100%;
                left: 0;
                overflow-x: hidden;
                overflow-y: auto;
                background: #1a1a1a;
                color: #fff;
            }
            .sidebar-logo {
                padding: 10px 15px 10px 30px;
                font-size: 20px;
                background-image: linear-gradient( 
                    179deg, #a6b2f2, #00bcd4);
                color: black;
            }
            .sidebar-navigation {
                padding: 0;
                margin: 0;
                list-style-type: none;
                position: relative;
            }

            .sidebar-navigation li {
                background-color: transparent;
                position: relative;
                display: inline-block;
                width: 100%;
                line-height: 20px;
            }


            .sidebar-navigation li a {
                padding: 10px 15px 10px 30px;
                display: block;
                color: #fffefd;
            }
            .sidebar-navigation li .fa {
                margin-right: 10px;
            }

            .sidebar-navigation li a:active,
            .sidebar-navigation li a:hover,
            .sidebar-navigation li a:focus {
                text-decoration: none;
                outline: none;
            }

            .sidebar-navigation li::before {
                background-color: #2574A9;
                position: absolute;
                content: '';
                height: 100%;
                left: 0;
                top: 0;
                -webkit-transition: width 0.2s ease-in;
                transition: width 0.2s ease-in;
                width: 3px;
                z-index: -1;
            }

            .sidebar-navigation li:hover::before {
                width: 100%;
            }

            .sidebar-navigation .header {
                font-size: 12px;
                text-transform: uppercase;
                background-color: #151515;
                padding: 10px 15px 10px 30px;
            }

            .sidebar-navigation .header::before {
                background-color: transparent;
            }

        </style>



    </head>
    <body>
        <%@include file="header1.jsp"%>

        <div class="sidebar-container">
            <div class="sidebar-logo">
                Admin Dashboard
            </div>
            <ul class="sidebar-navigation">

                
                <li>
                    <a href="adminuserindex.jsp" style="text-decoration: none;
                       font-family: ui-rounded;
                       font-size: medium;">
                        <i class="fa fa-users" aria-hidden="true"></i> Manage Users
                    </a>
                </li>

                <li>
                    <a href="adminadditem.jsp" style="text-decoration: none;
                       font-family: ui-rounded;
                       font-size: medium;">
                        <i class="fa fa-shopping-basket" aria-hidden="true"></i> Manage Items
                    </a>
                </li>
                <li>
                    <a href="adminorder.jsp" style="text-decoration: none;
                       font-family: ui-rounded;
                       font-size: medium;">
                        <i class="fa fa-asterisk" aria-hidden="true"></i> Manage Order Details
                    </a>
                </li>

                <li>
                    <a href="DeleteProduct.jsp" style="text-decoration: none;
                       font-family: ui-rounded;
                       font-size: medium;">
                        <i class="fa fa-trash" aria-hidden="true"></i> Delete Product
                    </a>
                </li>
               
            </ul>
        </div>
        <div class="admin-wrapper">
            <div class="admin-content">
                <!--   <div class="btn-group">
                  <a href="adminuserindex.html" class="button">Manage User</a>
                
                      
                </div>-->

                <div class="print">
                    <% if (request.getAttribute("status") != null) {%>  
                    <b >   <%= request.getAttribute("status")%> </b>
                    <%}%>
                </div>

                    <div class="content" style="margin-top:-45px;height: 63; margn-left: 550px; ">
                <div>Manage Users</div>
                    <!--<form method="POST" action="fetch" class="fetch">-->
                    <table  class="bordered" style="    margin-left: 215px;margin-top: -505px;">
                        <tr>

                            <th >SN</th>
                            <th>Username</th>

                            <th>Phone Number</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Delete</th>


                        </tr>

                        <%
                            Registration s1 = new Registration(session);
                            ArrayList<student> ar = s1.getuserdata();

//                            ArrayList<User> mydata = (ArrayList) ar;
                            Iterator<student> itr = ar.iterator();
                            while (itr.hasNext()) {
                                student s = itr.next();%> 
                        <tr>
                            <td align="center" ><%=s.getId()%></td>  
                            <td align="center" ><%=s.getName()%></td> 
                            <td align="center" ><%=s.getphone()%></td> 
                            <td align="center" ><%=s.getemail()%></td>

                            <td align="center" ><%=s.getpassword()%></td>
                            <td>
                                <form action="deleteadmin" method="POST">
                                    <input type="hidden" name="userid" value="<%=s.getId()%>"/>
                                    <input type="submit" class="btn btn-danger" value="Delete" />
                                </form>
                            </td>
                        </tr>
                        <%}%> 




                    </table>
                    <!--<input type="submit" value="Refresh" name="fetch"></form>-->

                </div>
            </div>
            <!--admin contend-->
        </div>

    </body>
</html>