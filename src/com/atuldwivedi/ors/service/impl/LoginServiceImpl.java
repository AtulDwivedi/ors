package com.atuldwivedi.ors.service.impl;

import com.atuldwivedi.ors.dao.impl.LoginDaoImpl;
import com.atuldwivedi.ors.dao.service.LoginDao;
import com.atuldwivedi.ors.model.Login;
import com.atuldwivedi.ors.service.services.LoginService;

public class LoginServiceImpl implements LoginService {

	@Override
	public boolean checkLogin(Login login) {
		boolean result = false;

		LoginDao loginDao = new LoginDaoImpl();
		result = loginDao.checkLogin(login);

		return result;
	}

	@Override
	public int insertLogin(Login login) {
		int result = 0;

		LoginDao loginDao = new LoginDaoImpl();
		result = loginDao.insertLogin(login);

		return result;
	}

	@Override
	public int updatePassword(String userName, String oldPassword,
			String newPassword) {
		int result = 0;

		LoginDao loginDao = new LoginDaoImpl();
		result = loginDao.updatePassword(userName, oldPassword, newPassword);

		return result;
	}

}
