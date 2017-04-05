<%-- 
    Document   : AddQuestions
    Created on : Nov 18, 2012, 3:39:18 PM
    Author     : Atul Dwivedi
--%>
<%@page import="java.io.*,conn.*,java.sql.*" session="true"%>
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
                color: #666633;
            }
            .style4 {color: #421456; font-weight: bold; }
            -->
        </style>
        <script language="javascript">
            function check()
            {
                var a= document.form1.Qno.value;
                if(document.form1.Qno.value=="")
                    {
                        alert("Enter Question No:");
                        document.form1.Qno.focus();
                        return false;
                    }
                    else if(!parseInt(a))
                        {
                            alert("Enter Integer");
                            document.form1.Qno.focus();
                            return false;
                        }
                        if(document.form1.question.value=="")
                            {
                                alert("Enter Question");
                                document.form1.question.focus();
                                return false;
                            }
                            
                            if(document.form1.option1.value=="")
                                {
                                    alert("Enter First Option");
                                    document.form1.option1.focus();
                                    return false;
                                }
                                if(document.form1.option1.value=="")
                                    {
                                        alert("Enter First Option");
                                        document.form1.option1.focus();
                                        return false;
                                    }
                                    if(document.form1.option2.value=="")
                                        {
                                            alert("Enter Second Option");
                                            document.form1.option2.focus();
                                            return false;
                                        }
                                        if(document.form1.option3.value=="")
                                            {
                                                alert("Enter Third Option");
                                                document.form1.option3.focus();
                                                return false;
                                            }
                                            if(document.form1.option4.value=="")
                                                {
                                                    alert("Enter Fourth Option");
                                                    document.form1.option4.focus();
                                                    return false;
                                                }
                                                if(document.form1.answer.value=="")
                                                    {
                                                        alert("Enter Correct Answer");
                                                        document.form1.answer.focus();
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
                <td width="961" bgcolor="#F8EFDE">
                    <form name="form1" method="post" action="SaveQues.jsp" onSubmit="return check()">
                        <table width="398" height="383" border="1" align="center" bordercolor="#663333">
                            <tr>
                                <td colspan="2" bordercolor="#996633" bgcolor="#EBD8D8"><div align="center" class="style1">Add Questions </div></td>
                            </tr>
                            <% String name=null;
            try {String c1=(String) session.getAttribute("s1");
			
               Connection con=ConnectionProvider.getCon();
			   Statement stmt=con.createStatement();
                Statement st = con.createStatement();
                Statement st1 = con.createStatement();
				ResultSet r=stmt.executeQuery("SELECT * FROM COMPANYREGISTER WHERE USERNAME='"+ c1 +"'");
		//String name=null;
		while(r.next()){
			name=r.getString(2);
		}
                            %>
                            <tr>
                                <td height="37" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Job ID </span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8"><label>
                                        <select name="jobid">
                                            <%      ResultSet rs1 = st1.executeQuery("select * from EXAM where comp_name='"+c1+"'");
                                          String s = null;
                                          // String s2=null;
                                          while (rs1.next()) {
                                              s = rs1.getString(1);
                                              //    s2=rs.getString("Post");

                                            %>
                                            <option value="<%=s%>"><%=s%></option>
                                            <%}%>  
                                        </select>
                                </label></td>
                            </tr>
                            <tr>
                                <td width="127" height="37" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Exam ID</span></td>
                                <td width="255" bordercolor="#996633" bgcolor="#EBD8D8">
                                    <label>
                                        <select name="examid">
                                            <%      ResultSet rs = st.executeQuery("select * from Exam where comp_name='"+c1+"'");
                                          String s1 = null;
                                          // String s2=null;
                                          while (rs.next()) {
                                              s1 = rs.getString(3);
                                              //    s2=rs.getString("Post");

                                            %>
                                            <option value="<%=s1%>"><%=s1%></option>
                                            <%} %>
                                        </select>
                                </label>         </td>
                            </tr>
                            <tr>
                                <td height="40" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Question No:</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8">
                                <input name="qno" type="text" size="10">       </td>
                            </tr>
                            <tr>
                                <td height="47" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Question</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8">
                                    <label>
                                        <textarea name="question" cols="28"></textarea>
                                </label>               </td>
                            </tr>
                            <tr>
                                <td height="37" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Option1</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8">
                                    <label></label>
                                <input name="option1" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="37" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Option2</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8"><input name="option2" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="38" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Option3</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8"><input name="option3" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="35" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Option4</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8"><input name="option4" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td height="36" bordercolor="#996633" bgcolor="#EBD8D8"><span class="style4">Answer</span></td>
                                <td bordercolor="#996633" bgcolor="#EBD8D8"><input name="answer" type="text" size="30"></td>
                            </tr>
                            <tr>
                                <td colspan="2" bordercolor="#996633" bgcolor="#EBD8D8"><div align="center">
                                        <input type="submit" name="Submit" value="Add Question">
                                </div></td>
                            </tr>
                        </table>
                    </form> 
                    <%
            } catch (Exception e) {
                out.println(e);
            }
                    
                %></td>
            </tr>
        </table>
        
    </body>
</html>




