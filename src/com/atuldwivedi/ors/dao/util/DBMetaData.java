package com.atuldwivedi.ors.dao.util;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.StringTokenizer;

public class DBMetaData {
	public List<String> getTables() {
		List<String> tables = new ArrayList<String>();

		try (Connection con = ConnectionProvider.getConnection();) {
			DatabaseMetaData dbmd = con.getMetaData();
			ResultSet rs = dbmd.getTables(null, null, "%", null);
			while (rs.next()) {
				tables.add(rs.getString(3));
			}
			System.out.println(tables);
			rs.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return tables;
	}
	
	public List<String> getApplicationTables(String path) {
		System.out.println(">> "+this.getClass().getSimpleName()+" getApplicationTables");
		List<String> tables = new ArrayList<String>();

		try {
			FileInputStream fin = new FileInputStream(path);
			byte data[] = new byte[fin.available()];
			fin.read(data);
			fin.close();
			String str = new String(data);
			StringTokenizer st = new StringTokenizer(str, "/");
			while (st.hasMoreTokens()) {
				String query = st.nextToken();
				if (query.trim().equals("stop")) {
					break;
				}
				tables.add(query.split(" ")[2]);
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
		System.out.println("<< "+this.getClass().getSimpleName()+" getApplicationTables");
		return tables;
	}
}
