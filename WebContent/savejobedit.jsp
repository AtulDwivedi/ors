<jsp:useBean id="uec" class="bean.SaveExamCreate" />
<jsp:setProperty name="uec" property="*" />
<%
	String jid=(String) session.getAttribute("jobid");
	String post=(String) session.getAttribute("post");
	System.out.println(jid);
	System.out.println(post);
	if(uec.upExamCreate(jid, post)){
		response.sendRedirect("CompanyHomePage.jsp");
	}
	else{
		response.sendRedirect("ExamCreation.jsp");
	}
%>