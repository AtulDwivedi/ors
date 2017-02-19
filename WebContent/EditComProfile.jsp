
<%@page import="com.atuldwivedi.ors.model.Company"%>
<%@page import="java.io.*,conn.*,java.sql.*"%>
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
            color: #CC6633;
            font-weight: bold;
            font-size: 18px;
        }
        .style2 {color: #FFFFFF}
        -->
    </style>
    <script language="javascript">
			function check()
			{
				var a=document.form1.name.value;
           		var c=document.form1.email.value;
            	var d=document.form1.contact.value;
            	var e=document.form1.cutoff.value;
				if(document.form1.name.value == "")
				{
					alert("Enter Company Name");
                	document.form1.name.focus();
                	return false;
				}
				else if(parseInt(a))
           		 {
                alert("Company Name cannot be integer");
                document.form1.name.focus();
                return false;
           		 }
				if(document.form1.addr.value == "")
				{
					alert("Enter Company Address");
                	document.form1.addr.focus();
                	return false;
				}
				if(document.form1.post.value == "")
				{
					alert("Enter Post");
                	document.form1.post.focus();
                	return false;
				}
				if(document.form1.criteria.value == "")
				{
					alert("Enter Criteria of the Company");
                	document.form1.criteria.focus();
                	return false;
				}
				if(document.form1.email.value == "")
				{
					alert("Enter Company Email");
                	document.form1.email.focus();
                	return false;
				}
				else if(c.indexOf('@')==-1)
         	   {
                alert("Enter Email Correctly");
                document.form1.email.focus();
                return false;
          		}
           		 else if(c.indexOf('.')==-1)
           		 {
                alert("Enter Email Correctly");
                document.form1.email.focus();
                return false;
          		  }
				if(document.form1.contact.value == "")
				{
					alert("Enter Company Contact no:");
                	document.form1.contact.focus();
                	return false;
				}
				else if(!parseInt(d))
            	{
                alert("Enter integer");
                document.form1.contact.focus();
                return false;
            	}
            	else if(((document.form1.contact.value.length)<6) || ((document.form1.contact.value.length)>11))
            	{
                alert("Phone no should contain atleast 6 integers ");
                document.form1.contact.focus();
                return false;
            	}
				if(document.form1.cutoff.value == "")
				{
					alert("Enter Company Cutoff mark");
                	document.form1.cutoff.focus();
                	return false;
				}
				 else if(!parseInt(e))
            	{
                alert("Enter integer");
                document.form1.cutoff.focus();
                return false;
            	}
           	 	else if(parseInt(e)<0||parseInt(e)>100)
            	{
                alert("Enter cutoff in %");
                document.form1.cutoff.focus();
                return false;
            	}
				return true;
				}
	</script>

    <body style="margin:0px" bgcolor="#FFFFFF">
    <jsp:useBean id="cep" class="bean.CompEditProfile" />
<jsp:setProperty name="cep" property="*" />
        <table width="100%" border="1" bgcolor="#FFFFFF">
            <tr>
                <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
            </tr>
            <tr>
                <td width="1" height="512"><jsp:include page="menu-company.jsp"/></td>
                <td width="961" bgcolor="#E7E8EB" valign="top">
                    <span class="style2">
       <%--                  <%        
        try {

            
            String c1 = (String) session.getAttribute("s1");
			System.out.println(c1);
           	Connection con=ConnectionProvider.getCon();
			Statement st = con.createStatement();


    ResultSet rs = st.executeQuery("select NAME,ADDR,POST,CRITERIA,EMAIL,CONTACT,CUTOFF from COMPANYREGISTER where USERNAME='" + c1 + "'");
            String a = null;
            String b = null;
            String c = null;
            String d = null;
            String e = null;
            String f = null;
            String g = null;
            while (rs.next())
            {
                a = rs.getString("NAME");
                b = rs.getString("ADDR");
                c = rs.getString("POST");
                d = rs.getString("CRITERIA");
                e = rs.getString("EMAIL");
                f = rs.getString("CONTACT");
                g = rs.getString("CUTOFF"); %>--%>

                        
                    </span>
                    <div class="Reg" align="center">
                        <form method="POST" action="EditCompanyDetailsServlet" name="form1" onSubmit="return check()">
                            <table width =66% border=0 cellpadding=3 cellspacing=0 bordercolor="#FFFFFF" >
                                <tr bgcolor="" width=100%>
                                    <td colspan="2" bgcolor="#F5E7DC">
                                    <div align="center" class="style5 style1">Edit Company Profile </div>                </td>
                                </tr>
                                <tr bgcolor="" width=100%>
                                    <td width="46%" bgcolor="#FFFFFF">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial >Name</font></div></td>
                                    <td width="54%" bgcolor="#FFFFFF">
                                        <div align="left">
                                            <input TYPE="text" NAME="name" id="name" size=30 maxlength=30 value="<%= ((Company)request.getAttribute("com")).getCompName() %>">
                                    </div>	</td>
                                </tr>
                                <tr bgcolor =#FEF7E9>
                                    <td bgcolor="#D9DEE6">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial>Address</font></div></td>
                                    <td bgcolor="#D9DEE6">
                                        <div align="left">
                                            <input NAME="addr" TYPE="text" id="addr" size=30 maxlength=50 value="<%=((Company)request.getAttribute("com")).getAddress() %>">
                                    </div>	 </td>
                                </tr>
                                <tr bgcolor =#FEF7E9>
                                    <td bgcolor="#F5E7DC">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial>Post</font></div></td>
                                    <td bgcolor="#F5E7DC">
                                        <div align="left">
                                            <input NAME="post" TYPE="text" id="post" size=30  maxlength=50 value="<%=((Company)request.getAttribute("com")).getPostInComp()%>">
                                    </div>	 </td>
                                </tr>
                                <tr bgcolor =#FEF7E9>
                                    <td bgcolor="#D9DEE6">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial>Criteria</font></div></td>
                                    <td bgcolor="#D9DEE6">
                                        <div align="left">
                                            <input NAME="criteria" TYPE="text" id="criteria" size=30  maxlength=50 value="<%=((Company)request.getAttribute("com")).getCriteria()%>">
                                    </div>	</td>
                                </tr>
                                <tr  bgcolor =#FEF7E9>
                                    <td bgcolor="#F5E7DC">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial>Email_id</font></div></td>
                                    <td bgcolor="#F5E7DC">
                                        <div align="left">
                                            <input TYPE="text" NAME="email" id="email" size=30 maxlength=30 value="<%=((Company)request.getAttribute("com")).getEmail()%>">
                                    </div>	   </td>
                                </tr>
                                <tr>
                                    <td bgcolor="#FFFFFF">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial>Contact No:</font></div></td>
                                    <td bgcolor="#FFFFFF">
                                        <div align="left">
                                            <input TYPE="text" NAME="contact" id="contact"size=20 maxlength=30 value="<%=((Company)request.getAttribute("com")).getContact()%>">
                                    &nbsp;                 <font SIZE="2" COLOR="#CC0000" face =arial>(STD-No.)</font>		   </div>	   </td>
                                </tr>
                                <tr  bgcolor =#FEF7E9>
                                    <td bgcolor="#D9DEE6">
                                    <div align="center"><font SIZE="2" COLOR="black" face =arial>CutOff %</font></div></td>
                                    <td bgcolor="#D9DEE6">
                                        <div align="left">
                                            <input TYPE="text" NAME="cutoff" id="cutoff" size=30 maxlength=30 value="<%=((Company)request.getAttribute("com")).getCutOff()%>">
                                    </div>	   </td>
                                </tr>
                                <tr>
                                    <td height="49" colspan=2 bgcolor="#F5E7DC" >
                                        <div align="center"><br>
                                            <input type="reset" />
                                            &nbsp;&nbsp;<input TYPE="submit" value="Edit" >
                                    </div>	    </td>
                                </tr>
                            </table>
                        </form>
                    </div>
<%-- 
                    <% }

        } catch (Exception e) {
		System.out.println(e);
            System.out.println(e.toString());
        }
                    %> --%>
                </td>
            </tr>
        </table>
    </body>
</html>

