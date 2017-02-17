package com.atuldwivedi.ors.model;

public class Company {
	private String compName;
	private String address;
	private String postInComp;
	private String criteria;
	private String userName;
	private String email;
	private int contact;
	private int cutOff;
	public Company(String compName, String address, String postInComp, String criteria, String userName, String email,
			int contact, int cutOff) {
		super();
		this.compName = compName;
		this.address = address;
		this.postInComp = postInComp;
		this.criteria = criteria;
		this.userName = userName;
		this.email = email;
		this.contact = contact;
		this.cutOff = cutOff;
	}
	public Company() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getCompName() {
		return compName;
	}
	public void setCompName(String compName) {
		this.compName = compName;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPostInComp() {
		return postInComp;
	}
	public void setPostInComp(String postInComp) {
		this.postInComp = postInComp;
	}
	public String getCriteria() {
		return criteria;
	}
	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getContact() {
		return contact;
	}
	public void setContact(int contact) {
		this.contact = contact;
	}
	public int getCutOff() {
		return cutOff;
	}
	public void setCutOff(int cutOff) {
		this.cutOff = cutOff;
	}
	@Override
	public String toString() {
		return "Company [compName=" + compName + ", address=" + address + ", postInComp=" + postInComp + ", criteria="
				+ criteria + ", userName=" + userName + ", email=" + email + ", contact=" + contact + ", cutOff="
				+ cutOff + "]";
	}


}
