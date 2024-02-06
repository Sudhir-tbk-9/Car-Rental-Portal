package retal.steer.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import AuthenticationAndConnection.ConnectionJDBC;

public class SteerLoginDao {
	
		public static int result ;
		static Connection conn = ConnectionJDBC.getDBConnection();
	
//=============================================================
	public  String checkPhoneNoInDB(String passedPhone) {
		try {
		CallableStatement call = conn.prepareCall("call check_For_Phone(?)");
		call.setString(1 , passedPhone);
		
	 	ResultSet rs = call.executeQuery() ;
//	 	System.out.println("SQL Query: " + call.toString());

	 	if (rs.next()) {
	 		
	 		return rs.getString("Mobile_No") ;
	 	}
	 	
		}catch(SQLException exp) {
			// TODO Auto-generated catch block
			exp.printStackTrace();
		}
		return null ;
	}
	
//	============================================================
	public String getPasswordFromTab(String passedPhone) {
		try {
			CallableStatement call = conn.prepareCall("call getPasswordByphone(?)");
			call.setString(1 , passedPhone);
			
		 	ResultSet rs = call.executeQuery() ;
//		 	System.out.println("SQL Query: " + call.toString());

		 	if (rs.next()) {
		 	
		 		return rs.getString("Password") ;
		 	}
		 	
			}catch(SQLException exp) {
				// TODO Auto-generated catch block
				exp.printStackTrace();
			}
			return null ;
		
		
	}
	
//	============================================================
	public String getNameByPhone(String storedPhone) {
		try {
			CallableStatement call = conn.prepareCall("call getNameByPhone(?)");
			call.setString(1 , storedPhone);
			
		 	ResultSet rs = call.executeQuery() ;
//		 	System.out.println("SQL Query: " + call.toString());

		 	if (rs.next()) {
		 	
		 		return rs.getString("Name") ;
		 	}
		 	
			}catch(SQLException exp) {
				// TODO Auto-generated catch block
				exp.printStackTrace();
			}
			return null ;
		
		
	}
	
//	=============================================================
	public String matchRolefromDB(String passedPhone) {
		
		try {
			CallableStatement call = conn.prepareCall("call getRoleByphone(?)");
			call.setString(1 , passedPhone);
			
		 	ResultSet rs = call.executeQuery() ;
		 	
		 	if (rs.next()) {
//		 		System.out.println("Role from DB: " + rs.getString("Role"));

		 		return rs.getString("Role") ;
		 	}
		 	
			}catch(SQLException exp) {
				// TODO Auto-generated catch block
				exp.printStackTrace();
			}
			return null ;
		
	}
//+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++

}
