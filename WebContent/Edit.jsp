<%-- 
    Document   : Edit
    Created on : Nov 21, 2008, 12:12:32 PM
    Author     : Srishti
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
<body bgcolor="#ECE9D8" text="#0033FF" link="#CC6600">
     <% try {

//              
                String a=null;
                String b=null;
                String c=null;
                String d=null;
                String e=null;
                String f=null;
                String g=null;
                String c1 = (String)session.getAttribute("s1");
                String c2 = (String)session.getAttribute("s2"); 
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
         out.println(c1);
         out.println(c2);
       
                Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");
                Statement st = con.createStatement();
              
         
        
               // out.println("select * from Com where CUsername='" + c1 + "' and CPassword ='" + c2 + "'");
                
                ResultSet rs = st.executeQuery("select * from Com where CUsername='" + c1 + "'");
                
                
               
               
                
                while (rs.next())
                    {  
                    a=rs.getString(1);
                    b=rs.getString(2);
                    c=rs.getString(3);
                    d=rs.getString(4);
                    e=rs.getString(6);
                    f=rs.getString(7);
                    g=rs.getString(8);
                   
                   
                    %>

<font SIZE="4" COLOR="#993300" face =arial>
<center></center></font>
<table bgcolor=#330099  border=0 cellpadding=0 cellspacing=2 width=80%  align=center >
<tr>
	<td>
<table border=1 cellpadding=0 cellspacing=0 width=100% align=center bgcolor=#FFFFFF>
<tr align=center>
	<td><br><br>
<form method="POST" action="savecompanyedit.jsp" name="form1">
<table border=0 cellpadding=3 cellspacing=0 width =47% align=center>
<tr bgcolor="" width=100%>
    <td><font SIZE="2" COLOR="black" face =arial >Name</font></td>
	<td><input TYPE="text" NAME="cname" size=30 maxlength=30 value="<%=a%>"></td>
</tr>
<tr bgcolor =#FEF7E9>
	<td><font SIZE="2" COLOR="black" face =arial>Address</font></td>
	<td><input TYPE="text" NAME="caddress" size=30 maxlength=50 value="<%=b%>"></td>
</tr>
<tr bgcolor =#FEF7E9>
	<td><font SIZE="2" COLOR="black" face =arial>Post</font></td>
	<td><input TYPE="text" NAME="cpost" size=30 maxlength=50 value="<%=c%>"></td>
</tr>
<tr bgcolor =#FEF7E9>
	<td><font SIZE="2" COLOR="black" face =arial>Criteria</font></td>
	<td><input TYPE="text" NAME="ccriteria" size=30 maxlength=50 value="<%=d%>"></td>
</tr>
<tr  bgcolor =#FEF7E9>
	<td><font SIZE="2" COLOR="black" face =arial>Email_id</font></td>
	<td><input TYPE="text" NAME="cemail" size=30 maxlength=30 value="<%=e%>"></td>
</tr>
<tr>
	<td><font SIZE="2" COLOR="black" face =arial>Contact No:</font></td>
	<td><input TYPE="text" NAME="ccontact" size=4 maxlength=30 ><input TYPE="text" NAME="phone1" value='<%=f%>'><font SIZE="2" COLOR="#CC0000" face =arial>(STD-No.)</td>
</tr>
<tr  bgcolor =#FEF7E9>
	<td><font SIZE="2" COLOR="black" face =arial>CutOff %</font></td>
	<td><input TYPE="text" NAME="ccutoff" size=30 maxlength=30 value="<%=g%>"></td>
</tr>
	<td colspan=2 ><div align="center"><br>
	        <br>
	  <input TYPE="reset">
	  &nbsp;&nbsp;
	  <input TYPE="submit" value="Edit">
	  <br>
	  <br>
	  <br>
	  </div>
	  <p><br></p></td>
</tr>
</table>
</form>
  <input class=USS_TEXT TYPE="hidden" name="dob"  value=''> 
    <input class=USS_TEXT TYPE="hidden" name="phone"  value=''>

<input class=USS_TEXT TYPE="hidden" name="status" value="new">
</td>
</tr>
</table>
<% }//while
     
}
      catch(Exception e)
      {
         out.println(e); 
      }
%>
    </body>
    </html>


