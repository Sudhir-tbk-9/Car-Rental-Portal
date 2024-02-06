package retal.steer.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import AuthenticationAndConnection.ConnectionJDBC;
import steer.UserDto.UserDto;

public class UserDao {

	static Connection conn = ConnectionJDBC.getDBConnection();
	
	public UserDto getUserDetailByPhoneIdDao(long Mobile_No) {
	    try {
	        String query = "SELECT * FROM userauthenticate WHERE Mobile_No = ?";
	        try (PreparedStatement pstmt = conn.prepareStatement(query)) {
	            pstmt.setLong(1, Mobile_No);

	            try (ResultSet rs = pstmt.executeQuery()) {
	                if (rs.next()) {
	                    return new UserDto(
	                            rs.getLong("Mobile_No"),
	                            rs.getString("name"),
	                            rs.getString("Email_Id"),
	                            rs.getString("role"),
	                            rs.getString("password"));
	                }
	            }
	        }
	    } catch (SQLException e) {
	        e.printStackTrace();
	    }
	    return null;
	}

	
	
	
//public UserDto getUserDetailByPhoneIdDao(long phone) {
//		
//	
//		try {
//		CallableStatement call = conn.prepareCall("call userById(?)");
//		call.setLong(1,phone );
//		
//		ResultSet rs = call.executeQuery();
//			
//		if(rs.next()) {
//			
//			return new UserDto(
//					rs.getLong("phone"),
//					rs.getString("name"),
//					rs.getString("email"),
//					rs.getString("role"),
//					rs.getString("password")) ;
//					
//		}
//		
//		} catch (SQLException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		return null ;
//	}
	
}
