package computer;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.DriverManager;
public class dbConnection {
	public Connection getConnection(){
		try{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/oop","root","");
			
			return conn;
		}catch(ClassNotFoundException e){
			e.printStackTrace();
			return null;
		}catch(SQLException e){
			e.printStackTrace();
			return null;	
		}
		
	}
}
