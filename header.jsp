<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Header Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>


    <style>
        ul {
            list-style-type: none;
            width:100%;
            margin:0;
            padding:0px;
            overflow: hidden;
           background-color:#141d2a;}
        

        li {
            float: right;
        }
        li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 5px;
            text-decoration: none;
        }
        .uname{
            margin-top: 20px;
          color: #081a82;
            margin-right: 10px;
            font-size: larger;
        }
       
        .input-group {
            position: relative;
            display: -webkit-inline-box;
            border-collapse: separate;
            padding:20px; 
                
              
            
        }
        .error{
            color:red;
        }
        input[type=search]::-webkit-search-cancel-button {
    -webkit-appearance: searchfield-cancel-button;
}.dropbtn {
            background-image: linear-gradient( 179deg, #ff4133, #ab08c7);
            color: white;
            padding: 7px;
            font-size: 13px;
            margin-left: 940px;
            border: none;
            margin-top: 15px;
            width: 7%;
            overflow: hidden;
        }

        /* The container <div> - needed to position the dropdown content */
        .dropdown {
            position: absolute;
            display: inline-block;
           
        }

        /* Dropdown Content (Hidden by Default) */
        .dropdown-content {
            display: none;
            position: fixed;
             background-image: linear-gradient( 179deg, #ff4133, #ab08c7);
            min-width: 140px;
            margin-left: 900px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
            margin-top: -6px;
        }

        /* Links inside the dropdown */
        .dropdown-content a {
            color: black;
            padding: 6px 7px;
            text-decoration: none;
            display: block;
        }

        /* Change color of dropdown links on hover */
        .dropdown-content a:hover {background-color: #ddd;}

        /* Show the dropdown menu on hover */
        .dropdown:hover .dropdown-content {display: block;}

        /* Change the background color of the dropdown button when the dropdown content is shown */
        .dropdown:hover .dropbtn {background-color: #f9be19;}
.hero {
  height: calc(100vh - 80px);
  background-image: url(img/1.jpg);
  background-position: center;
}
.shadows {
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
}
.shadows:hover {
    text-shadow: -16px 6px 15px #ced0d3;
}
 

    </style>
    <body style="margin: 0;">

        <ul>

            <% if (session.getAttribute("uname") != null) {%>

            <li class="shadows" ><br><b><i class="fa fa-user-circle" aria-hidden="true" style="margin-right: 5px;color: #f5f5f5;"></i><%=session.getAttribute("uname")%></b></li>
            <li><a href="register?logout=yes"><button type="button"  class="btn btn-info" style=" background-image: linear-gradient(179deg, #ff4133, #ab08c7);">Logout</button></a><span></span><span></span><span></span><span></span></li>
            <li><a href="EditForm.jsp"><button type="button" class="btn btn-info" style=" background-image: linear-gradient( 179deg, #ff4133, #ab08c7);">Edit</button></a></li>
           
            <li><a href="Cart.jsp"><button type="button"  class="btn btn-info" style=" background-image: linear-gradient( 179deg, #ff4133, #ab08c7);">Cart<i class="fa" style="font-size:15px">&#xf07a;</i></button></a><span></span><span></span><span></span><span></span>
            </li>
            <% if (session.getAttribute("id").equals("1")) {%>
             <li class="dropdown">
                 <a><button class="dropbtn">Search<i class="fas fa-angle-double-down"></i></button></a><span></span><span></span><span></span><span></span>
                <i class="dropdown-content">
                    <a href="search1.jsp"> Search by ID </a>
                    <a href="adminorder.jsp"> Search By Status </a>
                    <a href="EditForm.jsp"> Edit </a>
                    <a href="Cart.jsp"> Cart </a>
                    <a href="myorders.jsp"> My Orders </a>

                </i>
            </li>
                            <%}%>

            <%} else {%>

            
            <li><a href="login.jsp"><button type="button"  class="btn btn-info" style=" background-image: linear-gradient( 179deg, #ff4133, #ab08c7);">Login/Register</button></a></li>



            <%}%>

            <li><a class="active" href="index.jsp"><button type="button"  class="btn btn-info" style=" background-image: linear-gradient( 179deg, #ff4133, #ab08c7);">Home</button></a></li>

           



            <li style="float:left"><img style=" vertical-align: middle; border-style: none;width: 26%" src="images/Picture1.jpg"></li>

            <form action="register" method="POST" >
                <div  class="  input-group" >
          
                    <input type="search" class="form-control rounded" id="validationDefault01"  required placeholder="Search" aria-label="Search" aria-describedby="search-addon" name="categoryname" />
                    <button  for="validationDefault01" type="submit" class="btn btn-info" style=" background-image: linear-gradient( 179deg, #ff4133, #ab08c7);"  name="submit1">search</button>
              
                </div>
              
            </form>
        </ul>

    </body>
</html>