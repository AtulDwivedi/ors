package com.atuldwivedi.ors.dao.util;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

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
}
