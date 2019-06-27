package computer;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Update {
	public static boolean connectComputerTable(String name,String processor,String RAMsize,String systemTYPE,String price)throws SQLException, ClassNotFoundException{
		boolean status=false; 
		try{
			
			dbConnection db = new dbConnection();
			Connection conn = db.getConnection(); 
			PreparedStatement st = conn.prepareStatement("UPDATE  computer set processor=?, RAMsize=?, systemTYPE=?, price=? WHERE  name=?");
			st.setString(1, name);
			st.setString(2, processor);
			st.setString(3, RAMsize);
			st.setString(4, systemTYPE);
			st.setString(5, price);
			
			st.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}  
		return status;
	}
}
