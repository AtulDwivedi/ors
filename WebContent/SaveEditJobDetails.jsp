<%@page import="com.atuldwivedi.ors.dao.util.ConnectionProvider,java.sql.*;"%>
<jsp:useBean id="sejd" class="com.atuldwivedi.ors.bean.SaveEditJobDetails" />
<jsp:setProperty name="sejd" property="*" />
<%
	String c1=(String) session.getAttribute("s1");
	String name=null;
	try{
		Connection con=ConnectionProvider.getConnection();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT * FROM COMPANYREGISTER WHERE USERNAME='"+c1+"'");
		while(rs.next()){
			name=rs.getString(2);
		}}
		catch(Exception e){
			out.print("ExceptonFrom: file.SaveEditJobDetails- "+e);
		}
		if(sejd.upJobDetails(name)){
			response.sendRedirect("ViewJobDetails.jsp");}
			else{
				response.sendRedirect("EditJob.jsp");
			}
		
%>