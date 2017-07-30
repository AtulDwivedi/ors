<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<jsp:useBean id="login" class="com.atuldwivedi.ors.model.Login" />
<jsp:setProperty name="login" property="*" />
<jsp:setProperty name="login" property="userType" value="cand" />

<jsp:useBean id="contact" class="com.atuldwivedi.ors.model.Contact" />
<jsp:setProperty name="contact" property="*" />
<jsp:setProperty name="contact" property="contactType" value="Personal" />

<jsp:useBean id="address" class="com.atuldwivedi.ors.model.Address" />
<jsp:setProperty name="address" property="*" />
<jsp:setProperty name="address" property="addressType" value="Current" />

<jsp:useBean id="education" class="com.atuldwivedi.ors.model.Education" />
<jsp:setProperty name="education" property="*" />

<jsp:useBean id="experience"
	class="com.atuldwivedi.ors.model.Experience" />
<jsp:setProperty name="experience" property="*" />

<jsp:useBean id="candidate" class="com.atuldwivedi.ors.model.Candidate" />
<jsp:setProperty name="candidate" property="*" />

<jsp:setProperty name="candidate" property="contact"
	value="<%=contact%>" />
<jsp:setProperty name="candidate" property="address"
	value="<%=address%>" />
<jsp:setProperty name="candidate" property="education"
	value="<%=education%>" />
<jsp:setProperty name="candidate" property="experience"
	value="<%=experience%>" />


<jsp:useBean id="dao"
	class="com.atuldwivedi.ors.dao.impl.CandidateDaoImpl" />
<jsp:useBean id="loginDao"
	class="com.atuldwivedi.ors.dao.impl.LoginDaoImpl" />
<%
	  if (loginDao.insertLogin(login) > 0) {
		out.println("Login details inserted successfully!");
		if (dao.insertCandidate(candidate) > 0) {
			
			HttpSession ses = request.getSession();
			ses.setAttribute("s1", candidate);
			String candHome = "CandidateHomePage.jsp";
			System.out.println(candHome);
			%>
			<jsp:forward page="<%=candHome%>" />
		 <%
		}
	}  
	
%>