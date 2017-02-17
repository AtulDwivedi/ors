package com.atuldwivedi.ors.model;

import java.sql.Connection;

public class Candidate {
	private String userName; 
	private String name;
	private String gender;
	private String dob; 
	private String collName; 
	private String collPhone; 
	private String email; 
	private String branch; 
	private String marks; 
	private String degree; 
	private String emailId; 
	private String telephone;
	private String address; 
	private String state; 
	private String pinCode; 
	private String category;
	boolean flag;
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
	public String getCollName() {
		return collName;
	}
	public void setCollName(String collName) {
		this.collName = collName;
	}
	public String getCollPhone() {
		return collPhone;
	}
	public void setCollPhone(String collPhone) {
		this.collPhone = collPhone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBranch() {
		return branch;
	}
	public void setBranch(String branch) {
		this.branch = branch;
	}
	public String getMarks() {
		return marks;
	}
	public void setMarks(String marks) {
		this.marks = marks;
	}
	public String getDegree() {
		return degree;
	}
	public void setDegree(String degree) {
		this.degree = degree;
	}
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public String getTelephone() {
		return telephone;
	}
	public void setTelephone(String telephone) {
		this.telephone = telephone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPinCode() {
		return pinCode;
	}
	public void setPinCode(String pinCode) {
		this.pinCode = pinCode;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public boolean isFlag() {
		return flag;
	}
	public void setFlag(boolean flag) {
		this.flag = flag;
	}
	@Override
	public String toString() {
		return "Candidate [userName=" + userName + ", name=" + name
				+ ", gender=" + gender + ", dob=" + dob + ", collName="
				+ collName + ", collPhone=" + collPhone + ", email=" + email
				+ ", branch=" + branch + ", marks=" + marks + ", degree="
				+ degree + ", emailId=" + emailId + ", telephone=" + telephone
				+ ", address=" + address + ", state=" + state + ", pinCode="
				+ pinCode + ", category=" + category + ", flag=" + flag + "]";
	}
	

}
