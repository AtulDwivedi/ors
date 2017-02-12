<%@page import="conn.*,java.sql.*;"%>
<jsp:useBean id="sjd" class="bean.SaveJobDetails" />
<jsp:setProperty name="sjd" property="*" />
<%
 	try{
		HttpSession ss1=request.getSession();
		String c1=(String) session.getAttribute("s1");
		//Connection con=ConnectionProvider.getCon();
		//Statement stmt=con.createStatement();
		//ResultSet rs=stmt.executeQuery("SELECT * FROM COMPANYREGISTER WHERE USERNAME='"+ c1 +"'");
		//String name=null;
		//while(rs.next()){
			//name=rs.getString(2);
		//}
		 if(sjd.insertJobDetails(c1))
 		{
 			response.sendRedirect("CompanyHomePage.jsp");
 		}
		 else
		{
 			response.sendRedirect("AddJobDetails.jsp");
		 }
 	}
	catch(Exception e){
		out.println("JSP Report: file.AddJobDetails- "+e);
	}
		
 %>