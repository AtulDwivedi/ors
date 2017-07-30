<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,java.util.Vector,com.atuldwivedi.ors.dao.util.*;"%>
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

      String qno=request.getParameter("qno");
       String jid=request.getParameter("jid");
        String eid=request.getParameter("eid");
      out.println(qno);
           Connection con = ConnectionProvider.getConnection();
           Statement st=con.createStatement();
     st.executeUpdate("Delete from Questions where Ques_No="+qno+" and Exam_ID='" + eid +
             "' and Job_ID='" + jid + "'");
       response.sendRedirect("ViewQues.jsp?jobid=" + jid + "&examid=" + eid);
   }//try
      
    catch(Exception e)
     {
        out.println(e);        
     }
%>
    </table>
    </body>
</html>
