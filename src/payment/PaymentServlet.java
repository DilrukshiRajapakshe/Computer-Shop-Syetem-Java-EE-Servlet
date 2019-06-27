package payment;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import computer.dbConnection;


/**
 * Servlet implementation class PaymentServlet
 */
@WebServlet("/PaymentServlet")
public class PaymentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
		

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		try {	
			
			response.setContentType("text/html");
			String email= request.getParameter("email");
			String pId = request.getParameter("pId");
			String pName = request.getParameter("pName");
			String price = request.getParameter("price");
			String Count = request.getParameter("Count");
			String location = request.getParameter("location");
			String action = request.getParameter("action");
			
			if("AddServlet".equals(action)){
				dbConnection db = new dbConnection();
				Connection conn = db.getConnection();
				Statement st = conn.createStatement();
				double total =  Double.parseDouble(price)*Double.parseDouble(Count);
				st.executeUpdate("Insert into payment (email,pId,pName,price,Count,amount,location,total) values('"+email+"','"+pId+"','"+pName+"','"+price+"','"+Count+"','"+location+"','"+total+"')");
				response.sendRedirect("MainPage.html");
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}
		out.close(); 
	}

}
