<jsp:useBean id="log" class="com.atuldwivedi.ors.bean.Login" />
<jsp:setProperty name="log" property="*" />
<%
			String s1 = request.getParameter("username");
            String s2 = request.getParameter("password");
			HttpSession ss1=request.getSession();
            HttpSession ss2=request.getSession();
			ss1.setAttribute("s1", s1);
            ss2.setAttribute("s2", s2);
			
			if(log.login(s1, s2))
			{
				if(log.status.equals("admin"))
				{
					response.sendRedirect("AdminHomePage.jsp");
				}
				else if(log.status.equals("comp"))
				{
					response.sendRedirect("CompanyHomePage.jsp");
				}
				else if(log.status.equals("cand"))
				{
					response.sendRedirect("CandidateHomePage.jsp");
				}
				else
				{
					response.sendRedirect("index.jsp");
				}
			}
			else
			{
				response.sendRedirect("Login.jsp");
			}
%>