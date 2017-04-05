/*	****	****	****	-> 	Document   : SaveJobDetails
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;

public class SaveJobDetails{
	private String jid;
	//private String eid;
	private String post;
	private String criteria;
	private String vacancies;
	private String salary;
	private String lastdate;
	//private String ;
	
	Connection con=null;
	boolean flag=false;
	
	public void setJid(String jid){
		this.jid=jid;
	}
	public String getJid(){
		return jid;
	}
	/*public void setEid(String eid){
		this.eid=eid;
	}
	public String getEid(){
		return eid;
	}*/
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
	
	
	public boolean insertJobDetails(String n){
		//String username=un;
		String name=n;
		//System.out.println(username);
		System.out.println(name);
		try{
			if(con==null){
				con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveJobDetails- Connection has been created.");
			}
			//String sql="UPDATE JOBDETAIL SET JOB_ID='"+job_id+"', POST='"+post+"', CRITERIA='"+criteria+"', VACANCIES='"+vacancies+"', SALARY='"+salary+"', LAST_DATE='"+lastdate+"', NAME='"+name+"', EXAM_ID='"+eid+"' WHERE USERNAME='"+username+"'";
			PreparedStatement pst1=con.prepareStatement("INSERT INTO JOBDETAIL VALUES(?,?,?,?,?,?,?)");
			pst1.setString(1,jid);
			pst1.setString(2,post);
			pst1.setString(3,criteria);
			pst1.setString(4,vacancies);
			pst1.setString(5,salary);
			pst1.setString(6,lastdate);
			pst1.setString(7,name);
			pst1.executeUpdate();
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveJobDetails- Values in Job_Detail Table has been inserted");
			
			
			PreparedStatement pst2=con.prepareStatement("INSERT INTO EXAM VALUES(?,?,?,?,?,?)");
			pst2.setString(1,jid);
			pst2.setString(2,post);
			pst2.setString(3,null);
			pst2.setString(4,null);
			pst2.setString(5,null);
			pst2.setString(6,name);
			pst2.executeUpdate();
			flag=true;
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveJobDetails- Values in Exam Table has been inserted");
			}
			catch(Exception e){
				System.out.println("ExceptionFrom: com.atuldwivedi.ors.bean.SaveJobDetails- "+e);
			}
			return flag;
		}
}