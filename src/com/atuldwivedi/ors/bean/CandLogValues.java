/*	****	****	****	-> 	Document   : CandLogValues
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;

public class CandLogValues{
	private String username;
	private String password;
	private String status="cand";
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

	public boolean candLogInsert(){
		try
			{	
				if(con==null){
					con = ConnectionProvider.getConnection();
					System.out.println("            ...!!!...            ");
					System.out.println("JavaReport: com.atuldwivedi.ors.bean.CandLogValues- Connection has been created.");
				}
				PreparedStatement 
				ps=con.prepareStatement("INSERT INTO LOGIN VALUES(?,?,?)");
				ps.setString(1,username);
				ps.setString(2,password);
				ps.setString(3,status);
				
				ps.executeUpdate();
				flag=true;
				System.out.println("values are inserted....!   :-)");
				
				
			}
			catch(Exception e)
			{
				System.out.println("CandLogValues : "+e);
			}
		return flag;
	}
}