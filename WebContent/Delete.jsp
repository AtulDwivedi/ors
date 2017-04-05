<%@page  import="java.sql.*" %>
<%@page import="java.io.*,java.sql.*,java.util.*,com.atuldwivedi.ors.dao.util.*,java.util.Vector;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table>
    
<% try      
      {

      String uid=request.getParameter("uid");
      System.out.println(uid);
          Connection con = ConnectionProvider.getConnection();
           Statement st=con.createStatement();
           Statement st2=con.createStatement(); 
           Statement st3=con.createStatement();
          
       st.executeUpdate("Delete from STUDENTREGISTER where Username='"+uid+"'");
       st2.executeUpdate("Delete from Login where Username='"+uid+"'");
       st3.executeUpdate("Delete from Experienced where Username='"+uid+"'");
       response.sendRedirect("AdminCandidateDetails.jsp");
   }//try
      
    catch(Exception e)
     {
        System.out.println(e);        
     }
%>
    </table>
    </body>
</html>
