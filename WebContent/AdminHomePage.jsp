<%-- 
    Document   : AdminHomePage
    Created on : Dec 3, 2012, 11:39:04 AM
    Author     : Atul Dwivedi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
    
       <style type="text/css">
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

</style>
</head>
    <body style="margin:0px" >
        <table width="100%" height="504" border="0" valign="top">
          <tr>
            <td height="23" colspan="2" bgcolor="#666734"><jsp:include page="AdminHeader.jsp"/></td>
          </tr>
          <tr>
            <td width="1%" align="left" bgcolor="#666734"><jsp:include page="Adminmenu.jsp"/></td>
            <td bgcolor="#CCCCCC" valign="top">
              <div align="right">
                <%

            if(request.getParameter("id")!=null && request.getParameter("id").equalsIgnoreCase("pwc")){
                out.println("<font color=\"red\" >Password changed Successfully</font>");
			
			}
			%>
            <img src="images\home_recruitment_link[1].jpg" width="100%" height="349"></div></td>
          </tr>
    </table>
</body>
</html>
