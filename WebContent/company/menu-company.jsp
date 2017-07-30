<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Company menu</title>
<style type="text/css">
<!--
.style4 {color: #706C25; font-weight: bold; }
.style7 {color: #0000CC}
-->
</style>
</head>

<body>
<table width="160" height="593" border="0" bordercolor="#CD9967" bgcolor="#666734">
  <tr>
  	<td width="155" valign="top" bgcolor="#CD9967">
      <p align="center"><img src="<%=request.getContextPath()+"/images/logo[1] copy.jpg"%>" width="160" height="150"/></p>
	  <p>
      <ul>
	    <li><a href="<%=request.getContextPath() +"/index.jsp" %>">Home</a><br>
        </li><li><a href="<%=request.getContextPath() +"/EditCompanyDetailsServlet" %>">Edit Profile</a><br>
        </li><li><a href="<%=request.getContextPath() +"/company/ComChangePassword.jsp" %>">Change Password</a><br>
        <span class="style4"> Job Details</span></li>
        <li><a href="<%=request.getContextPath() +"/company/AddJobDetails.jsp" %>"> Add</a><br>
        </li>
        <li><a href="<%=request.getContextPath() +"/company/ViewJobDetails.jsp" %>">View</a><br> 
          <span class="style4">Exam</span><br>
        </li>
        <li><a href="<%=request.getContextPath() +"/ExamServlet/create" %>">Exam Creation</a></li>
        <li><a href="<%=request.getContextPath() +"/ExamServlet/view" %>">Exam View</a><br>
        <span class="style4">Question</span></li>
        <li><a href="<%=request.getContextPath() +"/company/AddQuestions.jsp" %>">Add</a><br>
        </li>
        <li><a href="<%=request.getContextPath() +"/company/ViewQues.jsp" %>">View</a><br>
        </li>
        <li><a href="<%=request.getContextPath() %>/common/Login.jsp"> LogOut</a></li>
        <br>
      </ul>
    </p></td>
  </tr>
</table>

</body>
</html>
