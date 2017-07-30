<%@page contentType="text/html" pageEncoding="UTF-8" session="true" import="java.sql.*"%>
<html>
<head>
<style type="text/css">

<!--
body {
	background-color: #669999;
	
}
-->
</style>
</head>
<body>
<p><font color="#CC0000" size="4">
  <%
        String mark = session.getAttribute("mark").toString();
        String uname = session.getAttribute("s1").toString();
        out.println("Your ID  is:  " + uname + "     You got  "+ mark + " Mark Out of 10");
		 
%><br>
  <span>${sessionScope.user.name}</span>Your Exam completed....
  <br>
  </font></p>
<p>&nbsp;</p>
<p><strong><a href="<%=request.getContextPath() %>/candidate/CandidateHomePage.jsp">Goto Home</a></strong></p>
</body>
</html>
