package retal.steer.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.SQLException;

import AuthenticationAndConnection.ConnectionJDBC;
import steer.UserDto.UserDto;

public class SteerRegisterDao {

	Connection conn = ConnectionJDBC.getDBConnection();
	
	public UserDto saveUserDao(UserDto userSaved) {
		
		try {
			CallableStatement call = conn.prepareCall("call saveUser(?,?,?,?,?)");
			call.setLong(1, userSaved.getPhone());
			call.setString(2, userSaved.getName());
			call.setString(3, userSaved.getEmail());
			call.setString(4, userSaved.getRole());
			call.setString(5, userSaved.getPassword());
			
			call.execute();

			return userSaved;
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return null ;
		
	}

}
