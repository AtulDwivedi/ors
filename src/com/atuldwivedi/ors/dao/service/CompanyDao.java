package com.atuldwivedi.ors.dao.service;

import com.atuldwivedi.ors.model.Company;

public interface CompanyDao {
	public int registerCompany(Company company);
	public int updateCompany(Company company);
}
