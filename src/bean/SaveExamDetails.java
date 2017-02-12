/*	****	****	****	-> 	Document   : SaveExamDetails
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package bean;
import java.sql.*;
import conn.*;

public class SaveExamDetails{
	private String eid;
	private String ename;
	private String cut_off;
	
	Connection con=null;
	boolean flag=false;
	
	public void setEname(String ename){
		this.ename=ename;
	}
	public String getEname(){
		return ename;
	}
	public void setEid(String eid){
		this.eid=eid;
	}
	public String getEid(){
		return eid;
	}
	public void setCoff(String cut_off){
		this.cut_off=cut_off;
	}
	public String getCoff(){
		return cut_off;
	}

	
	public boolean inExamDetails(String jid, String post, String nm){
		String job_id=jid;
		String p=post;
		String name=nm;
		try{
			if(con==null){
				con=ConnectionProvider.getCon();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: bean.SaveExamDetails- Connection has been created.");
			}
			PreparedStatement pst=con.prepareStatement("INSERT INTO EXAM VALUES(?,?,?,?,?,?)");
			pst.setString(1,job_id);
			pst.setString(2,p);
			pst.setString(3,eid);
			pst.setString(4,ename);
			pst.setString(5,cut_off);
			pst.setString(6,name);
			pst.executeUpdate();
			flag=true;
			System.out.println("JavaReport: bean.SaveExamDetails- Values has been inserted");
		}
		catch(Exception e){
			System.out.println("Exceptionfrom: bean.SaveExamDetails- "+e);
		}
		return flag;
	}
}