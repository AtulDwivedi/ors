package com.atuldwivedi.ors.model;

public class Job {

	private long jobId;
	private String post;
	private String criteria;
	private int vacancies;
	private long salary;
	private String expiryDate;
	private String companyId;
	
	public Job() {
		super();
	}
	public Job(long jobId, String post, String criteria, int vacancies,
			long salary, String expiryDate, String companyId) {
		super();
		this.jobId = jobId;
		this.post = post;
		this.criteria = criteria;
		this.vacancies = vacancies;
		this.salary = salary;
		this.expiryDate = expiryDate;
		this.companyId = companyId;
	}
	public long getJobId() {
		return jobId;
	}
	public void setJobId(long jobId) {
		this.jobId = jobId;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getCriteria() {
		return criteria;
	}
	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}
	public int getVacancies() {
		return vacancies;
	}
	public void setVacancies(int vacancies) {
		this.vacancies = vacancies;
	}
	public long getSalary() {
		return salary;
	}
	public void setSalary(long salary) {
		this.salary = salary;
	}
	public String getExpiryDate() {
		return expiryDate;
	}
	public void setExpiryDate(String expiryDate) {
		this.expiryDate = expiryDate;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	@Override
	public String toString() {
		return "Job [jobId=" + jobId + ", post=" + post + ", criteria="
				+ criteria + ", vacancies=" + vacancies + ", salary=" + salary
				+ ", expiryDate=" + expiryDate + ", companyId=" + companyId
				+ "]";
	}


}
