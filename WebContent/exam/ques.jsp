<%@ page contentType="text/html; charset=utf-8" language="java"  import="java.sql.*" errorPage="" %>
<%@page import="java.io.*,com.atuldwivedi.ors.dao.util.*,java.sql.*;" session="true" %>

<%

	

            try {


		String studentid=session.getAttribute("s1").toString();
		String jobID=session.getAttribute("jobId").toString();
		String examID=session.getAttribute("examId").toString();
		
		 System.out.println("Student ID is : "+studentid);
		System.out.println("Job ID is : "+jobID);
		System.out.println("Exam ID is : "+examID);
        

		Connection con = null;
        Statement st = null;
        ResultSet rs = null;
        String sql = null;
		int n;
		
                for (n = 0; n < 10; n++) {
					 con = ConnectionProvider.getConnection(); 
					
					 st=con.createStatement();
      rs = st.executeQuery("select * from Questions Where Job_ID='" + jobID + "' and Exam_ID='" + examID + "' and Ques_No='" + (n+1) + "'");
 
  if (rs.next()) {sql="insert into Temp_Data values('" + studentid + "'," + (n+1) + ",'" + rs.getString(4) +"','" + rs.getString(5) +"','" +rs.getString(6) +"','" + rs.getString(7) + "','" +rs.getString(8) + "','" + rs.getString(9) + "')";
                        

                        st.executeUpdate(sql);
						
						
                    }
                }
                session.setAttribute("mark","0");
                
               
             session.setAttribute("examId", examID);
				session.setAttribute("jobId", jobID); 
				request.getRequestDispatcher("dispqst.jsp?qno=1").forward(request, response);
                /* response.sendRedirect("dispqst.jsp?qno=1"); */
            } catch (Exception ex) {
                System.out.println("Error: Cannot go forward<br>" + ex.toString() );
            }

        
%>



