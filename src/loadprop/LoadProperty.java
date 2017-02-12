package loadprop;
import java.util.*;
import java.io.*;

public class LoadProperty
{
	public static void load(String path)
	{
		try
		{
			FileInputStream fin=new FileInputStream(path);
			Properties p=new Properties();
			p.load(fin);
			Enumeration en=p.propertyNames();
			while(en.hasMoreElements())
			{
				String key=(String)en.nextElement();
				System.setProperty(key,p.getProperty(key));
			}
			System.out.println("LoadProperty: set property");
		}
		catch(Exception e)
		{
			System.out.println("load property : "+e);
		}
	}
}
