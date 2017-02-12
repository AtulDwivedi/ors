<%-- 
    Document   : saveexamdetails
    Created on : Nov 18, 2008, 2:42:27 PM
    Author     : Srishti
--%>

<%@page import="java.io.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
    </head>
    <body>
    <table width="100%" height="369" border="1">
<tr>
            <td height="23" colspan="2"><jsp:include page="CandidateHeader.jsp"/></td>
      </tr>
          <tr>
            <td width="1%"><jsp:include page="Candidatemenu.jsp"/></td>
            <td width="99%">
 <% try
          {
           Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
           Connection con=DriverManager.getConnection("jdbc:odbc:OnlineExam");
           Statement st=con.createStatement();
           
      
%>

<table>
<form name="examSelection" action ="examSel.jsp">
jobid<select name="selJobID">
<%ResultSet rs=st.executeQuery("select * from JobDetails");
String s1=new String();
             while(rs.next())
{s1=rs.getString("Post");
%>

<option value=<%=s1%>> <%=s1%></option>
<%
}//while 1
%>


</select><br><br>
Examid<select name="selExam">
<%
ResultSet rs1=st.executeQuery("select * from Exam where Post='"+s1+"'");
while(rs1.next())
{
%>

<option value=<%=rs1.getString("ExamID")%>> <%=rs1.getString("ExamName")%> </option>
<%
}//while 2

             } //try    
           catch(Exception e)
                   {
               out.println(e);
                   }
           %>
</select>
<input type="submit" value="OK">
</form>
</table>
</td>
  </tr>
        </table>
</body>
</html>
