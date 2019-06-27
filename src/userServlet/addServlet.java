package userServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import computer.dbConnection;
import userClass.Update;


/**
 * Servlet implementation class addServlet
 */
@WebServlet("/addServlet")
public class addServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		try {	
			
			response.setContentType("text/html");
			String email= request.getParameter("email");
			String ePassword = request.getParameter("ePassword");
			String name = request.getParameter("name");
			String location = request.getParameter("location");
			String country = request.getParameter("country");
			String gender = request.getParameter("gender");
			String action = request.getParameter("action");
			
			if("AddServlet".equals(action)){
				dbConnection db = new dbConnection();
				Connection conn = db.getConnection();
				Statement st = conn.createStatement();
				st.executeUpdate("Insert into user (email,ePassword,name,location,country,gender) values('"+email+"','"+ePassword+"','"+name+"','"+location+"','"+country+"','"+gender+"')");
				response.sendRedirect("MainPage.html");
			}
			if("UpdateServlet".equals(action)){
				response.setContentType("text/html");
				if(Update.connectUserTable(email, name, ePassword, location, country, gender)){
					RequestDispatcher rd=request.getRequestDispatcher("MainPage.html");  
			        rd.include(request,response);  	
				}
				else{
					RequestDispatcher rd=request.getRequestDispatcher("UserRegister.html");  
			        rd.include(request,response);  
				}	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		out.close(); 
	}
	
}
