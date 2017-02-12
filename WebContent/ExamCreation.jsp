<%@page import="conn.*,java.sql.*" session="true" %>
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
                font-size: 18px;
                font-weight: bold;
                color: #FF0000;
            }
            .style7 {color: #CC3333; font-weight: bold; }
            .style14 {color: #006699}
            .style19 {color: #003366; font-weight: bold; }
            .style20 {color: #663366}
            -->
        </style>
        <script language="javascript">
		function check()
		{
			var a= document.form1.examid.value;
			var b= document.form1.cutoff.value;
			if(document.form1.examid.value=="")
            {
                alert("Enter Exam ID");
                document.form1.examid.focus();
                return false;
            }
            else if(!parseInt(a))
            {
                alert("Enter Integer");
                document.form1.examid.focus();
                return false;
            }
			if(document.form1.examname.value=="")
            {
                alert("Enter Exam Name");
                document.form1.examname.focus();
                return false;
            }
			
			if(document.form1.cutoff.value=="")
            {
                alert("Enter Cutoff mark");
                document.form1.cutoff.focus();
                return false;
            }
            else if(!parseInt(b))
            {
                alert("Enter Integer");
                document.form1.cutoff.focus();
                return false;
            }
			else if(parseInt(b)<0||parseInt(b)>100)
            {
                alert("Enter cutoff in %");
                document.form1.cutoff.focus();
                return false;
            }

			return true;
		}
		</script>
    </head>
    <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="Companymenu.html"/></td>
                <td width="961" bgcolor="#B0CDD7" valign="top">
                    <table width="408" height="144" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="right" class="style1">
                                    <p class="style7 style14"> Exam Creation </p>
                            </div></td>
                        </tr>
                        <tr>
                       
                        
                        
<%
	String name=(String) session.getAttribute("name");
	try{
		Connection con=ConnectionProvider.getCon();
		Statement stmt=con.createStatement();
		ResultSet rs=stmt.executeQuery("SELECT JOB_ID FROM JOBDETAIL WHERE NAME='"+name+"'");
		
%> 
                        
                        <form name="form2" action="ExamCreation.jsp">
                            <td width="139" height="42" align="center"><span class="style19">Select a JobID </span></td>
                            <td width="127" align="center">
                                <label>
                                    <select name="jobid">
                                     <option value="select">...Select...</option>
                                 <%   while(rs.next()){
			String jid=rs.getString(1);
                                       %>
                                        <option value="<%=jid%>"><%=jid%></option>
                                       <% 
	}
	}
	catch(Exception e){System.out.print("ExceptionFrom: file.ExamCreation- "+e);} %>

                                    </select>
                                </label>                            </td>
<td width="128" align="center"> <div align="center" width="163">
                              <input type="submit" value="Show Details">
                            </div></td></form>
                       
<%	
	String post = null;
     String jobid = request.getParameter("jobid");
	 String name1=(String) session.getAttribute("name");
	 try{
	 	Connection con1=ConnectionProvider.getCon();
	 Statement stmt1=con1.createStatement();
   ResultSet rs1 = stmt1.executeQuery("select * from JobDetail where Job_Id='"+jobid+"' AND NAME='"+name1+"'");
     while (rs1.next()) {
           post= rs1.getString(2);} 
					HttpSession jidd=request.getSession();
            		HttpSession postt=request.getSession();
					jidd.setAttribute("jobid", jobid);
            		postt.setAttribute("post", post);
					System.out.println(jobid);
					System.out.println(post);
               		 
            

%>
                        <tr>
                            <td align="center"><span class="style19">Post Name :</span></td>
                            <td align="center"><%=post%></td>
                      </tr> 
<% 
	
	}
	catch(Exception e){System.out.print("ExceptionFrom: file.ExamCreation- "+e);} %>
                    </table>
                  <p>&nbsp;</p>
                    <form name="form1" method="post" action="SaveExamDetails.jsp" onSubmit="return check()">
                        <table width="318" height="166" border="1" align="center">
                            <tr>
                                <td width="138" height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Exam ID</strong></div></td>
                                <td width="164" bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="eid"></td>
                            </tr>
                            <tr>
                                <td height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Exam Name </strong></div></td>
                                <td bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="ename"></td>
                            </tr>
                            <tr>
                                <td height="41" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Cutoff %</strong></div></td>
                                <td bordercolor="#666666" bgcolor="#B0CDD7"><input type="text" name="coff"></td>
                            </tr>

                            <tr>
                                <td height="33" colspan="2" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center">
                                        <input type="submit" name="Submit" value="Submit">
                                </div>        </td>
                            </tr>
                        </table>
                    </form>
                   
                   
                   
                   
                   
                </td>
            </tr>
        </table>
    </body>
</html>