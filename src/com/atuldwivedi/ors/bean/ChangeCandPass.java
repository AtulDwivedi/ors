/*	****	****	****	-> 	Document   : ChangeCandPass
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import java.sql.Connection;
import java.sql.Statement;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;

public class ChangeCandPass{
	private String username;
	private String password;
	private String new_pass;
	Connection con=null;
	boolean flag=false;
	
	public void setUsername(String username)
	{
		this.username=username;
	}

	public String getUsername()
	{
		return username;
	}
	
	public void setPassword(String password)
	{
		
		this.password=password;
	}

	public String getPassword()
	{
		return password;
	}
	
	public void setNewpass(String new_pass){
		this.new_pass=new_pass;
	}
	public String getNewpass(){
		return new_pass;
	}
	
	
	
	public boolean changePass(){
		try{
			if(con==null){
				con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveJobDetails- Connection has been created.");
			}
			String sql="UPDATE LOGIN SET PASSWORD='"+new_pass+"'WHERE USERNAME='"+username+"' AND PASSWORD='"+password+"'";
			Statement stmt=con.createStatement();
			stmt.executeUpdate(sql);
			flag=true;
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.ChangeCandPass- Password has been changed.");
		}
		catch(Exception e){
			System.out.println("ExceptionFrom: com.atuldwivedi.ors.bean.ChangeCandPass- "+e);
		}
		return flag;
	}
}