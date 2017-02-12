
<%@page import="conn.*,java.sql.*,java.io.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
        <style type="text/css">
<!--
.style1 {
	font-size: 24px;
	color: #003399;
	font-weight: bold;
}
.style6 {color: #006633; font-weight: bold; }
.style7 {color: #663300}
.style9 {color: #663300; font-weight: bold; }
-->
        </style>
</head>
         <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
          <tr>
            <td height="107" colspan="2"><jsp:include page="CandidateHeader.jsp"/></td>
          </tr>
          <tr>
            <td width="121" height="512"><jsp:include page="Candidatemenu.jsp"/></td>
            <td width="961" bordercolor="#663366" bgcolor="#CC9999" valign="top"><table width="100%" height="50%" border="1" align="right" bordercolor="#996666" bgcolor="#999933">
              <tr >
                <td height="100%"  colspan="8" bordercolor="#516415" bgcolor="#CAA899" ><div align="center"><span class="style1">Job Details</span></div></td>
              </tr>
              <tr>
                <td width="79" height="23" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">NAME </div></td>
                <td width="50" height="23" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Job ID </div></td>
                <td width="65" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Post</div></td>
                <td width="91" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Criteria</div></td>
                <td width="104" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Vacancies</div></td>
                <td width="144" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">Salary/Annum</div></td>
                <td width="105" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style9">LastDate</div></td>
                <td width="73" bordercolor="#516415" bgcolor="#CAA899"><div align="center" class="style1">GO!</div></td>
                
              </tr>
             
              <% 	
	  		//String c1=(String) session.getAttribute("s1");
			//String name=(String) session.getAttribute("name");
			try{
					Connection con=null;
					
					if(con==null){
						con=ConnectionProvider.getCon();
						System.out.println("            ...!!!...            ");
						System.out.println("JSP Report: file.ViewJobDetails- Connection has been created.");
					}
					Statement stmt1=con.createStatement();
					ResultSet rs=stmt1.executeQuery("SELECT * FROM JOBDETAIL");
					String jobid,jpost,jcriteria,jvac,jsal,jdate,name1;
					while(rs.next()){
					
						jobid=rs.getString(1);
                        jpost=rs.getString(2);
                        jcriteria=rs.getString(3);
                        jvac=rs.getString(4);
                        jsal=rs.getString(5);
                        jdate=rs.getString(6).toString();
						name1=rs.getString(7);
						//eid=rs.getString(8);
						
	 %>
              <tr>
                <td height="23" bordercolor="#516415" bgcolor="#CAA899" align="center" ><span class="style6"> <%=name1%> </span></td>
                <td height="23" bordercolor="#516415" bgcolor="#CAA899" align="center" ><span class="style6"> <%=jobid%> </span></td>
                <td bordercolor="#516415" bgcolor="#CAA899" align="center" ><span class="style6"> <%=jpost%> </span></td>
                <td bordercolor="#516415" bgcolor="#CAA899" align="center" ><span class="style6"> <%=jcriteria%> </span></td>
                <td bordercolor="#516415" bgcolor="#CAA899" align="center"><span class="style6"> <%=jvac%> </span></td>
                <td bordercolor="#516415" bgcolor="#CAA899" align="center"><span class="style6"> <%=jsal%> </span></td>
                <td bordercolor="#516415" bgcolor="#CAA899" align="center"><span class="style6"> <%=jdate%> </span></td>
                <td bordercolor="#516415" bgcolor="#CAA899"><div align="center"> <a href="ExamConduct.jsp?jobid=<%=jobid%>"><strong>Go for Job</strong></a></div></td>
               
              </tr>
              <%
      }
    }
      catch(Exception e)
      {
          out.println("ExceptionFrom: file.ViewJobDetails- "+e);
      }
 %>
            </table></td>
          </tr>
        </table>
        
</body>
</html>
