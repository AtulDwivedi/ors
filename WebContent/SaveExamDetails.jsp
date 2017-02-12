<%@page import="java.sql.*,conn.*;" %>
<jsp:useBean id="sed" class="bean.SaveExamDetails" />
<jsp:setProperty name="sed" property="*" />

<%
	String username=null;
	String s2 = null;
	try{
		username=(String) session.getAttribute("s1");
		System.out.println(username);
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT * FROM COMPANYREGISTER WHERE USERNAME='" + username + "'");
		
                                while (rs.next()) {
                                    s2 = rs.getString(2);
                                }
                    
	}
	catch(Exception e){
		System.out.println("The Exception from jsp SaveExamDetails: "+e);
	}
	String jid=(String) session.getAttribute("jobid");
	String post=(String) session.getAttribute("post");
	System.out.println(jid);
	System.out.println(post);
	if(sed.inExamDetails(jid, post,s2)){
		response.sendRedirect("CompanyHomePage.jsp");
	}
	else{
		response.sendRedirect("ExamCreation.jsp");
	}
%>