package com.atuldwivedi.ors.dao.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionProvider {
	static Connection con;
	public static Connection getConnection() throws SQLException{
		if(con == null){
			try {
				Class.forName("org.h2.Driver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			con = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
		}
		return con;
	}
}
