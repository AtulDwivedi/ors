package com.atuldwivedi.ors.constant;

public enum Action {

	ADD("Add"), VIEW("View"), EDIT("Edit");

	private String value;

	private Action(String value){
		this.value = value;
	}

	public String getValue(){
		return value;
	}
}
