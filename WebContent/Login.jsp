<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page & Logout Page</title>
<script language ="javascript" type="text/javascript" src ="Form.js"></script>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body style= "background-color:#f1f1f1">
	
   <ul >
    	<li><img id="image8" align="left" src="Logo.png" alt="Image"></li>
    	</br></br></br></br></br></br></br></br></br></br></br></br>
        <li><a class="active" href="MainPage.jsp">Home</a></li>
        <li><a href="Computer.jsp">Computer</a></li>
        <hr>
        <li><a href="UserRegister.jsp">User Register</a></li>
        <hr>
        <li><a href="UpdateUser.jsp">Update user</a></li>
        <hr>
        <li><a href="Login.jsp">Logout & Logout</a></li>
        <hr>
        <li><a href="Software.jsp">Software</a></li>
        <hr>
        <li><a href="Hardware.jsp">Hardware</a></li>
        <hr>
        <li><a href="Contact&About.html">Contact Us</a></li>
        <hr>
        <li><a href="Contact&About.html">About Us</a></li>
        <hr>
        <li><a href="Payment.jsp">Payment</a></li>
        <hr>
	</ul>
	<img id="image12" aligan="left"src="lenovo5.jpg" alt="Image">
	
	<h1>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Login</h1>
	
	<form action= "loginServlet"  name="myForm" onsubmit="return formValidate()" method="post"><br/>
        <table id="table1">
			<tr>
				<th><h1>${message}</h1></th>
				<th></th>
			</tr>
            <tr>
                <th><b>Email&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                <th><input id="text1" type="text"  name="email" ></th>
            </tr>
            <tr>
                <th><b>Email password&nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                <th><input id="text1" type="password" name="ePassword"></th>
            </tr>
            <tr>
                <th><button  type="Login" name="Login" value="Login" onclick="formValidate()" >Login</button></th>
                <th><a href="UserRegister.jsp">User Register</a></th>
            </tr>
        </table>
    </form>
	<div >	
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
	   
	</div>
</body>
</html>