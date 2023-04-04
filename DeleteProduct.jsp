<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Dproduct"%>
<%@page import="model.Registration"%>
<html>
    <meta charset="UTF-8">
    <title>Delete Product</title>
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
              margin-left: 104px;

        }

        .admin-content .page-title{
            text-align: center;
            margin-bottom: 1.5rem;
            font-family: 'Niconne', cursive;


        }
        
        body{
                background-image:  url("images/adminuser.jpeg");
                background-repeat: repeat;
                background-size: 1700px;
            }
        
        a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
        .admin-wrapper .admin-content table{
            
            width: 80%;
            border-collapse: collapse;
            font-size: 27.1rem;
            background-color: #f2f2b5cc;
            border-right: 45px 59px;
        }
        .admin-wrapper .admin-content th, td{
          
            padding: 15px;
            text-align: left;
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
        .deletep.btn-group .button{

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
        }
        tr{
            font-size: 18px;
        }
        td{
            font-size: 14px;
        }
        img{
            width:105px;
            margin-left: 7px;
        }
         th {
                background-image: linear-gradient( 
                    180deg, #6877c8b3, #00bcd442);
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
          <li>
      <a href="adminuserindex.jsp" style="text-decoration: none;
    font-family: ui-rounded;
    font-size: medium;">
        <i class="fa fa-users" aria-hidden="true"></i> Manage users
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

            <div class="content" style="margin-top:-78px;height: 63; margn-left: 550px; ">
                <div>Product Details</div>

                <table>
                    <table class="table table-striped table-hover" style="width: 89%; margin-left:137px; margin-top:-503px;">
                        <thead>
                            <tr>
                                <th>Image</th>
                                <th>Product Name</th>
                                <th>Product Cost</th>
                                <th>Actions</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% int tcost = 0;
                                Registration s1 = new Registration(session);
                                ArrayList<Dproduct> ar = s1.getd_productinfo1();
                                Iterator<Dproduct> itr = ar.iterator();
                                while (itr.hasNext()) {
                                    Dproduct s = itr.next();
                                    tcost = tcost + Integer.parseInt(s.getP_cost());
                            %> 
                            <tr>
                                <td><img style="margin-top: 13%" src="images/<%=s.getP_image()%>"></td>
                                <td style="    padding: 6% 6%;font-size: 91%;"><b><%=s.getP_name()%></b></td>
                                <td style="    padding: 6% 6%;font-size: 91%;"><b><%=s.getP_cost()%>&#8377</b></td>
                                <td style="    padding: 6% 1%;font-size: 91%;">
                                    <form action="addtocart" method="post">
                                        <input type="hidden" name="cid" value="<%=s.getP_id()%>"/>
                                        <!--                                        <button type="submit" name="delete">Delete</button>-->
                                        <input type="submit" class="btn btn-danger" value="Delete" />
                                    </form>
                                </td>
                            </tr>
                            <%}%>
                        </tbody>
                    </table>

            </div>
        </div>
        <!--admin contend-->
    </div>

</body>
</html>