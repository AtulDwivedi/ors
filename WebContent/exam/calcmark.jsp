<form id="form1" name="form1" method="post" action="calcmark.jsp">
    <input name="OK" type="submit" id="OK" value="Submit" />
</form>
<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*,conn.*" session="true" %>
<%
        Connection con;
        Statement st;
        ResultSet rs;
        String sql;

        int mark = Integer.parseInt(session.getAttribute("mark").toString());
        String ch = request.getParameter("ch");
        String ans = request.getParameter("ans");
        int qno = Integer.parseInt(request.getParameter("qno"));
        if (ch != null) {
		System.out.println("Question No.: "+qno);
		System.out.print("Selected Choice: "+ch);System.out.print("    ");System.out.println("Answer: "+ans);
		// System.out.println("Choosed=" + ch + "  Answer=" + ans + "   Question No.=" + qno + "   Mark=" + mark);
            ch = ch.trim();
			ans = ans.trim();
            if (ch.equalsIgnoreCase(ans)) {
                mark++;
                session.setAttribute("mark", mark);

            }
			System.out.println("Marks: "+mark);
        }
        if (qno < 10) {
            response.sendRedirect("dispqst.jsp?qno=" + (qno + 1));
        } else {
            try {
				
                String studentid = session.getAttribute("s1").toString();
				System.out.println("CAND_ID: "+studentid);
                sql = "delete from Temp_Data where CAND_ID='" + studentid + "'";
                con=ConnectionProvider.getCon();
                st = con.createStatement();
                st.executeUpdate(sql);
				System.out.println("MessageToTeam: Temp_Table has been Truncated.");

                String examID = session.getAttribute("examid").toString();
				System.out.println("EXAM_ID: "+examID);
                String jobID = session.getAttribute("jobid").toString();
				System.out.println("JOB_ID: "+jobID);
                mark=Integer.parseInt(session.getAttribute("mark").toString());
				System.out.println("Marks: "+mark);
                sql="Insert into EXAM_RESULT values('" + studentid + "','" +  examID + "','" + jobID + "'," + mark + ")";
                st.executeUpdate(sql);
                response.sendRedirect("dispresult.jsp");
            } catch (Exception ex) {
                System.out.println("The Exception from JSP file.calcmark: "+ex.toString());
            }

        }

%>