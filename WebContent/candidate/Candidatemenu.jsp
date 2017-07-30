<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Recruitment System</title>
<style type="text/css">
<!--
.style2 {
	font-size: 14px;
	font-family: "Times New Roman", Times, serif;
}
-->
</style>
</head>

<body>
<table width="151" border="0">
  <tr>
    <td width="145" height="531" valign="top"><p><img src="<%=request.getContextPath()+"/images/jobseekersign[1].gif"%>" width="145" height="162" /></p>
  <p align="left"><strong><span class="style2"><a href="index.jsp">Home</a><br>
          <a href="<%=request.getContextPath() %>/CandidateServlet/Edit">EditProfile</a><br>
          <a href="<%=request.getContextPath() %>/candidate/ChangeCandPass.jsp">Change Password</a><br>
          <a href="<%=request.getContextPath() %>/candidate/CompanyDetails.jsp">View Company Details</a><br>
          <a href="<%=request.getContextPath() %>/candidate/AllExams.jsp">All Exam</a><br>
          <a href="<%=request.getContextPath() %>/candidate/OnlineJobs.jsp">OnLine Jobs</a><br>
         
          <a href="<%=request.getContextPath() %>/candidate/canexamresult.jsp">Exam Results</a><br>
        <a href="<%=request.getContextPath() %>/common/Login.jsp">LogOut</a></span><br>
    </strong></p></td>
  </tr>
</table>
</body>
</html>
