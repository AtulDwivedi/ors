<%@page import="java.sql.*,com.atuldwivedi.ors.dao.util.*"%>
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
                color: #0000FF;
                font-weight: bold;
            }
            .style3 {color: #660066}
            .style4 {color: #D6C0C9}
            -->
        </style>
        <script language="javascript">
            function check()
            {
                var a= document.form1.new_pass.value;
                var b= document.form1.newpass.value;
                if(document.form1.pass.value  =="")
                {
                    alert("Enter the old password");
                    document.form1.pass.focus();
                    return false;
                }
                if(document.form1.new_pass.value =="")
                {
                    alert("Enter the new password");
                    document.form1.new_pass.focus();
                    return false;
                }
                else if(a.length<8)
                {
                    alert("password should be minimum 8 characters");
                    document.form1.new_pass.focus();
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
    <body><jsp:useBean id="scp" class="com.atuldwivedi.ors.bean.ChangeCandPass" />
<jsp:setProperty name="scp" property="*" />
        <table width="100%" align="left" height="482" border="1">
            <tr>
                <td height="55" colspan="2" bgcolor="#FFFFFF"><jsp:include page="CandidateHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1%"><jsp:include page="Candidatemenu.jsp"/></td>
                <td width="99%" valign="top" bgcolor="#D6C0C9" align="center"><p>&nbsp;</p>
                    <p class="style4">&nbsp;</p>
                    <span class="style4">
<% try {

           
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
          
            Connection con = ConnectionProvider.getConnection();
            Statement stmt = con.createStatement();
			ResultSet 
			rs=stmt.executeQuery("select * from Login where Username='" + c1 + "' and Password ='" + c2 + "'");
			String s1 = null;
            while (rs.next()) {
         	s1 = rs.getString(1);
%>
                    </span>
           <form name="form1" method="post"  action="SaveCandPass.jsp" onsubmit="return check()">
                 <table width="617" height="150" border="1" align="right" cellpadding="1" bordercolor="#CC99FF">
 <tr>
     <td height="23" colspan="3" bordercolor="#CC6633" bgcolor="cc99cc">
     <div align="center" class="style10 style1"><strong>Change Password </strong></div></td>
 </tr>
 <tr>
     <td width="218" height="26" bordercolor="#CC6633" bgcolor="#9999cc">
     <span class="style15 style9"><strong> Username </strong></span></td>
     <td width="202" bordercolor="#CC6633" bgcolor="#FFFFFF">
     <input name="username" type="text"  id="user" value="<%=s1%>" size="35"></td>
     <td width="175" rowspan="5" bordercolor="#CC6633" bgcolor="#FFFFFF">
     <img src="images/gI_0_OnlineMarketingForWomenEntrepreneurs[1] copy.jpg" width="175" height="140"></td>
  </tr>
  <tr>
     <td height="26" bordercolor="#CC6633" bgcolor="#9999cc">
     <span class="style15 style9"><strong>Old Password </strong></span></td>
     <td bordercolor="#CC6633" bgcolor="#FFFFFF">
     <input name="password" type="password"  id="pass"  size="35">
     </td>
  </tr>
  <tr>
     <td height="26" bordercolor="#CC6633" bgcolor="#9999cc">
     <span class="style15 style9"><strong>New Password </strong></span></td>
     <td bordercolor="#CC6633" bgcolor="#FFFFFF">
     <input name="new_pass" type="password" id="new_pass" size="35"></td>
  </tr>
  <tr>
     <td height="26" bordercolor="#CC6633" bgcolor="#9999cc">
     <span class="style15 style9"><strong>Retype New Password</strong></span></td>
     <td bordercolor="#CC6633" bgcolor="#FFFFFF">
     <input name="newpass" type="password" id="newpass" size="35"></td>
  </tr>
  <tr>
     <td height="28" colspan="2" bordercolor="#CC6633" bgcolor="#9999cc"><div align="center">
     <input name="Submit" type="submit" class="style9" value="Submit"></div></td>
  </tr>
</table>
</form>
<%
	}
        }//try
        catch (Exception e) {
            out.println(e);
        }
%>	
</body>
</html>
