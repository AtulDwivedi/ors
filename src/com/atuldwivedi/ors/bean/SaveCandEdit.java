/*	****	****	****	-> 	Document   : SaveCandEdit
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;

public class SaveCandEdit{
	//int i=0;
	//public String username="cand";
	//private String username;
	private String name;
	private String gender;
	private String dob;
	private String branch;
	private String degree;
	private String collname; 
	private String collphone; 
	private String email; 
	private String marks; 
	private String emailid; 
	private String telephone;
	private String addr; 
	private String states; 
	private String pincode; 
	private String category;
	
	Connection con=null;
	boolean flag=false;
	
	/*public void setUsername(String username){
		this.username=username;
	}
	public String getUsername(){
		return username;
	}*/
	
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
	
	public void setBranch(String branch){
		this.branch=branch;
	}
	public String getBranch(){
		System.out.println("Branch: "+branch);
		return branch;
	}
	
	public void setDegree(String degree){
		this.degree=degree;
	}
	public String getDegree(){
		return degree;
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
	
	public void setMarks(String marks){
		this.marks=marks;
	}
	public String getMarks(){
		return marks;
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
	
	
	
	public boolean editInsert(String s1){
		String username=s1;
		try{
			if(con==null){
				con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveCandEdit- Connection has been created.");
			}
			Statement stmt=con.createStatement();
			String sql= "UPDATE STUDENTREGISTER SET NAME='" + name + "', GENDER='" + gender + "', DOB='" + dob + "', COLLNAME='" + collname + "', COLLPHONE='" + collphone + "', EMAIL='" + email + "', BRANCH='" + branch + "', MARKS='" + marks + "', DEGREE='" + degree + "', EMAILID='" + emailid + "', TELEPHONE='" + telephone + "', ADDR='" + addr + "', STATES='" + states + "', PINCODE='" + pincode + "', CATEGORY='" + category + "'WHERE  USERNAME='" + username + "'";
			
			//PreparedStatement pst=con.prepareStatement(sql);
			//System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveCandEdit- Statement has been prepared.");
			/*pst.setString(2,name);
			pst.setString(3,gender);
			pst.setString(4,dob);
			pst.setString(5,collname);
			pst.setString(6,collphone);
			pst.setString(7,email);
			pst.setString(8,branch);
			pst.setString(9,marks);
			pst.setString(10,degree);
			pst.setString(11,emailid);
			pst.setString(12,telephone);
			pst.setString(13,addr);
			pst.setString(14,states);
			pst.setString(15,pincode);
			pst.setString(16,category);
			pst.setString(1,username);
			System.out.println("Branch: "+dob);
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveCandEdit- Values have been filled to the columns.");
			i=pst.executeUpdate();
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveCandEdit- After updation the returning value is= "+i);
			if(i>0){
				flag=true;
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveCandEdit- Candidate's table STUDENTREGISTER has been updated.");
			}*/
			stmt.executeUpdate(sql);
			flag=true;
		}
		catch(Exception e){
			System.out.println("ExceptionFrom: com.atuldwivedi.ors.bean.SaveCandEdit- "+e);
		}
		return flag;
	}
}