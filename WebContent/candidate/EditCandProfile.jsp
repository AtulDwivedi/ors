<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*,conn.*" errorPage=""%>
<%@ page import="com.atuldwivedi.ors.model.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Online Recruitment System</title>
<script language="javascript">
       function check()
            {
                var a=document.form1.collphone.value;
                var b=document.form1.mark10.value;
                var c=document.form1.mark12.value;
                var d=document.form1.degree.value;
                var e=document.form1.telephone.value;
                var f=document.form1.pincode.value;
                var x=document.form1.name.value;
                var y=document.form1.collname.value;
                var z=document.form1.password.value;

                if(document.form1.name.value=="")
                {
                    alert("Enter Your Name");
                    document.form1.name.focus();
                    return false;
                }
                else if(parseInt(x))
                {
                    alert("Enter name Correctly");
                    document.form1.name.focus();
                    return false;

                }
                if(document.form1.gender.value=="")
                {
                    alert("Enter your gender");
                    document.form1.gender.focus();
                    return false;
                }
                if(document.form1.dob.value=="")
                {
                    alert("Enter Date of Birth");
                    document.form1.dob.focus();
                    return false;
                }
                if(document.form1.collname.value=="")
                {
                    alert("Enter College Name ");
                    document.form1.collname.focus();
                    return false;
                }
                else if(parseInt(y))
                {
                    alert("Enter College Name correctly");
                    document.form1.collname.focus();
                    return false;
                }
                if(document.form1.collphone.value=="")
                {
                    alert("Enter collegephone number ");
                    document.form1.collphone.focus();
                    return false;
                }
                else if(!parseInt(a))
                {
                    alert("Enter CollegePhone Integer");
                    document.form1.collphone.focus();

                    return false;
                }
                else if(((document.form1.collphone.value.length)<6) || ((document.form1.collphone.value.length)>11))
                {
                    alert("Phone no: should contain atleast 6 integers ");
                    document.form1.collphone.focus();
                    return false;
                }
                if(document.form1.email.value=="")
                {
                    alert("Enter College email ");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.email.focus();
                    return false;
                }
                else if(document.form1.email.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.email.focus();
                    return false;
                }
                if(document.form1.branch.value=="")
                {
                    alert("Specify Branch");
                    document.form1.branch.focus();
                    return false;
                }
                if(document.form1.mark10.value=="")
                {
                    alert("Enter your 10th %mark")
                    document.form1.mark10.focus();
                    return false;
                }
                else if(!parseInt(b))
                {
                    alert("Not Integers used");
                    document.form1.mark10.focus();
                    return false;
                }
                else if(parseInt(b)<0||parseInt(b)>100)

                {
                    alert("Enter 10th % mark correctly  ");
                    document.form1.mark10.focus();
                    return false();
                }

                if(document.form1.mark12.value=="")
                {
                    alert("Enter 12th mark")
                    document.form1.mark12.focus();
                    return false;
                }
                else if(!parseInt(c))
                {
                    alert("Not Integers used");
                    document.form1.mark12.focus();
                    return false;
                }
                else if(parseInt(c)<0||parseInt(c)>100)
                {
                    alert("Enter 12th %mark correctly  ");
                    document.form1.mark12.focus();
                    return false();
                }

                if(document.form1.degree.value=="")
                {
                    alert("Enter Degree mark");
                    document.form1.degree.focus();
                    return false;
                }
                else if(!parseInt(d))
                {
                    alert("Enter Integer");
                    document.form1.degree.focus();
                    return false;
                }
                else if(parseInt(d).length<0||parseInt(d).length>100)
                {
                    alert("Enter Degree % mark correctly  ");
                    document.form1.degree.focus();
                    return false;
                }
                if(document.form1.degree.value=="")
                {
                    alert("Enter Degree");
                    document.form1.degree.focus();
                    return false;
                }
                if(document.form1.username.value=="")
                {
                    alert("Enter  Username");
                    document.form1.username.focus();
                    return false;
                }

                if(document.form1.password.value=="")
                {
                    alert("Enter Password");
                    document.form1.password.focus();
                    return false;
                }
                if(z.length<8)
                {
                    alert("Password should be minimum 8 characters");
                    document.form1.password.focus();
                    return false;
                }
                if(document.form1.emailid.value=="")
                {
                    alert("Enter email ");
                    document.form1.emailid.focus();
                    return false;
                }
                else if(document.form1.emailid.value.indexOf('@')==-1)
                {
                    alert("Use @ email correctly");
                    document.form1.emailid.focus();
                    return false;
                }
                else if(document.form1.emailid.value.indexOf('.')==-1)
                {
                    alert("Use . email correctly");
                    document.form1.emailid.focus();
                    return false;
                }
                if(document.form1.telephone.value=="")
                {
                    alert("Enter phone number ");
                    document.form1.telephone.focus();
                    return false;
                }
                else if(!parseInt(e))
                {
                    alert("Enter Ph Integer");
                    return false;
                }
                else if(((document.form1.telephone.value.length)<6) || ((document.form1.telephone.value.length)>11))
                {
                    alert("Phone no should contain atleast 6 integers ");

                    document.form1.telephone.focus();
                    return false;
                }
                if(document.form1.addr.value=="")
                {
                    alert("Enter Address");
                    document.form1.addr.focus();
                    return false;
                }
                if(document.form1.states.value=="")
                {
                    alert("Specify State");
                    document.form1.addr.focus();
                    return false;
                }
                if(document.form1.pincode.value=="")
                {
                    alert("Enter pin number ");
                    document.form1.pincode.focus();
                    return false;
                }
                else if(!parseInt(f))
                {
                    alert("Enter Integer");
                    document.form1.pincode.focus();
                    return false;
                }
                else if((document.form1.pincode.value.length)<6)
                {
                    alert("Pin no: should contain 6 integers ");
                    document.form1.pincode.focus();
                    return false;
                }
                if(document.form1.sel_cat.value=="")
                {
                    alert("Specify Category");
                    document.form1.sel_cat.focus();
                    return false;
                }

                return true;
            }
        </script>
</head>

<body>
	<jsp:useBean id="cep" class="bean.CandEditProfile" />
	<jsp:setProperty name="cep" property="*" />
	<%			
			String gender=null;
			String branch=null;
			String degree=null;
			HttpSession ss1=request.getSession();
			Candidate s1=(Candidate)ss1.getAttribute("s1");
			/* if(cep.candFetch(s1))
			{
				gender=cep.degree;
				 branch=cep.degree;
				 degree=cep.degree;
			} */
	
%>
	<table width="104%" height="628" border="1">
		<tr>
			<td height="23" colspan="2"><jsp:include
					page="CandidateHeader.jsp" /></td>
		</tr>
		<tr>
			<td width="1%" height="597"><jsp:include
					page="Candidatemenu.jsp" /></td>
			<td width="99%" bgcolor="#EBD9CD">
				<form method="post" action="SaveCandEdit.jsp" name="form1"
					onSubmi="return check()">
					<table border=0 cellpadding=3 cellspacing=0 width=81% align=centert>
						<tr bgcolor=#FEF7E9 wdth=100%>
							<td colspan="2" bgcolor="#E2E0CF">
								<div align="center">
									<font color="#386A78" size="5"><strong>Edit
											Profile</strong></font>
								</div>
							</td>
						</tr>




						<tr bgcolor=#FEF7E9 wdth=100%>
							<td width="48%" bgcolor="#F3E8DA"><strong> <font
									color="#666600" size="3" face="Times New Roman, Times, serif">Name&nbsp;
										<font color="#993333">(as in academic records)</font>
								</font></strong></td>
							<td width="52%" bgcolor="#F3E8DA"><input TYPE="text"
								NAME="name" size="30" maxlength=30
								value="${s1.name}"></td>
						</tr>

						<tr>

							<td><strong><font color="#666600" size="3"
									face="Times New Roman, Times, serif">Gender</font></strong></td>
							<td><select name="gender">
									<option value="">
										${s1.gender}
									</option>
									<option value="Male">Male</option>
									<option value="Female">Female</option>

							</select></td>
							<td bgcolor="#FEF7E9">&nbsp;</td>
						</tr>

						<tr bgcolor=#FEF7E9 wdth=100%>
							<td width="48%" bgcolor="#F3E8DA"><strong> <font
									color="#666600" size="3" face="Times New Roman, Times, serif">Date
										Of Birth </font></strong></td>
							<td width="52%" bgcolor="#F3E8DA"><input TYPE="text"
								NAME="dob" size="30" maxlength=30
								value="<% out.print(cep.dob); %>"></td>
						</tr>

						<tr bgcolor=#FEF7E9 wdth=100%>
							<td width="48%" bgcolor="#F3E8DA"><strong> <font
									color="#666600" size="3" face="Times New Roman, Times, serif">Branch

								</font></strong></td>
							<td width="52%" bgcolor="#F3E8DA"><select name="branch">
									<option value="">
										<% out.print(cep.branch); %>
									</option>
									<option value="">------Select---------</option>
									<option value="Applied Electro            ">Applied
										Electronics</option>
									<option value="Applied Physics            ">Applied
										Physics</option>
									<option value="B C A                      ">B C A</option>
									<option value="Bioinformatics              ">Bioinformatics
									</option>
									<option value="Biotechnology              ">Biotechnology
									</option>
									<option value="Chemistry                  ">Chemistry
									</option>
									<option value="Comp and Networking        ">Computer
										and Networking</option>
									<option value="Comp Application           ">Computer
										Application</option>
									<option value="Comp Application &amp; IT      ">Computer
										Application &amp; IT</option>
									<option value="Comp Hardware Maintenance  ">Computer
										Hardware Maintenance</option>
									<option value="Comp Information Systems   ">Computer
										Information Systems</option>
									<option value="Comp Maintenance           ">Computer
										Maintenance</option>
									<option value="Comp Maintenance &amp; Electro ">Computer
										Maintenance &amp; Electronics</option>
									<option value="Comp Science               ">Computer
										Science</option>
									<option value="Comp Science &amp; Information ">Computer
										Science &amp; Information</option>
									<option value="Comp Technology            ">Computer
										Technology</option>
									<option value="Electro                    ">Electronics
									</option>
									<option value="Electro &amp; Communication    ">Electronics
										&amp; Communication</option>
									<option value="Electro &amp; Comp Hardware    ">Electronics
										&amp; Computer Hardware</option>
									<option value="Electro &amp; Comp Maintenance ">Electronics
										&amp; Computer Maintenance</option>
									<option value="Industrial Chemistry       ">Industrial
										Chemistry</option>
									<option value="Information Technology     ">Information
										Technology</option>
									<option value="Instrumentation            ">Instrumentation
									</option>
									<option value="Mathematics                ">Mathematics
									</option>
									<option value="Optical Instrumentation    ">Optical
										Instrumentation</option>
									<option value="Physics                    ">Physics</option>
									<option value="Physics &amp; Electro          ">Physics
										&amp; Electronics</option>
									<option value="Physics Instrumentation    ">Physics
										Instrumentation</option>
									<option value="Physics with Comp App      ">Physics
										with Comp Applications</option>
									<option value="Software Systems           ">Software
										Systems</option>
									<option value="Software Technology        ">Software
										Technology</option>
									<option value="Statistics                 ">Statistics
									</option>
							</select></td>
						</tr>

						<tr bgcolor=#FEF7E9 wdth=100%>
							<td width="48%" bgcolor="#F3E8DA"><strong> <font
									color="#666600" size="3" face="Times New Roman, Times, serif">Degree

								</font></strong></td>
							<td width="52%" bgcolor="#F3E8DA"><select name="degree">
									<option value="">
										<% out.print(cep.degree); %>
									</option>
									<option value="BTech">BTech</option>
									<option value="MTech">MTech</option>
									<option value="MCA">MCA</option>
									<option value="BCA">BCA</option>
									<option value="BSc">BSC</option>
									<option value="MSc">MSc</option>
							</select></td>
						</tr>

						<tr bgcolor=#FEF7E9>
							<td bgcolor="#F3E8DA"><strong><font SIZE="3"
									COLOR="#666600" face='Times New Roman, Times, serif'>College
										in which studying</font> </strong></td>
							<td bgcolor="#F3E8DA"><input TYPE="text" NAME="collname"
								size=30 maxlength=30 value='<% out.print(cep.collname); %>'></td>
						</tr>
						<tr bgcolor=#FEF7E9>
							<td bgcolor="#F3E8DA"><strong><font SIZE="3"
									COLOR="#666600" face='Times New Roman, Times, serif'>College
										Phone</font> </strong></td>
							<td bgcolor="#F3E8DA"><input TYPE="text" NAME="collphone"
								size=30 maxlength=30 value='<% out.print(cep.collphone); %>'><font
									SIZE="2" COLOR="#CC0000" face=arial(STD-No.)>                                 </td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td><strong><font SIZE="3" COLOR="#666600"
									face='Times New Roman, Times, serif'>College Email</font> </strong></td>
							<td><input TYPE="text" NAME="email" size=30 maxlength=50
								value='<% out.print(cep.email); %>'></td>
						</tr>
						<tr bgcolor=#FEF7E9>
							<td bgcolor="#F3E8DA"><strong><font SIZE="3"
									COLOR="#666600" face='Times New Roman, Times, serif'>%
										of Marks</font></strong></td>
							<td bgcolor="#F3E8DA">
								<table width="111" border=0 cellpadding=0 cellspacing=0>
									<tr>
										<td width="95"><div align="center">
												<font SIZE="2" COLOR="#3366CC" face=arial><strong>BCA
														/ B.Sc. %</strong></font>
											</div></td>
									</tr>
									<tr>
										<td><input TYPE="text" NAME="marks" size=8 maxlength=8
											value='<% out.print(cep.marks); %>'
											onblur="checkDec('markBSC')"></td>
									</tr>
								</table>
							</td>
						</tr>
						<tr bgcolor=#FEF7E9>
							<td bgcolor="#F3E8DA"><strong><font SIZE="3"
									COLOR="#666600" face='Times New Roman, Times, serif'>Email_id</font></strong>
							</td>
							<td bgcolor="#F3E8DA"><input TYPE="text" NAME="emailid"
								size=30 maxlength=30 value='${s1.userName}'></td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td><strong><font SIZE="3" COLOR="#666600"
									face='Times New Roman, Times, serif'>Telephone Number</font> </strong></td>
							<td><input NAME="telephone" TYPE="text" id="telephone"
								value="<% out.print(cep.telephone); %>"> <font SIZE="2"
									COLOR="#CC0000" face='arial'>(STD-No.) </font></td>
						</tr>
						<tr bgcolor=#FEF7E9>
							<td bgcolor="#F3E8DA"><strong><font
									face="Times New Roman, Times, serif" color=#666600 size=3>Address</font>
							</strong></td>
							<td bgcolor="#F3E8DA"><input class=USS_TEXT maxLength=30
								name="addr" size=40 value='<% out.print(cep.addr); %>'><b><font
										face="ARIAL, HELVETICA" color=red size=+2></font></b></td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td><strong><font
									face="Times New Roman, Times, serif" color=#666600 size=3>State</font>
							</strong></td>
							<td><select name="states">
									<option selected value="">
										<% out.print(cep.states); %>
									</option>
									<option value=AP>Andhra Pradesh</option>
									<option value=AR>Arunachal Pradesh</option>
									<option value=AS>Assam</option>
									<option value=BR>Bihar</option>
									<option value=CH>Chandigarh</option>
									<option value=CG>Chattisgarh</option>
									<option value=DL>Delhi</option>
									<option value=GA>Goa</option>
									<option value=GJ>Gujarat</option>
									<option value=HR>Haryana</option>
									<option value=HP>Himachal Pradesh</option>
									<option value=JK>Jammu &amp; Kashmir</option>
									<option value=JH>Jharkhand</option>
									<option value=KA>Karnataka</option>
									<option value=KL>Kerala</option>
									<option value=MP>Madhya Pradesh</option>
									<option value=MH>Maharashtra</option>
									<option value=MN>Manipur</option>
									<option value=ML>Meghalaya</option>
									<option value=MZ>Mizoram</option>
									<option value=NL>Nagaland</option>
									<option value=OR>Orissa</option>
									<option value=PY>Pondicherry</option>
									<option value=PB>Punjab</option>
									<option value=RJ>Rajasthan</option>
									<option value=SK>Sikkim</option>
									<option value=TN>Tamilnadu</option>
									<option value=TR>Tripura</option>
									<option value=UA>Uttaranchal</option>
									<option value=UP>Uttar Pradesh</option>
									<option value=WB>West Bengal</option>
									<option value=XX>Others</option>
							</select><br></td>
						</tr>
						<tr bgcolor="#FFFFFF">
							<td bgcolor="#F3E8DA"><strong><FONT
									face="Times New Roman, Times, serif" color=#666600 size=3>Pincode</FONT>
							</strong></td>
							<td bgcolor="#F3E8DA"><INPUT class=USS_TEXT maxLength=6
								name="pincode" size=6 value='<% out.print(cep.pincode); %>'><B>
										<FONT face="ARIAL, HELVETICA" color=red size=+2></FONT>
								</B></td>
						</tr>
						<tr>
							<td width="48%" bgcolor="#F3E8DA"><strong> <font
									color="#666600" size="3" face="Times New Roman, Times, serif">Category

								</font></strong></td>
							<td><input type="text" name="category" id="category"
								value="<% out.print(cep.category); %>" /></td>
						</tr>

						<tr>
							<td height="49" colspan=2 align="center"><input
								TYPE="submit" value="Edit" onClick="return check()"></td>
						</tr>
					</table>
				</form>
</body>
</html>
