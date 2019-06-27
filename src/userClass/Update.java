package userClass;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;

import computer.dbConnection;

public class Update {
	
	
	public static boolean connectUserTable(String email,String name,String ePassword,String location,String country,String gender)throws SQLException, ClassNotFoundException{
		boolean status=false; 
		try{
			
			dbConnection db = new dbConnection();
			Connection conn = db.getConnection(); 
			PreparedStatement st = conn.prepareStatement("UPDATE  user set ePassword=?, name=?, location=?, country=?, gender=? WHERE  email='"+name+"'");
			st.setString(1, email);
			st.setString(2, ePassword);
			st.setString(3, name);
			st.setString(4, location);
			st.setString(5, country);
			st.setString(6, gender);
			st.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}  
		return status;
	}
}
