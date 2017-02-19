package com.atuldwivedi.ors.service.impl;

import java.util.List;

import com.atuldwivedi.ors.dao.impl.CompanyDaoImpl;
import com.atuldwivedi.ors.dao.service.CompanyDao;
import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.model.Exam;
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

	@Override
	public List<Exam> getExamsByJobIdAndCompanyId(long jobId, String comapanyId) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.getExamsByJobIdAndCompanyId(jobId, comapanyId);
	}

	@Override
	public int deleteExamByExamIdAdnCompanyId(Long examId, String companyId) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.deleteExamByExamIdAdnCompanyId(examId, companyId);
	}

	@Override
	public int editExam(Exam exam) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.editExam(exam);
	}

	@Override
	public int addExam(Exam exam) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.addExam(exam);
	}

	@Override
	public List<Long> getJobIdsOfExamsForCompany(String comapanyId) {
		CompanyDao companyDao = new CompanyDaoImpl();
		return companyDao.getJobIdsOfExamsForCompany(comapanyId);
	}
}
