package com.atuldwivedi.ors.model;

public class Education {
	private String collegeName;
	private String branch;
	private String educationLevel;
	private int marks;
	private int startYear;
	private int endYear;
	private Address collegeAddress;
	private Contact collegeContact;

	public String getEducationLevel() {
		return educationLevel;
	}
	public void setEducationLevel(String educationLevel) {
		this.educationLevel = educationLevel;
	}
	public int getMarks() {
		return marks;
	}
	public void setMarks(int marks) {
		this.marks = marks;
	}
	public String getCollegeName() {
		return collegeName;
	}
	public void setCollegeName(String collegeName) {
		this.collegeName = collegeName;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public int getStartYear() {
		return startYear;
	}
	public void setStartYear(int startYear) {
		this.startYear = startYear;
	}
	public int getEndYear() {
		return endYear;
	}
	public void setEndYear(int endYear) {
		this.endYear = endYear;
	}
	public Address getCollegeAddress() {
		return collegeAddress;
	}
	public void setCollegeAddress(Address collegeAddress) {
		this.collegeAddress = collegeAddress;
	}
	public Contact getCollegeContact() {
		return collegeContact;
	}
	public void setCollegeContact(Contact collegeContact) {
		this.collegeContact = collegeContact;
	}
}
