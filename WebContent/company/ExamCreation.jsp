<%@page import="java.util.*" %>
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
                <td width="1" height="512"><jsp:include page="menu-company.jsp"/></td>
                <td width="961" bgcolor="#B0CDD7" valign="top">
                    <table width="408" height="144" border="0" align="center">
                        <tr>
                            <td colspan="2"><div align="right" class="style1">
                                    <p class="style7 style14"> Exam Creation </p>
                            </div></td>
                        </tr>
                       
           
                    </table>
                  <p>&nbsp;</p>
                    <form name="form1" method="post" action="<%=request.getContextPath()+"/ExamServlet/add"%>" onSubmit="return check()">
                        <table width="318" height="166" border="1" align="center">
                            <tr>
                                <td width="138" height="40" bordercolor="#666666" bgcolor="#B0CDD7"><div align="center" class="style4 style20"><strong>Select a JobID</strong></div></td>
                                <td width="164" bordercolor="#666666" bgcolor="#B0CDD7"><select name="jobId">
                                     <option value="select">...Select...</option>
                                <% List<Long> jobIds = (List<Long>)request.getAttribute("jobIds"); 
                                for(int i=0; i<jobIds.size(); i++){
                                	%><option value="<%=jobIds.get(i)+"" %>"><%=jobIds.get(i)%></option><%
                                }
                                %>
                                    </select></td>
                            </tr>
                         
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