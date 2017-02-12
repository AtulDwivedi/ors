package conn;
import java.sql.*;

public class ConnectionProvider
{
	static Connection con=null;

	public static Connection getCon()
	{
		try
		{
			if(con==null)
			{
				String drv=(String)System.getProperty("driver");
				String c=(String)System.getProperty("con");
				String usr=(String)System.getProperty("user");
				String pwd=(String)System.getProperty("pass");
				Class.forName(drv);
				con=DriverManager.getConnection(c,usr,pwd);
			}
		}
		catch(Exception e)
		{
			System.out.println("ExceptionFrom: conn.ConnectionProvider- "+e);
		}
		return con;
	}
}