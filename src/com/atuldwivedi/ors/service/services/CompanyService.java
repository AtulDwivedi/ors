package com.atuldwivedi.ors.service.services;

import java.util.List;

import com.atuldwivedi.ors.model.Company;
import com.atuldwivedi.ors.model.Exam;
import com.atuldwivedi.ors.model.Job;

public interface CompanyService {
	public int registerCompany(Company company);
	public int updateCompany(Company company);
	public int createJob(Job job);
	public int deletJobById(long jobId, String companyId);
	public int updateJobById(Job job);
	
	/**
	 * Exam
	 */
	public int addExam(Exam exam);
	public List<Exam> getExamsByJobIdAndCompanyId(long jobId, String comapanyId);
	public int deleteExamByExamIdAdnCompanyId(Long examId, String companyId);
	public int editExam(Exam exam);
	public List<Long> getJobIdsOfExamsForCompany(String comapanyId);
}
