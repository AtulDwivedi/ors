/*	****	****	****	-> 	Document   : CompRegValues
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;

public class CompRejValues{
	private String compname;
	private String addr;
	private String postincomp;
	private String criteria;
	private String username;
	private String password;
	private String email;
	private String contact;
	private String cutoff;
	Connection con=null;
	boolean flag=false;
	
	public void setCompname(String compname){
		this.compname=compname;
	}
	public String getCompname(){
		return compname;
	}
	
	public void setUsername(String username){
		this.username=username;
	}
	public String getUsername(){
		return username;
	}
	
	public void setEmail(String email){
		this.email=email;
	}
	public String getEmail(){
		return email;
	}
	
	public void setAddr(String addr){
		this.addr=addr;
	}
	public String getAddr(){
		return addr;
	}
	
	public void setPostincomp(String postincomp){
		this.postincomp=postincomp;
	}
	public String getPostincomp(){
		return postincomp;
	}
	
	public void setContact(String contact){
		this.contact=contact;
	}
	public String getContact(){
		return contact;
	}
	
	public void setCriteria(String criteria){
		this.criteria=criteria;
	}
	public String getCriteria(){
		return criteria;
	}
	
	public void setCutoff(String cutoff){
		this.cutoff=cutoff;
	}
	public String getCutoff(){
		return cutoff;
	}
	
	
	public boolean compRegInsert()
	{
			try
			{	
				if(con==null){
					con = ConnectionProvider.getConnection();
					System.out.println("            ...!!!...            ");
					System.out.println("JavaReport: com.atuldwivedi.ors.bean.CompRejValues- Connection has been created.");
				}
				PreparedStatement 
				ps=con.prepareStatement("INSERT INTO COMPANYREGISTER VALUES(?,?,?,?,?,?,?,?)");
				ps.setString(1,username);
				ps.setString(2,compname);
				ps.setString(7,contact);
				ps.setString(8,cutoff);
				ps.setString(5,criteria);
				ps.setString(4,postincomp);
				ps.setString(6,email);
				ps.setString(3,addr);
				
				ps.executeQuery();
				flag=true;
				System.out.println("values are inserted....!!!   :-)");
				
			}
			catch(Exception e)
			{
				System.out.println("CompRejValues : "+e);
			}
		return flag;
	}
} 