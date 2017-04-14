package com.atuldwivedi.ors.dao.service;

public interface SchemaDao {
	public void dropTables(String path);
	public void createTables(String path);
	public int inserBaseData(boolean baseDataInsertion);
}
