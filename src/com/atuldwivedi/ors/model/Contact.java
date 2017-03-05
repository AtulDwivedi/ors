package com.atuldwivedi.ors.model;


public class Contact {

	private String emailId;
	private long mobileNumber;
	private long landLineNumber;
	private String contactType;
	
	public String getEmailId() {
		return emailId;
	}
	public void setEmailId(String emailId) {
		this.emailId = emailId;
	}
	public long getMobileNumber() {
		return mobileNumber;
	}
	public void setMobileNumber(long mobileNumber) {
		this.mobileNumber = mobileNumber;
	}
	public long getLandLineNumber() {
		return landLineNumber;
	}
	public void setLandLineNumber(long landLineNumber) {
		this.landLineNumber = landLineNumber;
	}
	public String getContactType() {
		return contactType;
	}
	public void setContactType(String contactType) {
		this.contactType = contactType;
	}
}
