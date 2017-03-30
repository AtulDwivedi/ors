<%-- 
    Document   : AdminCompanyDetails
    Created on : Nov 15, 2012, 12:50:40 PM
    Author     : user
--%>
<%@page import="java.io.*,java.sql.*,conn.*;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
        <style type="text/css">
<!--
.style1 {color: #3300CC}
.style4 {color: #003300}
-->
        </style>
</head>
    <body>
        <table width="100%" height="522" border="1" >
  <tr>
    <td height="95" colspan="2" bgcolor="#666734"><jsp:include page="AdminHeader.jsp"/></td>
  </tr>
   <tr>
    <td width="1%" bgcolor="#666734"><jsp:include page="Adminmenu.jsp"/></td>
    <td bgcolor="#FFFFFF" valign="top">
    <table width="100%" height="78" border="1" align="center" bordercolorlight="#CC0099" bgcolor="#F2E4D9">
      <tr>
        <td height="23" colspan="8" bordercolor="#CC9999" ><div align="center" class="style63 style8 style1"><strong>Company Details </strong></div></td>
      </tr>
      <tr>
        <td width="129" height="23" bordercolor="#CC9999"><div align="center" class="style64 style7 style4"><strong>Company Name</strong></div></td>
        <td width="103" height="23" bordercolor="#CC9999"><div align="center" class="style64 style7 style4"><strong>Address</strong></div></td>
        <td width="117" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Post</strong></div></td>
        <td width="98" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Username</strong></div></td>
        <td width="89" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Phone</strong></div></td>
        <td width="109" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Email ID</strong></div></td>
        <td width="69" bordercolor="#CC9999" ><div align="center" class="style64 style7 style4"><strong>Cutoff % </strong></div></td>
        <td width="66" bordercolor="#CC9999" ><div align="center" class="style7 style64 style4"><strong>Delete</strong></div></td>
      </tr>
      <%
   
      try
              {
			  Connection con=ConnectionProvider.getCon();
      Statement st=con.createStatement();
      ResultSet rs=st.executeQuery("select * from COMPANYREGISTER");
      String cname;
      String name="",add="",post="",uname="",phone="",email="",cutoff="";

        while(rs.next())
            {
            name=rs.getString(2);
            add=rs.getString(3);
            post=rs.getString(4);
            uname=rs.getString(1);
            phone=rs.getString(7);
            email=rs.getString(6);
            cutoff=rs.getString(8);
      %>
      <tr>
        <td height="22" bordercolor="#CC9999" ><div align="center"><span class="style6">
          <%=name%>
        </span></div></td>
        <td bordercolor="#CC9999" ><div align="center"><span class="style6">
          <%=add%>
        </span></div></td>
        <td bordercolor="#CC9999" ><div align="center"><span class="style6">
          <%=post%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=uname%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=phone%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=email%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <%=cutoff%>
        </span></div></td>
        <td bordercolor="#CC9999"><div align="center"><span class="style6">
          <% out.println("<a href='ComDelete.jsp?id="+uname+"'>Delete</a>");%>
        </span></div></td>
      </tr>
      <%
      }
      }
      catch(Exception e)
              {
          out.println(e);
              }
            %>
    </table>
   	 </td>
  </tr>
</table>
</body>
</html>

