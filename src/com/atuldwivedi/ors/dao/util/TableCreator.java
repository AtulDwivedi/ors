package com.atuldwivedi.ors.dao.util;
import java.io.FileInputStream;
import java.sql.Connection;
import java.sql.Statement;
import java.util.StringTokenizer;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;

public class TableCreator
{
	public static void createTable(String path)
	{
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
				Connection con = ConnectionProvider.getConnection();
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
}
