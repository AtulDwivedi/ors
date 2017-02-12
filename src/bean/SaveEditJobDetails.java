/*	****	****	****	-> 	Document   : SaveEditJobDetails
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package bean;
import java.sql.*;
import conn.*;

public class SaveEditJobDetails{
	private String jid;
	
	private String post;
	private String criteria;
	private String vacancies;
	private String salary;
	private String lastdate;
	
	Connection con=null;
	boolean flag=false;
	
	public void setJid(String jid){
		this.jid=jid;
	}
	public String getJid(){
		return jid;
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
	public String getcriteria(){
		return criteria;
	}
	public void setVacancies(String vacancies){
		this.vacancies=vacancies;
	}
	public String getVacancies(){
		return vacancies;
	}
	public void setSalary(String salary){
		this.salary=salary;
	}
	public String getSalary(){
		return salary;
	}
	public void setLastdate(String lastdate){
		this.lastdate=lastdate;
	}
	public String getLastdate(){
		return lastdate;
	}
	
	
	public boolean upJobDetails(String name){
		String nm=name;
		try{
			if(con==null){
				con=ConnectionProvider.getCon();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: bean.SaveEditJobDetails- Connection has been created.");
			}
			String sql="UPDATE JOBDETAIL SET POST='"+post+"', CRITERIA='"+criteria+"', VACANCIES='"+vacancies+"', SALARY='"+salary+"', LAST_DATE='"+lastdate+"' WHERE NAME='"+nm+"' AND JOB_ID='"+jid+"'";
			Statement stmt=con.createStatement();
			stmt.executeUpdate(sql);
			
			flag=true;
			System.out.println("JavaReport: bean.SaveEditJobDetails- JobDetails have been updated.");
		}
		catch(Exception e){
			System.out.println("Exceptionfrom: bean.SaveEditJobDetails- "+e);
		}
		return flag;
	}
}