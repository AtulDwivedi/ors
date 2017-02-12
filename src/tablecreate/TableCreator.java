package tablecreate;
import conn.ConnectionProvider;
import java.sql.*;
import java.io.*;
import java.util.*;

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
}
