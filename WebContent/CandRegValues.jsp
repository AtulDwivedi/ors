<jsp:useBean id="candlogval" class="com.atuldwivedi.ors.bean.CandLogValues"/>
<jsp:useBean id="candregval" class="com.atuldwivedi.ors.bean.CandRejValues"/>
<jsp:setProperty name="candlogval" property="*"/>
<jsp:setProperty name="candregval" property="*"/>
<%
	if(candlogval.candLogInsert()){ 
		if(candregval.candInsert())
			response.sendRedirect("Login.jsp");
		else
			response.sendRedirect("index.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
	
%>
