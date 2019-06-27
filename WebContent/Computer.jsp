<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Computer</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body= "background-color:#f1f1f1">
	
   <ul >
    	<li><img id="image8" align="left" src="Logo.png" alt="Image"></li>
    	</br></br></br></br></br></br></br></br></br></br></br></br>
        <li><a class="active" href="MainPage.html">Home</a></li>
        <li><a href="UserRegister.jsp">User Register</a></li>
        <hr>
        <li><a href="Login.jsp">Login</a></li>
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
	<img id="image10" aligan="left"src="lenovo2.png" alt="Image">
<h1>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;World Famous Computer's </h1>
<div >
	<form  name="myForm" action= "ComputerServlet" method="post" >

                <table id="table1" >

                    <tr>
                        <th><b>Product name &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="name" ></th>
                    </tr>

                    <tr>
                        <th><b>Processor &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="processor" ></th>
                    </tr>

                    <tr>
                        <th><b>RAM size&nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="RAMsize" ></th>
                    </tr>
                    
                    <tr>
                        <th><b>System type&nbsp;&nbsp;&nbsp;&nbsp; </b></th>
                        <th><input id="text1" type="text" name="systemTYPE" ></th>
                    </tr>

                    <tr>
                        <th><b>Price &nbsp;&nbsp;&nbsp;&nbsp;</b></th>
                        <th><input id="text1" type="text" name="price" ></th>
                    </tr><br><br>
                </table>
				<table style="margin-left:600px">
					<tr>
						<th><button style="margin-right:50px" name="action" type="Reset" VALUE="Reset">Reset</th>
						<th><button style="margin-right:50px" name="action" type="Add" VALUE="AddServlet">Add</button></th>
						<th><button style="margin-right:50px" name="action" type="Update" VALUE="UpdateServlet">Update</button></th>
						<th><button style="margin-right:50px" name="action" type="View" VALUE="ViewServlet">View</button></th>		
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
    <form id="search-form" name="search" action="ComputerSearch.jsp" method="get">
    		<li id="li1" ><input  type="text" name="search"style= " margin-top: 10px;"><button id="bu1" ><img id="image4" src="search.png"></button></li>
    </form>
</div>

</body>
</html>