
<%@page import="conn.*,java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 18px;
                font-weight: bold;
                color: #FF0000;
            }
            .style7 {color: #006666; font-weight: bold; }
            .style9 {color: #663366; font-weight: bold; }
            -->
        </style>
    </head>
    <body style="margin:0px" bgcolor="#FFFFFF">
      <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="107" colspan="2"><jsp:include page="CandidateHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="Candidatemenu.jsp"/></td><td>
                
       
                            <% 
     
        try {Connection con=null;
            
                 
	  con=ConnectionProvider.getCon();
		Statement stmt = con.createStatement();
       %>
       <table width="90%" height="54" border="1" align="center" style="vertical-align:top">


                        <tr>
                            <td width="15%" height="23" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Company Name </div></td>
                            
                            <td width="15%" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Post </div></td>
                            <td width="10%" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Job ID</div></td>
                            <td width="10%" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Exam Id</div></td>
                            <td width="15%" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Exam Name</div></td>
                            <td width="10%" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style9">Cutoff %</div></td>
                            <td width="15%" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center" class="style1">Apply Now</div></td>
                        </tr>

                        <%    
                                ResultSet rs2 = stmt.executeQuery("select * from Exam");

                                while (rs2.next()) {
								String compname = rs2.getString(6);
									String jobid = rs2.getString(1);
									String post = rs2.getString(2);
                                    String examid = rs2.getString(3);
                                    String ename = rs2.getString(4);
                                    String ecut = rs2.getString(5);
									System.out.print(jobid);
									System.out.print(examid);
									//session.setAttribute("jobid", jobid);
                        %>
                        <tr valign="top">
                        <td bordercolor="#344631" bgcolor="#F8E0E0"><div align="center"><%=compname%></div></td>
                       <td bordercolor="#344631" bgcolor="#F8E0E0"><div align="center"><%=post%></div></td>
                       <td bordercolor="#344631" bgcolor="#F8E0E0"><div align="center"><%=jobid%></div></td>
                        <td height="23" bordercolor="#344631" bgcolor="#F8E0E0"><div align="center"><%=examid%></div></td>
                       <td bordercolor="#344631" bgcolor="#F8E0E0"><div align="center"><%=ename%></div></td>
                       <td bordercolor="#344631" bgcolor="#F8E0E0"><div align="center"><%=ecut%></div></td>
                      <td bordercolor="#344631" bgcolor="#F8E0E0"><div align="center">
                      <a href="ExamConditions.jsp?examid=<%=examid%>&jobid=<%=jobid%>">Apply now</a></div></td>
                      </tr>
                    <% session.setAttribute("jobid", jobid);
                
            }
        } catch (Exception e) {
            System.out.println("The Exception From JSP AllExams: "+e);
        }
                        %></td></table></tr>
                    </table>

             
    </body>
</html> 