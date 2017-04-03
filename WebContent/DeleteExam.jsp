<%@page  import="java.sql.*" %>
<%@page import="conn.*,java.sql.*,java.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
    </head>
    <body>
        <table>
    
<% try      
      {
	  	String jid=request.getParameter("jid");
        String eid=request.getParameter("eid");
		//String jid=(String) session.getAttribute("jobid");
		//String eid=(String) session.getAttribute("eid");
      //String eid=request.getParameter("eid");
      System.out.println(jid);
	  System.out.println(eid);
           Connection con=ConnectionProvider.getCon();
           Statement st=con.createStatement();
     st.executeUpdate("UPDATE EXAM SET EXAM_ID='', EXAM_NAME='', CUTOFF='' WHERE JOB_ID='"+jid+"' AND EXAM_ID='"+eid+"'");
       response.sendRedirect("ExamView.jsp");
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
        
</body>
</html>
