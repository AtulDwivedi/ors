package com.atuldwivedi.ors.service.impl;

import com.atuldwivedi.ors.dao.impl.CompanyDaoImpl;
import com.atuldwivedi.ors.dao.service.CompanyDao;
import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.service.services.CompanyService;

public class CompanyServiceImpl implements CompanyService {

	@Override
	public int registerCompany(Company company) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.registerCompany(company);
	}
}
