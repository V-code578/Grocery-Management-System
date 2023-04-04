<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
            *{
                margin:0;
                padding:0;
                box-sizing: border-box;
            }
             body{
                background-image:  url("images/adminuser.jpeg");
                background-repeat: no-repeat;
                background-size: 1650px;
            }
            
            .admin-wrapper .admin-content{
                flex: 8;
                height: 100%;
                padding: 40px 100px 100px;
                overflow-y: scroll; 

            }
            
            a{
    color: #d52e3f;
    text-decoration: none;
    font-family: 'Niconne', cursive;
    font-size: 1.2rem;

}
            
            .admin-content .page-title{
                text-align: center;
                margin-bottom: 1.5rem;

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

                     body{
                margin:0;
                padding:0;
               font-family: 'Poppins', sans-serif;
               
              
              
            }
            .Login_box{
                width:692px;
                position:absolute;
                top:55%;
                left:50%;
                    font-size: 136%;
                transform: translate(-50%,-50%);
                color:white;
                 max-width: 463px;
                border-radius: 95px 10px;
            
                 background-color: #f2f2b5cc;
                box-sizing: border-box;
                padding: 63px;
               font-family: 'Niconne', cursive;
                margin-top: 100px;
                
                
            }
            .Login_box h1{
                float:left;
                font-size:20px;
                border-bottom: 6px solid #35475e;
                margin-bottom: 50px;
                padding: 13px 0;
                color: black;
                font-family: 'Niconne', cursive;
            }
           .textbox{
                width: 100%;
                overflow:hidden;
                font-size:20px;
                padding:8px 0;
                margin:8px 0;
                border-bottom: 1px solid #35475e;
                    
            }
            .textbox i{
                width:26px;
                float:left;
                text-align: center;
                
            }
            .textbox input{
                border:none;
                outline:none;
                background: none;
                color: #35475e ;
                font-size: 18px;
                width:80%;
                float:left;
                margin: 0 10px;
                
            }

            .print {
     background: #e5d0ce00;
            padding: 10px;
            width: 17%;
            color: #e91e63;
            font-weight: bold;
/*            align-content: center;*/
margin-left: 560px;
font-size: 150%;
}
            img{
                 width:108px;
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
                 <div class="print">
                 <% if (request.getAttribute("status") != null) {%>  
                <b>   <%= request.getAttribute("status")%> </b>
                <%}%>
            </div>
              
 <div class="Login_box">
            <h1>ADD PRODUCT</h1>
            
      <form action="addproduct" class="frm" method="POST">
          <div class="textbox">
               
              <input type="text" placeholder="Enter name of the product" name="name" value="" required>
            </div>
           <div class="textbox">
               
              <input type="text" placeholder=" Enter image file" name="image" value="" required>
            </div>
            <div class="textbox">
               
                <input type="number" placeholder=" Enter cost" name="cost" value="" required>
            </div>
           <div class="textbox">
               
                <input type="text" placeholder="Enter details of product" name="detail" value="" required>
            </div>
              
           <div class="textbox">
               
                <input type="text" placeholder="Enter catagory of product" name="catagory" value="" required>
            </div>
       
             <input class="btn" type="submit" name="submit" value="Add" style="background-image: linear-gradient( 179deg, #a6b2f2, #00bcd4);color: black;">
      
         
      
      </form>
       </div>                           
        </div>
              </div>
    </body>
</html>