
<%@page import="java.io.*,conn.*,java.sql.*;"session="true"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
        
        Statement st = null, st2 = null;
        ResultSet rs = null;
        String sql = null;
        try {
            Connection con=ConnectionProvider.getCon();
            st = con.createStatement();
        } catch (Exception ex) {
			System.out.print(ex);
            System.out.println("Error: " + ex.toString());
        }
%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 18px;
                font-weight: bold;
                color: #FF0000;
            }
            .style7 {color: #006666; font-weight: bold; }
            .style14 {color: #006699}
            -->
        </style>
    </head>
    <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="107" colspan="2"><jsp:include page="CandidateHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="Candidatemenu.jsp"/></td>
                <td width="961" bgcolor="#D8E7E7" valign="top">
                    <table width="304" height="243" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="center" class="style1">
                                    <p>Exam</p>
                                    <p>&nbsp;</p>
                            </div></td>
                        </tr>
                        <tr>


                        <% String post = null;
        String jobid = request.getParameter("jobid");
		System.out.println(jobid);
        try {
       			Connection con=ConnectionProvider.getCon();
				Statement stmt=con.createStatement();
                sql = "select * from Exam where Job_ID='" + jobid + "'";
                ResultSet rs1 = stmt.executeQuery(sql);
               
                if (rs1.next()) {
                                    post = rs1.getString(2);
                               }}
							   catch(Exception e){
							   System.out.print("This Exception from ExamConduct :"+e);}

                        %> <form name="examSelection" action ="ExamConditions.jsp">
                        	<tr>
                            	<td><span class="style7">JobID :</span></td>
                                <td align="center"><% out.println(jobid); %></td>
                            <tr>
                                <td><span class="style7">Post Name :</span></td>
                                <td align="center"><%=post%></td>
                                <td width="11">&nbsp;</td>
                            </tr>

                            <tr>
                                <td height="30" class="style7">&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td height="30" class="style7">Select an Exam</td>
                                <td><select name="examid">

                                        <%
										try{
                                sql = "select * from Exam where Job_ID='" + jobid + "'";
                                rs = st.executeQuery(sql);
                                String exname = null;
                                String examid = null;
                                while (rs.next()) {
                                    examid = rs.getString(3);
                                    exname = rs.getString(4);
                                    out.println("<option value='" + examid + "'>" + exname + "</option>");
                                }
                                        %>
                                    </select>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="style7"><div align="center">
                                        <input type="submit" value="OK ">
                                </div></td>
                            </tr>
                        </form>
                    </table>
                    <p>&nbsp;</p>

                    <%

                session.setAttribute("jobid", request.getParameter("jobid"));
                
				
            
        }//try
        catch (Exception e) {
            System.out.println("this exception from ExamConduct :"+e);
        }
                    %>

                </td>

            </tr>
        </table>
    </body>
</html>
