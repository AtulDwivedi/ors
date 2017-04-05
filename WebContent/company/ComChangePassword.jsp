<%-- 
    Document   : ComChangePassword
    Created on : Dec 19, 2012, 9:41:16 PM
    Author     : User
--%>
<%@page import="java.io.*,java.sql.*,com.atuldwivedi.ors.dao.util.*" %>
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
                color: #006699;
                font-weight: bold;
            }
            -->
        </style>
         <script language="javascript">
            function check()
            {
                var a= document.form1.newpass2.value;
                var b= document.form1.newpass.value;
                    if(document.form1.pass.value  =="")
                    {
                        alert("Enter the old password");
                        document.form1.pass.focus();
                        return false;
                    }
                   if(document.form1.newpass2.value =="")
                    {
                        alert("Enter the new password");
                        document.form1.newpass2.focus();
                        return false;
                    }
                    else if(a.length<8)
                        {
                         alert("password should be minimum 8 characters");
                        document.form1.newpass2.focus();
                        return false;
                        }
                    if(document.form1.newpass.value=="")
                    {
                        alert("ReEnter the password");
                        document.form1.newpass.focus();
                        return false;
                    }
                    else if(a!=b)
                        {
                            alert("Wrong password match");
                            document.form1.newpass.focus();
                            return false;
                        }

                    return true;
            }
        </script>
    </head>
    <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="80" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
          </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="menu-company.jsp"/></td>
                <td width="961" bgcolor="#FFF3E6">
                    <% try {

            //              HttpSession s = request.getSession();
            //  String c1 = request.getParameter("id");
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
            // session.getAttribute("c1", c1);
            Connection con = ConnectionProvider.getConnection();
            Statement st = con.createStatement();

            ResultSet rs = st.executeQuery("select * from Login where Username='" + c1 + "' and Password ='" + c2 + "'");

            String s1 = null;
            String s2 = null;
                    %>
                    <font color="#FFFFFF" >
                        <%
     out.println(c1);

                        %>
                    </font>
                    <%
     while (rs.next()) {
         s1 = rs.getString(1);
         s2 = rs.getString(2);
     }
                    %>
                    <form name="form1" method="post" action="saveComPassword.jsp" onSubmit="return check()">
                        <table width="617" height="150" border="1" align="right" cellpadding="1" bordercolor="#CC99FF">
                            <tr>
                                <td height="23" colspan="3" bordercolor="#CC6633" bgcolor="#CC99CC"><div align="center" class="style10 style1"><strong>Change Password </strong></div></td>
                          </tr>
                            <tr>
                                <td width="218" height="26" bordercolor="#CC6633" bgcolor="#9999cc" ><span class="style15 style9"><strong> Username </strong></span></td>
                                <td width="202" bordercolor="#CC6633" bgcolor="#FFFFFF"><input name="user" type="text"  id="user" value="<%=s1%>" size="35"></td>
                                <td width="175" rowspan="5" bordercolor="#CC6633" bgcolor="#FFFFFF"><img src="images\gI_0_OnlineMarketingForWomenEntrepreneurs[1] copy.jpg" width="175" height="140"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" bgcolor="#9999cc"><span class="style15 style9"><strong>Old Password </strong></span></td>
                                <td bordercolor="#CC6633" bgcolor="#FFFFFF"><input name="pass" type="password"  id="pass"  size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" bgcolor="#9999cc"><span class="style15 style9"><strong>New Password </strong></span></td>
                                <td bordercolor="#CC6633" bgcolor="#FFFFFF"><input name="newpass2" type="password" id="newpass2" size="35"></td>
                            </tr>
                            <tr>
                                <td height="26" bordercolor="#CC6633" bgcolor="#9999cc"><span class="style15 style9"><strong>Retype New Password</strong></span></td>
                                <td bordercolor="#CC6633" bgcolor="#FFFFFF"><input name="newpass" type="password" id="newpass" size="35"></td>
                            </tr>
                            <tr>
                                <td height="28" colspan="2" bordercolor="#CC6633" bgcolor="#9999cc"><div align="center">
                                        <input name="Submit" type="submit" class="style9" value="Submit">
                                </div></td>
                            </tr>
                        </table>
                    </form>
                    <%
        }//try
        catch (Exception e) {
            out.println(e);
        }

                %>			</td>
            </tr>
        </table>

    </body>
</html>
