package Login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import computer.dbConnection;

public class login {  
	
	public static boolean validate(String email,String ePassword){  
		boolean status=false;  
		try{  
			
				ResultSet resultSet = null;

				dbConnection db = new dbConnection();
				Connection conn = db.getConnection();    
				PreparedStatement statement=conn.prepareStatement(  "select* from user where email=? and ePassword=?");  
				statement.setString(1,email);  
				statement.setString(2,ePassword); 
				resultSet = statement.executeQuery();

				while(resultSet.next()){
					resultSet.getString("email");
					resultSet.getString("ePassword");
					resultSet.getString("name");
					resultSet.getString("location");
					resultSet.getString("country");
					resultSet.getString("gender");
					
				}
				
      
				ResultSet rs=statement.executeQuery();  
				status=rs.next();  
          
		}catch(Exception e){
			System.out.println(e);
		}  
		return status;  
	}  
}  
