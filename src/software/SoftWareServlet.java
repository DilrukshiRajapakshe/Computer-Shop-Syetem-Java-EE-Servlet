package software;

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


/**
 * Servlet implementation class SoftWareServlet
 */
@WebServlet("/SoftWareServlet")
public class SoftWareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {	
			
			response.setContentType("text/html");
			String name= request.getParameter("name");
			String modularTYPE = request.getParameter("modularTYPE");
			String expiredDate = request.getParameter("expiredDate");
			String price = request.getParameter("price");
			String availableAmount = request.getParameter("availableAmount");
			String action = request.getParameter("action");
			
			if("AddServlet".equals(action)){
				dbConnection db = new dbConnection();
				Connection conn = db.getConnection();
				Statement st = conn.createStatement();
				st.executeUpdate("Insert into software (name,modularTYPE,expiredDate,price,availableAmount) values('"+name+"','"+modularTYPE+"','"+expiredDate+"','"+price+"','"+availableAmount+"')");
				response.sendRedirect("MainPage.html");
			}
			else if("UpdateServlet".equals(action)){
				response.setContentType("text/html");
				if(Update.connectSoftwareTable(name,modularTYPE, expiredDate, price, availableAmount)){
					RequestDispatcher rd=request.getRequestDispatcher("Software.jsp");  
			        rd.include(request,response);  	
				}
				else{
					RequestDispatcher rd=request.getRequestDispatcher("Software.jsp");  
			        rd.include(request,response);  
				}	
			}
			else if("ViewServlet".equals(action)){
				response.setContentType("text/html");
				RequestDispatcher rd=request.getRequestDispatcher("SoftwareView.jsp");  
			    rd.include(request,response);  	
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			
			e.printStackTrace();
		}
		out.close(); 
	}
}
