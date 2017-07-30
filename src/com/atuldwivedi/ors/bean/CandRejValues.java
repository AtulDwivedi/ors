/*	****	****	****	-> 	Document   : CandRegVelues
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;

public class CandRejValues{
	private String username; 
	private String name;
	private String gender;
	private String dob; 
	private String collname; 
	private String collphone; 
	private String email; 
	private String branch; 
	private String marks; 
	private String degree; 
	private String emailid; 
	private String telephone;
	private String addr; 
	private String states; 
	private String pincode; 
	private String category;
	private String status="cand";
	Connection con=null;
	boolean flag;
	
	public void setUsername(String username){
		this.username=username;
	}
	public String getUsername(){
		return username;
	}
	
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return name;
	}
	
	public void setGender(String gender){
		this.gender=gender;
	}
	public String getGender(){
		return gender;
	}
	
	public void setDob(String dob){
		this.dob=dob;
	}
	public String getDob(){
		return dob;
	}
	
	
	public void setCollname(String collname){
		this.collname=collname;
	}
	public String getCollname(){
		return collname;
	}
	
	
	public void setCollphone(String collphone){
		this.collphone=collphone;
	}
	public String getCollphone(){
		return collphone;
	}
	
	
	public void setEmail(String email){
		this.email=email;
	}
	public String getEmail(){
		return email;
	}
	
	
	public void setBranch(String branch){
		this.branch=branch;
	}
	public String getBranch(){
		return branch;
	}
	
	
	public void setMarks(String marks){
		this.marks=marks;
	}
	public String getMarks(){
		return marks;
	}
	
	
	public void setDegree(String degree){
		this.degree=degree;
	}
	public String getDegree(){
		return degree;
	}
	
	
	public void setEmailid(String emailid){
		this.emailid=emailid;
	}
	public String getEmailid(){
		return emailid;
	}
	
	
	public void setTelephone(String telephone){
		this.telephone=telephone;
	}
	public String getTelephone(){
		return telephone;
	}
	
	
	public void setAddr(String addr){
		this.addr=addr;
	}
	public String getAddr(){
		return addr;
	}
	
	
	public void setStates(String states){
		this.states=states;
	}
	public String getStates(){
		return states;
	}
	
	
	public void setPincode(String pincode){
		this.pincode=pincode;
	}
	public String getPincode(){
		return pincode;
	}
	
	
	public void setCategory(String category){
		this.category=category;
	}
	public String getCategory(){
		return category;
	}
	
	
	public boolean candInsert()
	{
			try
			{	
				if(con==null){
					con = ConnectionProvider.getConnection();
					System.out.println("            ...!!!...            ");
					System.out.println("JavaReport: com.atuldwivedi.ors.bean.CandRejValues- Connection has been created.");
				}
				PreparedStatement 
				ps=con.prepareStatement("INSERT INTO STUDENTREGISTER VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
				ps.setString(1,username);
				ps.setString(2,name);
				ps.setString(3,gender);
				ps.setString(4,dob);
				ps.setString(5,collname);
				ps.setString(6,collphone);
				ps.setString(7,email);
				ps.setString(8,branch);
				ps.setString(9,marks);
				ps.setString(10,degree);
				ps.setString(11,emailid);
				ps.setString(12,telephone);
				ps.setString(13,addr);
				ps.setString(14,states);
				ps.setString(15,pincode);
				ps.setString(16,category);
				
				ps.executeUpdate();
				flag=true;
				System.out.println("values are inserted....!   :-)");
				/*if(i>0){
					flag=true;
					System.out.println("values are inserted....!   :-)");
				}*/
				
			}
			catch(Exception e)
			{
				System.out.println("CandRejValues : "+e);
			}
		return flag;
	}
} 