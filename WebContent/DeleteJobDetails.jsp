<%@page import="com.atuldwivedi.ors.dao.util.*,java.sql.*;"%>

<%
	String name=(String) session.getAttribute("name");
	String jid=request.getParameter("jid");
	Connection con=null;
	try{
		if(con==null){
			con = ConnectionProvider.getConnection();
		}
		Statement stmt=con.createStatement();
		String sql="DELETE FROM JOBDETAIL WHERE JOB_ID='"+jid+"' AND NAME='"+name+"'";
		stmt.executeUpdate(sql);
		response.sendRedirect("ViewJobDetails.jsp");
	}
	catch(Exception e){
		out.print("ExceptionFrom: file.DeleteJobDetails- "+e);
	}
	
%>