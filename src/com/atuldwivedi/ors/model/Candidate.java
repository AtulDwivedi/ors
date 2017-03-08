package com.atuldwivedi.ors.model;

public class Candidate {
	private String userName; 
	private String name;
	private String gender;
	private String dob; 
	private boolean isExperienced;
	private Address address;
	private Contact contact;
	private Education education;
	private Experience experience;
	
	
	
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getDob() {
		return dob;
	}
	public void setDob(String dob) {
		this.dob = dob;
	}
	
	public boolean isExperienced() {
		return isExperienced;
	}
	public void setExperienced(boolean isExperienced) {
		this.isExperienced = isExperienced;
	}
	public Address getAddress() {
		return address;
	}
	public void setAddress(Address address) {
		this.address = address;
	}
	public Contact getContact() {
		return contact;
	}
	public void setContact(Contact contact) {
		this.contact = contact;
	}
	public Education getEducation() {
		return education;
	}
	public void setEducation(Education education) {
		this.education = education;
	}
	public Experience getExperience() {
		return experience;
	}
	public void setExperience(Experience experience) {
		this.experience = experience;
	}
	
	@Override
	public String toString() {
		return "Candidate [userName=" + userName + ", name=" + name
				+ ", gender=" + gender + ", dob=" + dob + ", isExperienced="
				+ isExperienced + ", address=" + address + ", contact="
				+ contact + ", education=" + education + ", experience="
				+ experience + "]";
	}	
}
