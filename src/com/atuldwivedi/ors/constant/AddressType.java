package com.atuldwivedi.ors.constant;

public enum AddressType {

	HOME("Home"), WORK("Work"), COMPANY("Company"), COLLEGE("College"), CURRENT("Current"), PERMANENT("Permanent");

	private String value;

	private AddressType(String value){
		this.value = value;
	}

	public String getValue(){
		return value;
	}
}
