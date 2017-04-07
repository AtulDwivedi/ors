<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,com.atuldwivedi.ors.dao.util.*" session="true" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
    </head>
    <body>
  
        <%
        Connection con;
        Statement st;
        ResultSet rs;
        String sql;
        int qno = Integer.parseInt(request.getParameter("qno"));
        int jobId = Integer.parseInt(session.getAttribute("jobId").toString());
        int examId = Integer.parseInt(session.getAttribute("examId").toString());
        String studentid = session.getAttribute("s1").toString();
        String qstn = "", ch1 = "", ch2 = "", ch3 = "", ch4 = "", ans = "";
        try {
            sql = "select * from questions where job_ID='" + jobId + "' and exam_id = '"+examId+"' and Ques_No=" + qno;
           con = ConnectionProvider.getConnection();
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                qstn = rs.getString(4);
                ch1 = rs.getString(5);
                ch2 = rs.getString(6);
                ch3 = rs.getString(7);
                ch4 = rs.getString(8);
                ans = rs.getString(9);
        %>



        <form action="calcmark.jsp" method="post">
            <table width="829" height="244" border="1" bgcolor="#78AFA0" align="center">
                <tr>
                    <td width="148"><strong>Question <%=qno%>
                      of 10
                      </strong>
                      <input type="hidden" name="qno" value="<%=qno%>">                  </td>
                    <td><strong><%=qstn%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>1</strong></div></td>
                    <td width="460">
                      <strong>
                      <input name="ch" type="radio" value="<%=ch1%>">
                      <%=ch1%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>2</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch2%>">
                      <%=ch2%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>3</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch3%>">
                      <%=ch3%></strong></td>
                </tr>
                <tr>
                    <td><div align="center"><strong>4</strong></div></td>
                    <td>
                      <strong>
                      <input name="ch" type="radio" value="<%=ch4%>">
                      <%=ch4%></strong></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="ans" value="<%=ans%>"></td>
                    <%
                if (qno <= 9) {
                    %>
                    <td><input type="submit" name="next" value="Next Question"></td>
                    <%} else {
                    %>
                    <td width="199"><input type="submit" name="Finish" value="Finish"></td>
                    <%                }
                    %>
                </tr>
            </table>
        </form>
        <%            }
        } catch (Exception ex) {
            System.out.println(ex.toString());
        }
    //System.out.println("Marks: "+session.getAttribute("mark"));
%>
        <h1>&nbsp;</h1>
    </body>
</html>
