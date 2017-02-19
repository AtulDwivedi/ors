
<%@page import="conn.*,java.sql.*,com.atuldwivedi.ors.dao.util.ConnectionProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #003399;
	font-weight: bold;
}
.style6 {color: #006633; font-weight: bold; }
.style7 {color: #663300}
.style9 {color: #663300; font-weight: bold; }
-->
        </style>
</head>
         <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
          <tr>
            <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
          </tr>
          <tr>
            <td width="121" height="512"><jsp:include page="menu-company.jsp"/></td>
            <td width="961" bordercolor="#663366" bgcolor="#CC9999" valign="top"><table width="100%" height="50%" border="1" align="right" bordercolor="#996666" bgcolor="#999933">
              <tr >
                <td height="100%"  colspan="8" bordercolor="#516415" bgcolor="#CAA899" ><div align="center"><span class="style1">Job Details</span></div></td>
              </tr>
              <tr>
                
                <td width="50" height="23" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Job ID </div></td>
                <td width="65" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Post</div></td>
                <td width="91" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Criteria</div></td>
                <td width="104" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Vacancies</div></td>
                <td width="144" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Salary/Annum</div></td>
                <td width="105" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">LastDate</div></td>
                <td width="73" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9"><a href="EditJob.jsp">Edit</a></div></td>
                <td width="56" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9"><a href="DeleteJobDetails.jsp">Delete</a></div></td>
              </tr>
              <%
    
		Connection con=null;
	    //ResultSet rs=null;
		try{
			if(con==null){
				con=ConnectionProvider.getConnection();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: bean.ViewCompRequirement- Connection has been created.");
			}
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM JOBDETAIL where name = '"+(String)session.getAttribute("s1")+"'");
		
		//vcr.fetchCompRequirement();
		
			while(rs.next())
			{
	%>
			
		
      <tr>
        <td height="28" align="center" bordercolor="#20450A" bgcolor="#E9DDD6" ><span class="style6">
        <% out.println(rs.getLong(1));%>
        </span></td>
      <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6" ><span class="style6">
          <% out.println(rs.getString(2));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6" ><span class="style6">
          <% out.println(rs.getString(3));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getInt(4));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getLong(5));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getString(6));%>
        </span></td>
         <td bordercolor="#516415" bgcolor="#CAA899"><div align="center"> <a href="EditJob.jsp?jid=<% out.println(rs.getString(1));%>"><strong>Edit</strong></a></div></td>
                <td bordercolor="#516415" bgcolor="#CAA899"><div align="center"> <a href="JobServlet/delete?jobId=<% out.println(rs.getString(1));%>"><strong>Delete</strong></a></div></td>
      </tr>
      <%
	  }
	  }
			catch(Exception e){
				System.out.println("ExceptionFrom: ViewJobDetails- "+e);
			}
		%>
    </table>
            </td>
      </tr>
    </table>
        
</body>
</html>
