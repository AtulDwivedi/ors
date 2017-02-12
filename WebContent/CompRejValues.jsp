<jsp:useBean id="complogval" class="bean.CompLogValues"/>
<jsp:useBean id="compregval" class="bean.CompRejValues"/>
<jsp:setProperty name="complogval" property="*"/>
<jsp:setProperty name="compregval" property="*"/>
<%
	if(complogval.compLogInsert()){ 
		if(compregval.compRegInsert())
			response.sendRedirect("Login.jsp");
		else
			response.sendRedirect("index.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
	
%>
