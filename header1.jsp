<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Untitled</title>

        <!--   <link rel="stylesheet"  href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.0.3/css/font-awesome.css">
        <link rel="stylesheet"  href="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js">

    </head>
    <style>
a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}

        .navbar {
            overflow: hidden;
            background-color: #141d2a;

        }

        /* Links inside the navbar */
        .navbar a {
            float:right;
            font-size: 16px;
            color: #fff;
            text-align: center;
            padding: 5px 15px;
            text-decoration: none;
        }

        /* The dropdown container */
        .dropdown {
            float: right;
            overflow: hidden;
        }

        /* Dropdown button */
        .dropdown .button  {
        

            font-size: 16px;
            border: none;
            outline: none;
            color: white;
            padding: 5px 15px;
               background-color: #e91e63;
            font-family: inherit; /* Important for vertical align on mobile phones */
            margin: 0; /* Important for vertical align on mobile phones */
        }

        /* Add a red background color to navbar links on hover */
        /*.navbar a:hover, .dropdown:hover .dropbtn {
          background-color: red;
        }*/

        /* Dropdown content (hidden by default) */
        .dropdown-content {
            display: none;
            position: fixed;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            float: none;
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            text-align: left;
        }

        /* Add a grey background color to dropdown links on hover */
        .dropdown-content a:hover {
            background-color: #ddd;
        }

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {
            display: block;
        }

        .shadows { 
            float: right;
            position: relative;
            text-transform: uppercase;
            text-shadow: -5px 10px 9px #ced0d3;
            color: white;
            letter-spacing: -0.05em;
            font-family: 'Anton', Arial, sans-serif;
            user-select: none;
            text-transform: uppercase;
            font-size: 21px;
            transition: all 0.25s ease-out;
            margin-top: -15px;
            margin-right: 28px;
        }
        .shadows:hover {
            text-shadow: -16px 6px 15px #ced0d3;
        }

        .uname{
            margin-top: 20px;
            color: #081a82;
            margin-right: -10px;
            font-size: larger;
        }
        .input-group {
            position: relative;
            display: -webkit-inline-box;
            border-collapse: separate;
            margin-left: 10%;
            margin-top: 1%;

        }
        
        .button {
            margin-top: 15px;
                margin-left: 0.5%;
  padding: 12px 20px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
     background-color: #e91e63;
  border: none;
  border-radius: 5px;
  box-shadow: 0 6px #999;
}

.button:hover {background-image: linear-gradient( 179deg, #ff4133, #ab08c7);}

.button:active {
  background-color: #3e8e41;
  box-shadow: 0 0px #666;
  transform: translateY(3px);
}
        
        
        
    </style>
    <body>
        <div class="navbar">




            <% if (session.getAttribute("uname") != null) {%>
            <div class="shadows" style="    margin-top: 1%; margin-left: 0.5%;"><b style="color: white;"><i class=" fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;color: #fff;"></i><%=session.getAttribute("uname")%></b></div>


            <a class="button" href="EditForm.jsp">Edit</a>
            <a class="button" href="register?logout=yes">Logout</a>
            <div class="dropdown" style="    margin-left: 0.5%;">
                <button class="button" style="color:#fff; font-family: 'Niconne', cursive;margin-top: 15px;">Cart<i class="fa fa-caret-down"></i></button><br><br>
                <div class="dropdown-content">
                    <a href="Cart.jsp">Cart</a>
                    <a href="myorders.jsp">My Orders</a>

                </div>
            </div>
            <% if (session.getAttribute("id").equals("1")) {%>
            <div class="dropdown" style="    margin-left: 0.5%;">
                <button class="button" style="color:#fff;font-family: 'Niconne', cursive;margin-top: 15px;">Search
                    <i class="fa fa-caret-down"></i>
                </button><br><br>
                <div class="dropdown-content">
                    <a href="search1.jsp " >Search by ID </a>
                    <a href="adminorder.jsp">Search By Status</a>

                </div>
            </div>
            <a class="button" href="adminuserindex.jsp">Admin</a>
            <%}%>
            <%} else {%>
            <a class="button" href="login.jsp">Login/Register</a>
            <%}%>
            <a class="button" href="index.jsp" style="  float:right;">Home</a>
            <img style="float:left; vertical-align: middle; border-style: none; width: 7% ;margin-left: 0" src="images/Picture1.jpg">
            <form action="register" method="POST" >
                <div  class="input-group" >

                    <input type="search" class="form-control rounded" id="validationDefault01"  required placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="categoryname"  />
                    <button  for="validationDefault01" type="submit" class="btn btn-info"   name="submit1" style=" background-image: linear-gradient( 179deg, #ff4133, #ab08c7);color:#fff;font-family: 'Niconne', cursive;">search</button>

                </div>

            </form>

        </div>



    </body>
</html>