package src_temp;
import java.sql.*;
import conn.*;

public class ViewCompRequirement{
	/*public String username;
	public String name;
	public String addr;
	public String post;
	public String criteria;
	public String email;
	public String contact;
	public String cut_off;*/
	Connection con=null;
	ResultSet rs=null;
	//boolean flag=false;
	
	
	public void fetchCompRequirement(){
		try{
			if(con==null){
				con=ConnectionProvider.getCon();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: bean.ViewCompRequirement- Connection has been created.");
			}
			
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM COMPDETAIL");
			/*while(rs.next()){
				if(username.equals(rs.getString(1))){
					username1=rs.getString(1);
					name=rs.getString(2);
					gender=rs.getString(3);
					dob=rs.getString(4);
					collname=rs.getString(5);
					collphone=rs.getString(6);
					email=rs.getString(7);
					branch=rs.getString(8);
					marks=rs.getString(9);
					degree=rs.getString(10);
					emailid=rs.getString(11);
					telephone=rs.getString(12);
					addr=rs.getString(13);
					states=rs.getString(14);
					pincode=rs.getString(15);
					category=rs.getString(16);
					flag=true;
					System.out.println("JavaReport: bean.CandEditProfile- Values from STUDENTREGISTER have been fetched.");
				}*/
			
		}
			catch(Exception e){
				System.out.println("ExceptionFrom: ViewCompRequirement- "+e);
			}
		//return flag;
	}
}
