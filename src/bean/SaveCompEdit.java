/*	****	****	****	-> 	Document   : SaveCompEdit
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package bean;
import conn.*;
import java.sql.*;

public class SaveCompEdit{
	private String name;
	private String addr;
	private String post;
	private String criteria;
	private String email;
	private String contact;
	private String cutoff;
	
	Connection con=null;
	boolean flag=false;
	
	public void setName(String name){
		this.name=name;
	}
	public String getName(){
		return name;
	}
	public void setAddr(String addr){
		this.addr=addr;
	}
	public String getAddr(){
		return addr;
	}
	public void setPost(String post){
		this.post=post;
	}
	public String getPost(){
		return post;
	}
	public void setCriteria(String criteria){
		this.criteria=criteria;
	}
	public String getCriteria(){
		return criteria;
	}
	public void setEmail(String email){
		this.email=email;
	}
	public String getEmail(){
		return email;
	}
	public void setContact(String contact){
		this.contact=contact;
	}
	public String getContact(){
		return contact;
	}
	public void setCutoff(String cutoff){
		this.cutoff=cutoff;
	}
	public String getCutoff(){
		return cutoff;
	}
	
	public boolean editInsert(String s1){
		String username=s1;
		try{
			if(con==null){
				con=ConnectionProvider.getCon();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport:  bean.SaveCompEdit-- Connection has been created.");
			}
			String sql="UPDATE COMPANYREGISTER SET NAME='"+name+"',ADDR='"+addr+"',POST='"+post+"',CRITERIA='"+criteria+"',EMAIL='"+email+"',CONTACT='"+contact+"',CUTOFF='"+cutoff+"' WHERE USERNAME='"+username+"'";
			Statement stmt=con.createStatement();
			/*ps.setString(1,username);
			ps.setString(2,name);
			ps.setString(3,addr);
			ps.setString(4,post);
			ps.setString(5,criteria);
			ps.setString(6,email);
			ps.setString(7,contact);
			ps.setString(8,cutoff);*/
			
			stmt.executeUpdate(sql);
			
			
				flag=true;
			System.out.println("JavaReport: bean.SaveCompEdit- Candidate table has been updated.");
			
			
		}
		catch(Exception e){
			System.out.println("SaveCompEdit  "+e);
		}
		return flag;
	}
}