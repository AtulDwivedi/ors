<%-- 
    Document   : savestudentdata
    Created on : Nov 22, 2008, 11:20:05 AM
    Author     : Srishti
--%>


<%@page import="java.io.*,java.sql.*;" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
    </head>
    <body bgcolor="#D9EEFB">
        <p>
       /*  <% try
          {
           
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:OnlineExam");
           Statement st=con.createStatement(); 
           Statement st2=con.createStatement();
           Statement st3=con.createStatement();
           String status="s";
           st2.executeUpdate("insert into Login values('"+request.getParameter("username")+"','"+request.getParameter("password")+"','"+status+"')");
           st.executeUpdate("insert into Details values('"+request.getParameter("username")+"','"+request.getParameter("name")+"','"+request.getParameter("gender")+"','"+request.getParameter("dob")+"','"+request.getParameter("college")+"','"+request.getParameter("collegephone")+"','"+request.getParameter("collegeemail")+"','"+request.getParameter("branch")+"','"+request.getParameter("markDegree")+"','"+request.getParameter("degree")+"','"+request.getParameter("email")+"','"+request.getParameter("telephone")+"','"+request.getParameter("address")+"','"+request.getParameter("state")+"','"+request.getParameter("pin")+"','"+request.getParameter("sel_cat")+"')");
		   if(request.getParameter("sel_cat").equals("Experienced"))
		   {
           st3.executeUpdate("insert into Experienced values('"+request.getParameter("username")+"','"+request.getParameter("expyears")+"','"+request.getParameter("company")+"','"+request.getParameter("designation")+"','"+request.getParameter("salary")+"','"+request.getParameter("comAddress")+"')");
		   }
           st.close();
           st2.close();
           st3.close();
           }
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
%>*/
          
            <font color="red" size="5"> You have registered successfully!!!<br>
        </font></p>
        <p><a href="Login.jsp"><strong>Go Forward</strong></a></p>
</body>
</html>

