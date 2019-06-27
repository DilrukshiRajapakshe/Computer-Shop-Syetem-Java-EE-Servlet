package Login;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public loginServlet() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();  
		response.setContentType("text/html");
	    String email =request.getParameter("email");  
	    String ePassword =request.getParameter("ePassword");
	    
	          
	    if(login.validate(email, ePassword)){  
	        RequestDispatcher rd=request.getRequestDispatcher("wellComeServlet");  
	        rd.forward(request,response);  
	    }  
	    else{  
	         
	        RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");  
	        rd.include(request,response);  
	    }  
	          
	    out.close();  
	    }  
	

}
