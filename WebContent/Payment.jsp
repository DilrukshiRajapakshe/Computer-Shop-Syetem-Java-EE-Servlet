<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body style= "background-color:#f1f1f1">
	
   <ul >
    	<li><img id="image8" align="left" src="Logo.png" alt="Image"></li>
    	</br></br></br></br></br></br></br></br></br></br></br></br>
        <li><a class="active" href="MainPage.html">Home</a></li>
        <li><a href="UserRegister.jsp">User Register</a></li>
        <hr>
        <li><a href="Login.jsp">Login</a></li>
        <hr>
        <li><a href="Computer.jsp">Computer</a></li>
        <hr>
        <li><a href="Software.jsp">Software</a></li>
        <hr>
        <li><a href="Contact&About.html">Contact Us</a></li>
        <hr>
        <li><a href="Contact&About.html">About Us</a></li>
        <hr>

	</ul>
	<img id="image11" aligan="left"src="lenovo8.png" alt="Image">
<h1>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Hardware Spare Part</h1>
<div >
	<form  name="myForm" action= "PaymentServlet" method="post" >

                <table id="table1" >

                    <tr>
                        <th><b>Customer Email address &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="email" ></th>
                    </tr>

                    <tr>
                        <th><b>Product ID&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="pId" ></th>
                    </tr>

                    <tr>
                        <th><b>Product Name&nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="pName" ></th>
                    </tr>
                    
                    <tr>
                        <th><b>Price&nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="price" ></th>
                    </tr>
					<tr>
                        <th><b>Count&nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="Count" ></th>
                    </tr>
                    <tr>
                        <th><b>Location&nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="location" ></th>
                    </tr>
                    <br><br>
               </table>
					<table style="margin-left:700px">
					<tr>
						<th><button style="margin-right:50px" name="action" type="Reset" VALUE="Reset">Reset</th>
						<th><button style="margin-right:50px" name="action" type="Add" VALUE="AddServlet">Add</button></th>
						<th><button style="margin-right:50px" name="action" type="View" VALUE="UpdateServlet">View</button></th>		
					</tr>
				</table>
    			
   </form><br>
	<div class="box5">
        <a href="/ /"><img id="image3"src="1.png" ></a>
    </div>
    <div class="box">
        <a href="/ /"><img id="image3" src="2.png" ></a>
    </div>
    <div class="box">
        <a href="/ /"><img id="image3"src="3.png" ></a>
    </div>
    <div class="box">
        <a href="/ /"><img id="image3" src="4.png" ></a>
    </div>
    <div class="box">
        <a href="/ /"><img id="image3"src="8.png" ></a>
    </div>
    <div class="box">
        <a href="/ /"><img id="image3" src="6.png" ></a>
    </div>
    <div class="box">
        <a href="/ /"><img id="image3" src="7.png" ></a>
    </div>
    <div class="box3">
        <a href="/ /"><img id="image5" src="5.png" ></a>
    </div>
    <form id="search-form" name="search" action="/products" method="get">
    		<li id="li1" ><input  type="text" name="search"style= " margin-top: 10px;"><butten style= "margin:10px;"><img id="image4" src="search.png"></butten></li>
    </form>
</div>

</body>
</html>