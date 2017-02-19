package com.atuldwivedi.ors.service.impl;

import com.atuldwivedi.ors.dao.impl.CompanyDaoImpl;
import com.atuldwivedi.ors.dao.service.CompanyDao;
import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.model.Job;
import com.atuldwivedi.ors.service.services.CompanyService;

public class CompanyServiceImpl implements CompanyService {

	@Override
	public int registerCompany(Company company) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.registerCompany(company);
	}

	@Override
	public int updateCompany(Company company) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.updateCompany(company);
	}

	@Override
	public int createJob(Job job) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.createJob(job);
	}

	@Override
	public int deletJobById(long jobId, String companyId) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.deletJobById(jobId, companyId);
	}

	@Override
	public int updateJobById(Job job) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.updateJobById(job);
	}
}
