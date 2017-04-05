package com.atuldwivedi.ors.dao.impl;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.atuldwivedi.ors.dao.service.LoginDao;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import com.atuldwivedi.ors.model.Login;

public class LoginDaoImpl implements LoginDao {

	@Override
	public boolean checkLogin(Login login) {
		boolean result = false;

		String userName = login.getUserName();
		String password = login.getPassword();

		try (Connection con = ConnectionProvider.getConnection();
				Statement stmt = con.createStatement()) {
			ResultSet rs = stmt.executeQuery("SELECT * FROM LOGIN");

			while (rs.next()) {
				if (userName.equals(rs.getString(1))
						&& password.equals(rs.getString(2))) {
					result = true;
					login.setUserType(rs.getString(3));
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}

	@Override
	public int insertLogin(Login login) {
		int insertedRecordCount = 0;

		try (Connection con = ConnectionProvider.getConnection();
				Statement stmt = con.createStatement()) {
			insertedRecordCount = stmt
					.executeUpdate("INSERT INTO LOGIN VALUES('"
							+ login.getUserName() + "', '"
							+ login.getPassword() + "', '"
							+ login.getUserType() + "')");
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return insertedRecordCount;
	}
}
