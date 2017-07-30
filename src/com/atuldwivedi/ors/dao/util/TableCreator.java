package com.atuldwivedi.ors.dao.util;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Statement;
import java.util.List;
import java.util.StringTokenizer;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;

public class TableCreator
{
	public static void createTable(String path)
	{
		List<String> tables = (new DBMetaData()).getTables();
		try(Connection con = ConnectionProvider.getConnection();
				Statement stm=con.createStatement();)
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
				
					System.out.println("start create table");
					if(query.trim().equals("stop"))
					{
						break;
					}
					System.out.println(query);
					for (String table : tables) {
						if(query.split(" ")[2].equalsIgnoreCase(table)){
							stm.execute(query);
							System.out.println("Table is successfully created");
						}
						else{
							System.out.println("Table already exists");
						}
					}
			}
				System.out.println("successfully tables are created");
		}
		catch(Exception e)
		{
			System.out.println("----------------Table Creator : "+e);
		}
	}
}
