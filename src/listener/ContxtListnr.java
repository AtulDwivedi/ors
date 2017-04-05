package listener;
import javax.servlet.*;
import javax.servlet.http.*;
import tablecreate.*;
import loadprop.*;

public class ContxtListnr implements ServletContextListener
{
	public void contextInitialized(ServletContextEvent e)
	{
		ServletContext contxt=e.getServletContext();
		String createtable=contxt.getInitParameter("oracletable");
		//String sqltable=contxt.getInitParameter("sqltable");
		String getpropPath=contxt.getRealPath("WEB-INF//classes//db.properties");
	LoadProperty.load(getpropPath);
	System.out.println("Old:"+getpropPath);
		if(createtable.equals("yes"))
		{

			String getPath=contxt.getRealPath("WEB-INF//tables//oracletable.sql");
			System.out.println(getPath);
			System.out.println(getpropPath);

			TableCreator.createTable(getPath);
		}
		/*else if(sqltable.equals("yes"))
				{
					String getPath=contxt.getRealPath("WEB-INF/tables/sqltable.sql");

					System.out.println(getPath);
					System.out.println(getpropPath);
			//		LoadProperty.load(getpropPath);
					TableCreator.createTable(getPath);
		}*/

	}
	public void contextDestroyed(ServletContextEvent e)
	{
	}
}