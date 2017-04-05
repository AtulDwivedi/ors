/*	****	****	****	-> 	Document   : CandEditProfile
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import com.atuldwivedi.ors.dao.util.ConnectionProvider;

public class CandEditProfile{
	//private String username;
	public String name;
	public String gender;
	public String dob;
	public String collname;
	public String collphone;
	public String email;
	public String branch;
	public String marks;
	public String degree;
	public String emailid;
	public String telephone;
	public String addr;
	public String states;
	public String pincode;
	public String category;
	Connection con=null;
	boolean flag=false;
	
	/*public void setUsername(String username){
		this.username=username;
	}
	public String getUsername(){
		return username;
	}*/
	
	public boolean candFetch(String s1){
		String username=s1;
		try{
			if(con==null){
				con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.CandEditProfile- Connection has been created.");
			}
			
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM STUDENTREGISTER");
			while(rs.next()){
				if(username.equals(rs.getString(1))){
					name=rs.getString(2);
					gender=rs.getString(3);
					dob=rs.getString(4);
					collname=rs.getString(5);
					collphone=rs.getString(6);
					email=rs.getString(7);
					branch=rs.getString(8);
					marks=rs.getString(9);
					degree=rs.getString(10);
					emailid=rs.getString(11);
					telephone=rs.getString(12);
					addr=rs.getString(13);
					states=rs.getString(14);
					pincode=rs.getString(15);
					category=rs.getString(16);
					flag=true;
					System.out.println("JavaReport: com.atuldwivedi.ors.bean.CandEditProfile- Values from STUDENTREGISTER have been fetched.");
				}
			}
		}
			catch(Exception e){
				System.out.println("ExceptionFrom: CandEditProfile- "+e);
			}
		return flag;
	}
}