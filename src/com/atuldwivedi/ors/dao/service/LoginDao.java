package com.atuldwivedi.ors.dao.service;

import com.atuldwivedi.ors.model.Login;

public interface LoginDao {
	public boolean checkLogin(Login login);
	public int insertLogin(Login login);
	public int updatePassword(String userName, String oldPassword, String newPassword);
}
