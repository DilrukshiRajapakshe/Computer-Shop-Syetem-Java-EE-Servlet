<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User register</title>
<script language ="javascript" type="text/javascript" src ="Form.js"></script>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body >
 <ul >
    	<li><img id="image8" align="left" src="Logo.png" alt="Image"></li>
    	</br></br></br></br></br></br></br></br></br></br></br></br>
        <li><a class="active" href="MainPage.html">Home</a></li>
        <li><a href="Login.jsp">Login & Logout</a></li>
        <hr>
        <li><a href="Computer.jsp">Computer</a></li>
        <hr>
        <li><a href="UpdateUser.jsp">UpDate User</a></li>
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
	<img id="image12" aligan="left"src="lenovo4.png" alt="Image">
<h1>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User Ragistation</h1>
<div >
	<form  name="myForm" action= "addServlet" onsubmit="return formValidate()" method="post">

           <table id="table1" >

                    <tr>
                        <th><b>Email  &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="email" ></th>
                    </tr>

                    <tr>
                        <th><b>Email Password &nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="ePassword" ></th>
                    </tr>
                    
                    <tr>
                        <th><b>Name &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="name" ></th>
                    </tr>
                    
                    <tr>
                        <th><b>Country &nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="country" ></th>
                    </tr>

                    <tr>
                        <th><b>Location  &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="location" ></th>
                    </tr>
                    <tr>
						<th>Gender</th>
						<th><input type="radio" name="gender" value="male"checked="checked" tabindex="1" /> Male<input type="radio" name="gender" value="female"tabindex="2" /> Female</th>
					</tr>
				</table>
				<table style="margin-left:700px">
					<tr>
						<th><button style="margin-right:50px" name="action" type="Reset" VALUE="Reset">Reset</th>
						<th><button style="margin-right:50px" name="action" type="Add" VALUE="AddServlet"onclick="formValidate()">Add</button></th>
						<th><button style="margin-right:50px" name="action" type="Update" VALUE="UpdateServlet">Update</button></th>		
					</tr>
				</table>		
   </from>
   
	<div class="box15">
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