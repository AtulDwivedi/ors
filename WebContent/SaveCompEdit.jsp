<jsp:useBean id="scoe" class="bean.SaveCompEdit" />
<jsp:setProperty name="scoe" property="*" />
<%
	String c1=(String) session.getAttribute("s1");
	System.out.println(c1); 
	if(scoe.editInsert(c1))
	{
		System.out.println("JSP Report:  jsp.SaveCompEdit- Valuse are successfully inserted.");
		response.sendRedirect("CompanyHomePage.jsp");
	}
	else
	{
		System.out.println("JSP Report:  jsp.SaveCompEdit- Valuse did't insert.");
		response.sendRedirect("EditCompProfile.jsp");
	}

%>








