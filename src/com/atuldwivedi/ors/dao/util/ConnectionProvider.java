package com.atuldwivedi.ors.dao.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	static Connection con;
	public static Connection getConnection() throws SQLException{
		
		String driverClass = (String) System.getProperty("driverClass");
		String url = (String) System.getProperty("url");
		String userName = (String) System.getProperty("userName");
		String password = (String) System.getProperty("password");
		
		if(con == null || con.isClosed()){
			try {
				Class.forName(driverClass);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = DriverManager.getConnection(url, userName, password);
		}
		return con;
	}
}
