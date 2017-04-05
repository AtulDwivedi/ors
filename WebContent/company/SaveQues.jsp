<jsp:useBean id="sq" class="bean.SaveQues" />
<jsp:setProperty name="sq" property="*" />
<% 	
	String jid=(String) request.getParameter("jobid");
	String eid=(String) request.getParameter("examid");
	System.out.print(jid);
	System.out.print(eid);
	if(sq.addQues(jid, eid)){
		response.sendRedirect("ViewQues.jsp");
	}
	else{
		response.sendRedirect("AddQuestions.jsp");
	}
%>