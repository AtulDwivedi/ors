<%-- 
    Document   : savecompanydata
    Created on : Nov 14, 2008, 10:39:55 AM
    Author     : user
--%>
<%@page import="java.io.*,java.sql.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
    </head>
    <body bgcolor="#E2C2CB">
        <% try
          {
         
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:OnlineExam");
          
            Statement st=con.createStatement();
          Statement st2=con.createStatement();
          
          String stat="c";
          st2.executeUpdate("insert into Login values('"+request.getParameter("comusername")+"','"+request.getParameter("compassword")+"','"+stat+"')");
          st.executeUpdate("insert into Com(CName,CAddress,CPost,CCriteria,CUsername,CEmail,CContact,CCutoff) values('"+request.getParameter("comname")+"','"+request.getParameter("comaddress")+"','"+request.getParameter("compost")+"','"+request.getParameter("comcriteria")+"','"+request.getParameter("comusername")+"','"+request.getParameter("comemail")+"','"+request.getParameter("comcontact")+"','"+request.getParameter("comcutoff")+"')");
          st.close();
          st2.close();
          
             }
       
        
           catch(Exception e)
                   {
               out.println(e);
                   }
        
           %>
           <font color="red" size="5"><br>
               <%out.println("Registration Successfull!!!");%>
               <br>
               <%out.println("You will be activated soon... ");%>
               <br>
                <p><a href="Login.jsp">Go Forward</a></p>
          </font>
    </body>
</html>
