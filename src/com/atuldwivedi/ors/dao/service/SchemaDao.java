package com.atuldwivedi.ors.dao.service;

public interface SchemaDao {
	public void dropTables(boolean dropExistingTable);
	public void createTables(String path);
	public int inserBaseData(boolean baseDataInsertion);
}
