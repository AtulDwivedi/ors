/*	****	****	****	-> 	Document   : SaveExamCreate
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;

public class SaveExamCreate{
	private String eid;
	private String ename;
	private String coff;
	Connection con=null;
	boolean flag=false;
	
	public void setEid(String eid){
		this.eid=eid;
	}
	public String getEid(){
		return eid;
	}
	public void setEname(String ename){
		this.ename=ename;
	}
	public String getEname(){
		return ename;
	}
	public void setCoff(String coff){
		this.coff=coff;
	}
	public String getCoff(){
		return coff;
	}
	
	public boolean upExamCreate(String  jid, String p){
		String jobid=jid;
		String post=p;
		try{
			if(con==null){
				con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveExamCreate- Connection has been created.");
		}
		String sql="UPDATE EXAM SET EXAM_ID='"+eid+"', EXAM_NAME='"+ename+"', CUTOFF='"+coff+"' WHERE JOB_ID='"+jobid+"' AND POST='"+p+"'";
		Statement stmt=con.createStatement();
		stmt.executeUpdate(sql);
		flag=true;
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveExamCreate- JobDetails have been updated.");
		}
		catch(Exception e){
			System.out.println("Exceptionfrom: com.atuldwivedi.ors.bean.SaveExamCreate- "+e);
		}
		return flag;
	}
}