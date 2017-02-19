<%-- 
    Document   : ExamView
    Created on : Nov 18, 2012, 2:27:28 PM
    Author     : Atul Dwivedi
--%>
<%@page import="java.io.*,java.sql.*,com.atuldwivedi.ors.dao.util.ConnectionProvider;"%>
<%@page contentType="text/html" pageEncoding="UTF-8"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
        <script language="javascript">
            function check()
		{
			var a= document.frm.exname.value;
			var b= document.frm.cutoff.value;
			if(document.frm.postname.value=="")
            {
                alert("Enter Post Name");
                document.frm.postname.focus();
                return false;
            }
            
			if(document.frm.exname.value=="")
            {
                alert("Enter Exam Name");
                document.frm.exname.focus();
                return false;
            }
			
			if(document.frm.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.frm.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.frm.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.frm.cutoff.focus();
                return false;
            }

			return true;
		}
		</script>
       
    </head>
    <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF" >
            <tr>
                <td height="23" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="537"><jsp:include page="Companymenu.html"/></td>
                <td width="961" bgcolor="#EDE0E2" valign="top">
                    <%
                    String jid = request.getParameter("jobId");
                    String eid = request.getParameter("examId");
					Connection con = ConnectionProvider.getConnection();
Statement st = con.createStatement();
        ResultSet rs = st.executeQuery("select * from Exam where Job_ID=" + Long.parseLong(jid) + " and Exam_ID=" + Long.parseLong(eid));
        String post = "", exname = "";
        double cutoff = 0;
        if (rs.next()) {
            post = rs.getString(2);
            exname = rs.getString(4);
            cutoff = rs.getDouble(5);
        }
                    %>
                    <form name="frm" action="edit" method="post" onsubmit="return check()">
                        <table width="449" border="1" align="center">
                            <tr>
                                <td colspan="2"><div align="center"><strong>Edit Exam Details</strong></div></td>
                            </tr>
                            <tr>
                                <td>Post</td>
                                <td><input type="text" name="post" id="postname" value="<%=post%>"></td>
                            </tr>
                            <tr>
                                <td>Exam Name</td>
                                <td><input type="text" name="examName" id="exname" value="<%=exname%>"></td>
                            </tr>
                            <tr>
                                <td>Cutoff</td>
                                <td><input type="text" name="cutOff" id="cutoff" value="<%=cutoff%>"></td>
                            </tr>
                            <tr>
                                <td colspan="2" align="center">
                                    <input name="jobid" type="hidden" id="jobId" value="<%=jid%>">
                                    <input name="examid" type="hidden" id="examId" value="<%=eid%>">
                                <input type="submit" name="update" id="update" value="Update" ></td>
                            </tr>
                            <tr>
                               <%--  <td colspan="2" align="center"><%=msg%></td> --%>
                            </tr>
                        </table>
                    </form>
                <p>&nbsp;</p></td>
            </tr>
        </table>
    </body>
</html> 