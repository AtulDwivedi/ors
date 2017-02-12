/*	****	****	****	-> 	Document   : CompLogValues
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	package bean;
import conn.*;
import java.sql.*;

public class CompLogValues{
	private String username;
	private String password;
	private String status="comp";
	Connection con=null;
	boolean flag=false;
	
	public void setUsername(String username){
		this.username=username;
	}
	String getCompname(){
		return username;
	}
	
	public void setPassword(String password){
		this.password=password;
	}
	String getPassword(){
		return password;
	}

	public boolean compLogInsert(){
		try
			{	
				if(con==null){
					con=ConnectionProvider.getCon();
					System.out.println("            ...!!!...            ");
					System.out.println("JavaReport: bean.CompLogValues- Connection has been created.");
				}
				PreparedStatement 
				ps=con.prepareStatement("INSERT INTO LOGIN VALUES(?,?,?)");
				ps.setString(1,username);
				ps.setString(2,password);
				ps.setString(3,status);
				
				ps.executeQuery();
				flag=true;
				System.out.println("values are inserted....!   :-)");
				
				
			}
			catch(Exception e)
			{
				System.out.println("CompLogValues : "+e);
			}
		return flag;
	}
}