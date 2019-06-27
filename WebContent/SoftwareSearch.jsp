<%@page import = "java.sql.Connection" %>
<%@page import = "computer.dbConnection" %>
<%@page import = "java.sql.DriverManager" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Software</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body style= "background-color:#f1f1f1">
<% 
	dbConnection db = new dbConnection();
	Connection conn = db.getConnection();
	if(conn == null)
		out.print("Connection fail");
	else{
%>	
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
        <li><a href="Hardware.jsp">Hardware</a></li>
        <hr>
        <li><a href="Contact&About.html">Contact Us</a></li>
        <hr>
        <li><a href="Contact&About.html">About Us</a></li>
        <hr>
        <li><a href="Payment.jsp">Payment</a></li>
        <hr>

	</ul>
	<img id="image9" aligan="left"src="lenovo1.jpg" alt="Image">
<h1>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Software Spare Part</h1>
<div >
                <table id="table1" >

                    <tr>
                        <td><b>Product name </b></th>
                
                        <td><b>Modular type</b></th>
                   
                        <td><b>expired Date </b></th>
                      
                        <td><b>Price </b></th>
                  
                        <td><b>Available Amount</b></th>
                     </tr>
          <%   
          		ResultSet re = null;
          		response.setContentType("text/html");
				String name= request.getParameter("name");
    			PreparedStatement st = conn.prepareStatement("select* from software where name like '%"+name+"%'");
				//st.setString(1, "%"+name+"%");
                re = st.executeQuery();
				while(re.next()){
				
		  %> 
                     <tr>
                     	<td><%=re.getString("name") %></td>
						<td><%=re.getString("modularTYPE") %></td>
						<td><%=re.getString("expiredDate") %></td>
						<td><%=re.getString("price") %></td>
						<td><%=re.getString("availableAmount") %></td>

                     </tr>
				</table>
			<%} %><br><br><br><br><br><br>

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
<%} %>
</body>
</html>