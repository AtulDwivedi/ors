package com.atuldwivedi.ors.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.atuldwivedi.ors.dao.service.LoginDao;
import com.atuldwivedi.ors.model.Login;

import conn.ConnectionProvider;

public class LoginDaoImpl implements LoginDao {
	
	Connection con;
	Statement stmt;
	ResultSet rs;

	@Override
	public boolean checkLogin(Login login) {
		boolean result = false;
		
		String userName = login.getUserName();
		String password = login.getPassword();
		
		con = ConnectionProvider.getCon();
		System.out.println(con);
		try {
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

}
