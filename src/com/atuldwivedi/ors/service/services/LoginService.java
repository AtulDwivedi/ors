package com.atuldwivedi.ors.service.services;

import com.atuldwivedi.ors.model.Login;

public interface LoginService {
	public boolean checkLogin(Login login);
	public int insertLogin(Login login);
	public int updatePassword(String userName, String oldPassword, String newPassword);
}
