<jsp:useBean id="sq" class="com.atuldwivedi.ors.bean.SaveQues" />
<jsp:setProperty name="sq" property="*" />
<% 	
	String jid=(String) request.getParameter("jobid");
	String eid=(String) request.getParameter("examid");
	System.out.print(jid);
	System.out.print(eid);
	if(sq.addQues(jid, eid)){
		%>
		<jsp:forward page="ViewQues.jsp" />
		<%
	}
	else{
	%>
	<jsp:forward page="AddQuestions.jsp" />
		<%
	}
%>