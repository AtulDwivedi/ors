package com.atuldwivedi.ors.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.atuldwivedi.ors.dao.service.LoginDao;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Login;

public class LoginDaoImpl implements LoginDao {

	Connection con;
	Statement stmt;
	ResultSet rs;

	@Override
	public boolean checkLogin(Login login) {
		boolean result = false;

		String userName = login.getUserName();
		String password = login.getPassword();

		try {
			con = ConnectionProvider.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery("SELECT * FROM LOGIN");

			while(rs.next()){
				if(userName.equals(rs.getString(1)) && password.equals(rs.getString(2))){
					result = true;
					login.setUserType(rs.getString(3));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return result;
	}

	@Override
	public int insertLogin(Login login) {
		int insertedRecordCount = 0;
		
		try {
			con = ConnectionProvider.getConnection();
			stmt = con.createStatement();
			insertedRecordCount = stmt.executeUpdate("INSERT INTO LOGIN VALUES('"+login.getUserName()+"', '"+login.getPassword()+"', '"+login.getUserType()+"')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		finally{
			if(con != null){
				try {
					con.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
		}
		return insertedRecordCount;
	}
}
