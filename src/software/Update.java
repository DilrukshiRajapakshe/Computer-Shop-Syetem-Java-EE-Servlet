package software;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import computer.dbConnection;

public class Update {
	public static boolean connectSoftwareTable(String name,String modularTYPE,String expiredDate,String price,String availableAmount)throws SQLException, ClassNotFoundException{
		boolean status=false; 
		try{
			
			dbConnection db = new dbConnection();
			Connection conn = db.getConnection(); 
			PreparedStatement st = conn.prepareStatement("UPDATE  hardware set modularTYPE=?, expiredDate=?, price=?, availableAmount=? WHERE  name=?");
			st.setString(1, name);
			st.setString(2, modularTYPE);
			st.setString(3, expiredDate);
			st.setString(4, price);
			st.setString(5, availableAmount);
			
			st.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}  
		return status;
	}
}
