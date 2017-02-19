package com.atuldwivedi.ors.dao.service;

import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.model.Job;

public interface CompanyDao {
	public int registerCompany(Company company);
	public int updateCompany(Company company);
	public int createJob(Job job);
	public int deletJobById(long jobId, String companyId);
	public int updateJobById(Job job);
}
