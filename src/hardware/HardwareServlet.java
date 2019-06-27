package hardware;

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
 * Servlet implementation class HardwareServlet
 */
@WebServlet("/HardwareServlet")
public class HardwareServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {	
			
			response.setContentType("text/html");
			String name= request.getParameter("name");
			String modularTYPE = request.getParameter("modularTYPE");
			String memory = request.getParameter("memory");
			String price = request.getParameter("price");
			String availableAmount = request.getParameter("availableAmount");
			String action = request.getParameter("action");
			
			if("AddServlet".equals(action)){
				dbConnection db = new dbConnection();
				Connection conn = db.getConnection();
				Statement st = conn.createStatement();
				st.executeUpdate("Insert into hardware (name,modularTYPE,memory,price,availableAmount) values('"+name+"','"+modularTYPE+"','"+memory+"','"+price+"','"+availableAmount+"')");
				response.sendRedirect("MainPage.html");
			}
			else if("UpdateServlet".equals(action)){
				response.setContentType("text/html");
				if(Update.connectHardwareTable(name,modularTYPE, memory, price, availableAmount)){
					RequestDispatcher rd=request.getRequestDispatcher("HardwareView.jsp");  
			        rd.include(request,response);  	
				}
				else{
					RequestDispatcher rd=request.getRequestDispatcher("Hardware.jsp");  
			        rd.include(request,response);  
				}	
			}
			else if("ViewServlet".equals(action)){
				response.setContentType("text/html");
				RequestDispatcher rd=request.getRequestDispatcher("HardwareView.jsp");  
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
