<%-- 
    Document   : ExamView
    Created on : Nov 18, 2012, 2:27:28 PM
    Author     : Atul Dwivedi
--%>
<%@page
	import="java.util.*,com.atuldwivedi.ors.model.Exam" %>
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
	font-weight: bold;
	color: #FF0000;
}

.style7 {
	color: #006666;
	font-weight: bold;
}

.style9 {
	color: #663366;
	font-weight: bold;
}
-->
</style>
</head>
<body style="margin: 0px" bgcolor="#FFFFFF">
	<table width="100%" border="1" bgcolor="#FFFFFF">
		<tr>
			<td height="23" colspan="2"><jsp:include
					page="CompanyHeader.jsp" /></td>
		</tr>
		<tr>
			<td width="1" height="537"><jsp:include page="menu-company.jsp" /></td>
			<td width="961" bgcolor="#EDE0E2" valign="top">
				<form name="form1" action="view">
					<table width="277" height="128" border="0" align="center">
						<tr>
							<td height="49" colspan="2"><div align="center"
									class="style1">Exam View</div></td>
						</tr>
						<tr>
							<td width="135" height="42"><span class="style7">Select
									a JobID </span></td>
							<td width="132"><label> <select name="selectedJobId">
							<option value="">--Select--</option>
										 <% List<Long> jobIds = (List<Long>)request.getAttribute("jobIds"); 
                                for(int i=0; i<jobIds.size(); i++){
                                	%><option value="<%=jobIds.get(i)+"" %>"><%=jobIds.get(i)%></option><%
                                }
                                %>
								</select>
							</label></td>
						</tr>
						<tr>
							<td><input type="submit" value="Show Details"></td>
						</tr>
					</table>
				</form>

<% if(request.getParameter("selectedJobId") != null){
	
	%>

				<table width="549" height="54" border="1" align="center"
					style="vertical-align: top">

					<tr>
						<td width="98" height="23" bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center" class="style9">Exam ID</div></td>
						<td width="139" bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center" class="style9">Exam Name</div></td>
						<td width="104" bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center" class="style9">Cutoff %</div></td>
						<td width="89" bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center" class="style9">Edit</div></td>
						<td width="85" bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center" class="style9">Delete</div></td>
					</tr>


					<%
					Exam exam = null;
					List<Exam> exams1 = (List<Exam>)request.getAttribute("exams");
					for(int i=0; i < exams1.size(); i++){
                        
					
                                if(((Long)exams1.get(i).getJobId()).toString().equals(request.getParameter("selectedJobId"))){
                                	exam = exams1.get(i);
                                
					
                                %>
					<tr valign="top">
						<td height="23" bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center"><%=exam.getExamId()%></div></td>
						<td bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center"><%=exam.getExamName()%></div></td>
						<td bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center"><%=exam.getCutOff()%></div></td>
						<td bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center">
								<a
									href="<%=request.getContextPath()+"/ExamServlet/show-edit?examId="+exam.getExamId()+"&jobId="+exam.getJobId()%>">Edit</a>
							</div></td>
						<td bordercolor="#344631" bgcolor="#F8E0E0"><div
								align="center">
								<a
									href="<%=request.getContextPath()+"/ExamServlet/delete?examId="+exam.getExamId()+"&jobId="+exam.getJobId()%>">Delete</a>
							</div></td>
						<%}}}%>
					
				</table>

			</td>
		</tr>
	</table>
</body>
</html>
