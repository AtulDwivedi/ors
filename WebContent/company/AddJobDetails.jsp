<%-- 
    Document   : AddJobDetails
    Created on : April 29, 2012, 
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
            <!--
            .style1 {
                font-size: 24px;
                font-weight: bold;
                color: #993300;
            }
            .style2 {
                color: #000000;
                font-weight: bold;
            }
            -->
        </style>
        <script language="javascript">
            function check()
            {
				var a= document.form1.jid.value;
				var b= document.form1.vacancies.value;
				var c= document.form1.salary.value;
				
                if(document.form1.jid.value=="")
                {
                    alert("Enter Job Id");
                    document.form1.jid.focus();
                    return false;
                }
				else if(!parseInt(a))
            	{
                alert("Enter integer");
                document.form1.jid.focus();
                return false;
            	}
				
                if(document.form1.post.value=="")
                {
                    alert("Enter Post");
                    document.form1.post.focus();
                    return false;
                }
                if(document.form1.criteria.value=="")
                {
                    alert("Enter Criteria");
                    document.form1.criteria.focus();
                    return false;
                }
                if(document.form1.vacancies.value=="")
                {
                    alert("Enter no: of Vacancies available");
                    document.form1.vacancies.focus();
                    return false;
                }
				else if(!parseInt(b))
            	{
                alert("Enter integer");
                document.form1.vacancies.focus();
                return false;
            	}
                if(document.form1.salary.value=="")
                {
                    alert("Enter Salary");
                    document.form1.salary.focus();
                    return false;
                }
				else if(!parseInt(c))
            	{
                alert("Enter integer");
                document.form1.salary.focus();
                return false;
            	}
                if(document.form1.lastdate.value=="")
                {
                    alert("Enter Last Date");
                    document.form1.lastdate.focus();
                    return false;
                }

                return true;
            }

        </script>
    </head>
    
  
    
    <body style="margin:0px" bgcolor="#FFFFFF"><jsp:useBean id="sjd" class="com.atuldwivedi.ors.bean.SaveJobDetails" />
<jsp:setProperty name="sjd" property="*" />
    <% //out.println(request.getParameter("username")); %>
        <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="menu-company.jsp"/></td>
                <td width="961" bgcolor="#6699CC">
                
                    <form name="form1" method="post" action="<%=request.getContextPath()+"/JobServlet/add" %>">
                        <table width="517" height="334" border="1" align="center" bgcolor="#FFCCCC">
                            <tr bordercolor="#0099FF">
                                <td height="30" colspan="2" bgcolor="#E3EAF4"><div align="center" class="style1">Job Description </div></td>
                            </tr>
                            <tr>
                                <td width="160" height="26" bordercolor="#0099FF" bgcolor="#E3EAF4"><div align="left" class="style2">JobID</div></td>
                                <td width="213" bordercolor="#0099FF" bgcolor="#E3EAF4">
                                    <label>
                                        <input name="jid" id="jid"type="text" size="30">
                                </label>            </td>
                            </tr>
                             
                            <tr>
<td height="26" bordercolor="#0099FF" bgcolor="#E3EAF4">
<div align="left" class="style2"> Name of Post </div></td>
<td bordercolor="#0099FF" bgcolor="#E3EAF4">
<input name="post" name="post" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" bgcolor="#E3EAF4"><div align="left" class="style2">Criteria</div></td>
                                <td bordercolor="#0099FF" bgcolor="#E3EAF4"><input name="criteria" name="criteria" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" bgcolor="#E3EAF4"><div align="left" class="style2">No: of Vacancies </div></td>
                                <td bordercolor="#0099FF" bgco5lor="#E3EAF4"><input name="vacancies" name="vacancies" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" bgcolor="#E3EAF4"><div align="left" class="style2">Salary/Annum</div></td>
                                <td bordercolor="#0099FF" bgcolor="#E3EAF4"><input name="salary" name="salary" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#0099FF" bgcolor="#E3EAF4"><div align="left" class="style2">Last Date<font color="red">&nbsp;&nbsp;(dd/mm/yy) </font></div></td>
                                <td bordercolor="#0099FF" bgcolor="#E3EAF4"><jsp:include page="datePicker2.html"/>
                                <!-- <input name="lastdate" name="lastdate" type="text" size="30"> --></td>
                            </tr>
                            <tr bordercolor="#0099FF">
                                <td height="28" colspan="2" bgcolor="#E3EAF4">
                                    <div align="center">
                                        <input type="submit" name="Submit" value="Submit" onClick="return check()">
                                </div>           </td>
                            </tr>
                        </table>
                    </form>
                    <h2>&nbsp;</h2>
                </td>
            </tr>
        </table>
    </body>
</html>