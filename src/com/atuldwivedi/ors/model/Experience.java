package com.atuldwivedi.ors.model;

public class Experience {

	private String companyName;
	private String designation;
	private int startYear;
	private int endYear;
	private boolean isPresentCompany;
	private Address companyAddress;
	private Contact companyContact;
	private int totalYearsOfExperience;
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getDesignation() {
		return designation;
	}
	public void setDesignation(String designation) {
		this.designation = designation;
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
	public boolean isPresentCompany() {
		return isPresentCompany;
	}
	public void setPresentCompany(boolean isPresentCompany) {
		this.isPresentCompany = isPresentCompany;
	}
	public Address getCompanyAddress() {
		return companyAddress;
	}
	public void setCompanyAddress(Address companyAddress) {
		this.companyAddress = companyAddress;
	}
	public Contact getCompanyContact() {
		return companyContact;
	}
	public void setCompanyContact(Contact companyContact) {
		this.companyContact = companyContact;
	}
	public int getTotalYearsOfExperience() {
		return totalYearsOfExperience;
	}
	public void setTotalYearsOfExperience(int totalYearsOfExperience) {
		this.totalYearsOfExperience = totalYearsOfExperience;
	}
	
	@Override
	public String toString() {
		return "Experience [companyName=" + companyName + ", designation="
				+ designation + ", startYear=" + startYear + ", endYear="
				+ endYear + ", isPresentCompany=" + isPresentCompany
				+ ", companyAddress=" + companyAddress + ", companyContact="
				+ companyContact + ", totalYearsOfExperience="
				+ totalYearsOfExperience + "]";
	}
}
