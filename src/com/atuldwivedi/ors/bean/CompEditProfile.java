/*	****	****	****	-> 	Document   : CompEditProfile
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;

public class CompEditProfile{
	private String username;
	public String name;
	public String addr;
	public String post;
	public String criteria;
	public String email;
	public String contact;
	public String cutoff;
	Connection con=null;
	boolean flag=false;
	
	
	public boolean compFetch(){
		try{
			if(con==null){
				Connection con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.CompEditProfile- Connection has been created.");
			}
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM COMPANYREGISTER");
			while(rs.next()){
				if(username.equals(rs.getString(1))){
					name=rs.getString(2);
					addr=rs.getString(3);
					post=rs.getString(4);
					criteria=rs.getString(5);
					email=rs.getString(6);
					contact=rs.getString(7);
					cutoff=rs.getString(8);
					flag=true;
				}
			}
		}
		catch(Exception e){
			System.out.println("CompEditProfile  :"+e);
		}
		return flag;
	}
}
	