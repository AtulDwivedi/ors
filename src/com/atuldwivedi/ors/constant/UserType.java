package com.atuldwivedi.ors.constant;

public enum UserType {

	COMPANY("comp"), CANDIDATE("cand"), ADMIN("admin");

	private String value;

	private UserType(String value){ this.value = value;}

	public String getValue(){
		return value;
	}
}
