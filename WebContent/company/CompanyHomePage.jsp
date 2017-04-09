<%-- 
    Document   : CompanyHomePage
    Created on : Nov 11, 2012, 12:44:55 PM
    Author     : user
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>



    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
		<style type="text/css">
<!--
.body {
        margin:0%;
}
a:link {
	color: #000066;
	text-decoration: underline;
}
a:visited {
	text-decoration: underline;
	color: #C0DCC0;
}
a:hover {
	text-decoration: none;
	color: #996666;
}
a:active {
	text-decoration: underline;
	color: #FF9999;
}
.style1 {
	font-size: 16px;
	font-weight: bold;
}
.style2 {font-size: 18px}
.style3 {color: #CBD1D9}
-->
</style>
    </head>
<%-- <% 
	String c1=(String) session.getAttribute("s1");
	//session.setAttribute("s1", c1);
	String name=null;
	Connection con=null;
	try{
		if(con==null){
			con = ConnectionProvider.getConnection();
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM COMPANYREGISTER WHERE USERNAME='"+c1+"'");
			while(rs.next()){
				name=rs.getString(2);
			}
			HttpSession ss3=request.getSession();
            ss3.setAttribute("name", name);
		}
	}
	catch(Exception e){
		out.print("ExceptonFrom: file.CompanyHomePage- "+e);
	}
%>
	  --%>
    
    <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bordercolor="#ECE9D8" bgcolor="#FFFFFF">
          <tr>
            <td height="107" colspan="2" bordercolor="#622D13"><jsp:include page="CompanyHeader.jsp"/></td>
          </tr>
          <tr>
            <td valign="top" height="512" bordercolor="#622D13"><jsp:include page="menu-company.jsp"/></td>
            <td width="961" bordercolor="#622D13" valign="top">
            <img src="<%=request.getContextPath()+"/images/campus-training[1].jpg"%>" width="743" height="356"></td>
          </tr>
    </table>
    </body>
</html>
