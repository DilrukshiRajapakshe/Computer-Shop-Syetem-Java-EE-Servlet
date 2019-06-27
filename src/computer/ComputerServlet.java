package computer;

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


@WebServlet("/ComputerServlet")
public class ComputerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {	
			
			response.setContentType("text/html");
			String name= request.getParameter("name");
			String processor = request.getParameter("processor");
			String RAMsize = request.getParameter("RAMsize");
			String systemTYPE = request.getParameter("systemTYPE");
			String price = request.getParameter("price");
			String action = request.getParameter("action");
			
			if("AddServlet".equals(action)){
				dbConnection db = new dbConnection();
				Connection conn = db.getConnection();
				Statement st = conn.createStatement();
				st.executeUpdate("Insert into computer (name,processor,RAMsize,systemTYPE,price) values('"+name+"','"+processor+"','"+RAMsize+"','"+systemTYPE+"','"+price+"')");
				response.sendRedirect("MainPage.html");
			}
			else if("UpdateServlet".equals(action)){
				response.setContentType("text/html");
				if(Update.connectComputerTable(name,processor, RAMsize, systemTYPE, price)){
					RequestDispatcher rd=request.getRequestDispatcher("Computer.jsp");  
			        rd.include(request,response);  	
				}
				else{
					RequestDispatcher rd=request.getRequestDispatcher("Computer.jsp");  
			        rd.include(request,response);  
				}	
			}
			else if("ViewServlet".equals(action)){
				response.setContentType("text/html");
				
					RequestDispatcher rd=request.getRequestDispatcher("ComputerView.jsp");  
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


