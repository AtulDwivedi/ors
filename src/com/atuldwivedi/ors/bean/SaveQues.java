/*	****	****	****	-> 	Document   : SaveQues
							->	Created On : January 14, 2012
							->	Programmer : Online Recruitment Project Team
																				****	****	****	*/
	
package com.atuldwivedi.ors.bean;
import com.atuldwivedi.ors.dao.util.ConnectionProvider;
import java.sql.*;


public class SaveQues{
	private String qno;
	private String question;
	private String option1;
	private String option2;
	private String option3;
	private String option4;
	private String answer;
	Connection con=null;
	boolean flag=false;
	
	public void setQno(String qno){
		this.qno=qno;
	}
	public String getQno(){
		return qno;
	}
	public void setQuestion(String question){
		this.question=question;
	}
	public String getQuestion(){
		return question;
	}
	public void setOption1(String option1){
		this.option1=option1;
	}
	public String getOption1(){
		return option1;
	}
	public void setOption2(String option2){
		this.option2=option2;
	}
	public String getOption2(){
		return option2;
	}
	public void setOption3(String option3){
		this.option3=option3;
	}
	public String getOption3(){
		return option3;
	}
	public void setOption4(String option4){
		this.option4=option4;
	}
	public String getOption4(){
		return option4;
	}
	public void setAnswer(String answer){
		this.answer=answer;
	}
	public String getAnswer(){
		return answer;
	}
	
	public boolean addQues(String jobid, String examid){
		String jid=jobid;
		String eid=examid;
		try{
			if(con==null){
				con = ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveQues- Connection has been created.");
		}
		PreparedStatement pst=con.prepareStatement("INSERT INTO QUESTIONS VALUES(?,?,?,?,?,?,?,?,?)");
		pst.setString(1,jid);
		pst.setString(2,eid);
		pst.setString(3,qno);
		pst.setString(4,question);
		pst.setString(5,option1);
		pst.setString(6,option2);
		pst.setString(7,option3);
		pst.setString(8,option4);
		pst.setString(9,answer);
		pst.executeUpdate();
			flag=true;
			System.out.println("JavaReport: com.atuldwivedi.ors.bean.SaveQues- Values has been inserted");
		}
		catch(Exception e){
			System.out.println("Exceptionfrom: com.atuldwivedi.ors.bean.SaveQues- "+e);
		}
		return flag;
	}
		}
	
	