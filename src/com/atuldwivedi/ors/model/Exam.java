package com.atuldwivedi.ors.model;

public class Exam {

	private long jobId;
	private String post;
	private long examId;
	private String examName;
	private double cutOff;
	private String companyId;
	public Exam() {
		super();
	}
	public Exam(long jobId, String post, long examId, String examName,
			double cutOff, String companyId) {
		super();
		this.jobId = jobId;
		this.post = post;
		this.examId = examId;
		this.examName = examName;
		this.cutOff = cutOff;
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
	public long getExamId() {
		return examId;
	}
	public void setExamId(long examId) {
		this.examId = examId;
	}
	public String getExamName() {
		return examName;
	}
	public void setExamName(String examName) {
		this.examName = examName;
	}
	public double getCutOff() {
		return cutOff;
	}
	public void setCutOff(double cutOff) {
		this.cutOff = cutOff;
	}
	public String getCompanyId() {
		return companyId;
	}
	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}
	@Override
	public String toString() {
		return "Exam [jobId=" + jobId + ", post=" + post + ", examId=" + examId
				+ ", examName=" + examName + ", cutOff=" + cutOff
				+ ", companyId=" + companyId + "]";
	}


}
