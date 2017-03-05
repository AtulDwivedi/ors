package com.atuldwivedi.ors.constant;

public enum ContactType {

	HOME("Home"), WORK("Work"), COMPANY("Company"), COLLEGE("College");

	private String value;

	private ContactType(String value){
		this.value = value;
	}

	public String getValue(){
		return value;
	}
}
