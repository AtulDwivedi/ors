
<%@page import="java.io.*,java.sql.*,conn.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 18px;
	color: #CC3333;
}
.style2 {color: #003399}
-->
        </style>
</head>
    <body>
    <table width="100%" border="1" bordercolor="#ECE9D8" bgcolor="#FFFFFF">
<tr>
            <td height="56" colspan="2" bordercolor="#622D13"><jsp:include page="CandidateHeader.jsp"/></td>
          </tr>
          <tr>
            <td height="512" bordercolor="#622D13"><jsp:include page="Candidatemenu.jsp"/></td>
            <td bordercolor="#622D13" valign="top">
            
            <table width="90%" height="89" border="1" align="center">
      <tr>
        <td height="24" colspan="7" bordercolor="#20450A" bgcolor="#E3DFE2" ><div align="center" class="style63 style8 style1"><strong>Company Details </strong></div></td>
      </tr>
      <tr>
        <td width="99" height="27" bordercolor="#20450A" bgcolor="#CAC297"><div align="center" class="style64 style7 style2"><strong>Name</strong></div></td>
        <td width="100" bordercolor="#20450A" bgcolor="#CAC297" ><div align="center" class="style64 style7 style2"><strong>Address</strong></div></td>
        <td width="76" bordercolor="#20450A" bgcolor="#CAC297" ><div align="center" class="style64 style7 style2"><strong>Post</strong></div></td>
        <td width="86" bordercolor="#20450A" bgcolor="#CAC297" ><div align="center" class="style64 style7 style2"><strong>Criteria</strong></div></td>
        <td width="94" bordercolor="#20450A" bgcolor="#CAC297" ><div align="center" class="style64 style7 style2"><strong>Email</strong></div></td>
        <td width="102" bordercolor="#20450A" bgcolor="#CAC297" ><div align="center" class="style64 style7 style2"><strong>ContactNo:</strong></div></td>
        <td width="81" bordercolor="#20450A" bgcolor="#CAC297" ><div align="center" class="style64 style7 style2"><strong>Cutoff % </strong></div></td>
      </tr>
     
   
   
   
  
    <%
		Connection con=null;
	    //ResultSet rs=null;
		try{
			if(con==null){
				con=ConnectionProvider.getCon();
				System.out.println("            ...!!!...            ");
				System.out.println("JavaReport: bean.ViewCompRequirement- Connection has been created.");
			}
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM COMPANYREGISTER");
		
		//vcr.fetchCompRequirement();
		
			while(rs.next())
			{
	%>
			
		
      <tr>
        <td height="28" align="center" bordercolor="#20450A" bgcolor="#E9DDD6" ><span class="style6">
        <% out.println(rs.getString(2));%>
        </span></td>
      <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6" ><span class="style6">
          <% out.println(rs.getString(3));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6" ><span class="style6">
          <% out.println(rs.getString(4));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getString(5));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getString(6));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getString(7));%>
        </span></td>
        <td bordercolor="#20450A" align="center" bgcolor="#E9DDD6"><span class="style6">
          <% out.println(rs.getString(8));%>
        </span></td>
      </tr>
      <%
	  }
	  }
			catch(Exception e){
				System.out.println("ExceptionFrom: ViewCompRequirement- "+e);
			}
		%>
    </table>
            </td>
      </tr>
    </table>
        
</body>
</html>
