package com.atuldwivedi.ors.dao.impl;

import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Statement;
import java.util.StringTokenizer;

import com.atuldwivedi.ors.dao.service.SchemaDao;

import conn.ConnectionProvider;

public class SchemaDaoImpl implements SchemaDao {

	Connection con;
	@Override
	public void dropTables(boolean dropExistingTable) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void createTables(String path) {
		try
		{
			FileInputStream fin=new FileInputStream(path);
			byte data[]=new byte[fin.available()];
			fin.read(data);
			fin.close();
			String str=new String(data);
			StringTokenizer st=new StringTokenizer(str,"/");
			while(st.hasMoreTokens())
			{
				String query=st.nextToken();
				Connection con=ConnectionProvider.getCon();
				Statement stm=con.createStatement();
					System.out.println("start create table");
					if(query.trim().equals("stop"))
					{
						break;
					}
					System.out.println(query);
					stm.execute(query);
					System.out.println("table is successfully created");
					
			}
				System.out.println("successfully tables are created");
		}
		catch(Exception e)
		{
			System.out.println("Table Creator : "+e);
		}

	}

	@Override
	public int inserBaseData(boolean baseDataInsertion) {
		// TODO Auto-generated method stub
		return 0;
	}

}
