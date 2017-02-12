<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
        <style type="text/css">
            <!--
            .body {
                margin:0%;
            }
            a:link {
                color: #000066;
                text-decoration: underline;
            }
            a:visited {
                text-decoration: underline;
                color: #C0DCC0;
            }
            a:hover {
                text-decoration: none;
                color: #996666;
            }
            a:active {
                text-decoration: underline;
                color: #FF9999;
            }
            .style4 {
                font-size: 24px;
                color: #663366;
                font-weight: bold;
            }
            .style5 {color: #ECE9D8}
            -->
        </style>
        <script language="javascript">
            function setVal(sval)
            {

                if(sval=="Fresher")
                {
                    document.getElementById("expyears").disabled=true;
                    document.getElementById("company").disabled=true;
                    document.getElementById("designation").disabled=true;
                    document.getElementById("salary").disabled=true;
                    document.getElementById("comAddress").disabled=true;
                }
                else{
                    document.getElementById("expyears").disabled=false;
                    document.getElementById("company").disabled=false;
                    document.getElementById("designation").disabled=false;
                    document.getElementById("salary").disabled=false;
                    document.getElementById("comAddress").disabled=false;
                }
            }

            function check()
            {
                var a=document.form1.collphone.value;
                var b=document.form1.mark10.value;
                var c=document.form1.mark12.value;
                var d=document.form1.markDegree.value;
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
                    document.form1.college.focus();
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

                if(document.form1.markDegree.value=="")
                {
                    alert("Enter Degree mark");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(!parseInt(d))
                {
                    alert("Enter Integer");
                    document.form1.markDegree.focus();
                    return false;
                }
                else if(parseInt(d).length<0||parseInt(d).length>100)
                {
                    alert("Enter Degree % mark correctly  ");
                    document.form1.markDegree.focus();
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
    <body style="margin:0px" bgcolor="#624631"><jsp:useBean id="cep" class="bean.CandRejValues" />
<jsp:setProperty name="cep" property="*" />
        <table width="100%" border="1" bgcolor="#624631">
            <tr>
                <td height="102" colspan="2"><jsp:include page="Header.jsp"/></td>
            </tr>
            <tr>
                <td width="1" valign="top"><jsp:include page="menu.html"/></td>
                <td width="759"  bgcolor="#FFFFFF"><form action="CandRegValues.jsp" method="post" name="form1" id="form1" onsubmit="return check()">
                        <table width ="115%" border="0" cellpadding="3" cellspacing="0" bordercolor="#FFFFFF" align="left">
                            <tr bgcolor ="#E9E9D8" wdth ="100%">
                                <td height="27" colspan="4" bgcolor="#FEF7E9"><div align="center" class="style4">                <font color="#006666">Registration</font></div></td>
                            </tr>
                            <tr bgcolor ="#E9E9D8" width ="100%">
                                <td width="6%" bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td width="32%"><font size="2" color="black" face ="arial" >Name&nbsp;<font color="blue"> (as in academic                                              records) </font></font></td>
                                <td width="52%"><input type="text" name="name" size="30" maxlength="30" value='' /></td>
                                <td width="10%" bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Gender</font></td>
                                <td><select name="gender" >
                                        <option  value="Female">Female</option>
                                        <option  value="Male">Male </option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial" >Date of Birth&nbsp;</font><font color="blue">(dd/mm/yy)</font></td><td><jsp:include page="datePicker.html"/><!-- <input type="text" name="dob" size="30" maxlength="30" /> --></td>
                                
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td height="29"><font size="2" color="black" face ="arial">College in which studying</font></td>
                                <td><input type="text" name="collname" size="30" maxlength="30" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">College Phone</font></td>
                                <td><input type="text" name="collphone" size="30" maxlength="30" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">College Email</font></td>
                                <td><input type="text" name="email" size="30" maxlength="50" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Branch of study</font></td>
                                <td><select name="branch" >
                                        <option  value="">------Select--------- </option>
                                        <option  value="Applied Electro            ">Applied Electronics </option>
                                        <option  value="Applied Physics            ">Applied Physics </option>
                                        <option  value="B C A                      ">B C A </option>
                                        <option  value="Bioinformatics              ">Bioinformatics </option>
                                        <option  value="Biotechnology              ">Biotechnology </option>
                                        <option  value="Chemistry                  ">Chemistry </option>
                                        <option  value="Comp and Networking        ">Computer and Networking </option>
                                        <option  value="Comp Application           ">Computer Application </option>
                                        <option  value="Comp Application &amp; IT      ">Computer Application &amp; IT </option>
                                        <option  value="Comp Hardware Maintenance  ">Computer Hardware Maintenance </option>
                                        <option  value="Comp Information Systems   ">Computer Information Systems </option>
                                        <option  value="Comp Maintenance           ">Computer Maintenance </option>
                                        <option  value="Comp Maintenance &amp; Electro ">Computer Maintenance &amp; Electronics </option>
                                        <option  value="Comp Science               ">Computer Science </option>
                                        <option  value="Comp Science &amp; Information ">Computer Science &amp; Information </option>
                                        <option  value="Comp Technology            ">Computer Technology </option>
                                        <option  value="Electro                    ">Electronics </option>
                                        <option  value="Electro &amp; Communication    ">Electronics &amp; Communication </option>
                                        <option  value="Electro &amp; Comp Hardware    ">Electronics &amp; Computer Hardware </option>
                                        <option  value="Electro &amp; Comp Maintenance ">Electronics &amp; Computer Maintenance </option>
                                        <option  value="Industrial Chemistry       ">Industrial Chemistry </option>
                                        <option  value="Information Technology     ">Information Technology </option>
                                        <option  value="Instrumentation            ">Instrumentation </option>
                                        <option  value="Mathematics                ">Mathematics </option>
                                        <option  value="Optical Instrumentation    ">Optical Instrumentation </option>
                                        <option  value="Physics                    ">Physics </option>
                                        <option  value="Physics &amp; Electro          ">Physics &amp; Electronics </option>
                                        <option  value="Physics Instrumentation    ">Physics Instrumentation </option>
                                        <option  value="Physics with Comp App      ">Physics with Comp Applications </option>
                                        <option  value="Software Systems           ">Software Systems </option>
                                        <option  value="Software Technology        ">Software Technology </option>
                                        <option  value="Statistics                 ">Statistics </option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">% of Marks</font></td>
                                <td><table width="220" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td width="72"><div align="center"><font size="1" color="black" face ="arial">X % </font></div></td>
                                            <td width="73"><div align="center"><font size="1" color="black" face ="arial">XII %</font> </div></td>
                                            <td width="75"><div align="right"><font size="1" color="black" face ="arial">BCA / B.Sc. %</font></div></td>
                                        </tr>
                                        <tr>
                                            <td><div align="center"><font size="1" color="black" face ="arial">
                                                        <input type="text" name="mark10" size="5" maxlength="5" value='' onblur="checkDec('mark10')" />
                                            </font></div></td>
                                            <td><div align="right">
                                                    <input type="text" name="mark12" size="5" maxlength="5" value='' onblur="checkDec('mark12')" />
                                            </div></td>
                                            <td>

                                                <div align="right">
                                                    <input type="text" name="markDegree" size="5" maxlength="5" value='' onblur="checkDec('markBSC')" />
                                        </div></td></tr>
                                </table></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial"> Degree</font></td>
                                <td><select name="degree">
                                        <option value ="BTech">BTech</option>
                                        <option value ="MTech">MTech</option>
                                        <option value ="MCA">MCA</option>
                                        <option value ="BCA">BCA</option>
                                        <option value ="BSc">BSC</option>
                                        <option value ="MSc">MSc</option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9" wdth ="100%">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Username</font></td>
                                <td><input type="text" name="username" size="30" maxlength="30" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9" wdth ="100%">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Password</font></td>
                                <td><input type="password" name="password" size="30" maxlength="30" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr  bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Email_id</font></td>
                                <td><input type="text" name="emailid" size="30" maxlength="30" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Telephone Number</font></td>
                                <td><input type="text" name="telephone" value="" />
                                <font size="2" color="#CC0000" face ="arial">(STD-No.)</font></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr  bgcolor ="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">Address</font></td>
                                <td><input class="USS_TEXT" maxlength="30" name="addr" size="40" value='' />
                                <b><font face="ARIAL, HELVETICA" color="red" size="+2"></font></b></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">State</font></td>
                                <td><select name="state">
                                        <option selected="selected" value="">Select State</option>
                                        <option value="AP">Andhra Pradesh</option>
                                        <option value="AR">ArunachalPradesh</option>
                                        <option value="AS">Assam</option>
                                        <option value="BR">Bihar</option>
                                        <option value="CH">Chandigarh</option>
                                        <option value="CG">Chattisgarh</option>
                                        <option value="DL">Delhi</option>
                                        <option value="GA">Goa</option>
                                        <option value="GJ">Gujarat</option>
                                        <option value="HR">Haryana</option>
                                        <option value="HP">Himachal Pradesh</option>
                                        <option value="JK">Jammu &amp; Kashmir</option>
                                        <option value="JH">Jharkhand</option>
                                        <option value="KA">Karnataka</option>
                                        <option value="KL">Kerala</option>
                                        <option value="MP">Madhya Pradesh</option>
                                        <option value="MH">Maharashtra</option>
                                        <option value="MN">Manipur</option>
                                        <option value="ML">Meghalaya</option>
                                        <option value="MZ">Mizoram</option>
                                        <option value="NL">Nagaland</option>
                                        <option value="OR">Orissa</option>
                                        <option value="PY">Pondicherry</option>
                                        <option value="PB">Punjab</option>
                                        <option value="RJ">Rajasthan</option>
                                        <option value="SK">Sikkim</option>
                                        <option value="TN">Tamilnadu</option>
                                        <option value="TR">Tripura</option>
                                        <option value="UA">Uttaranchal</option>
                                        <option value="UP">Uttar Pradesh</option>
                                        <option value="WB">West Bengal</option>
                                        <option value="XX">Others</option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr>
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1">Pincode</font></td>
                                <td><input class="USS_TEXT" maxlength="6" name="pincode" size="6" value='' /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor="#E9E9D8">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font face="Arial, helvetica" color="#000000" size="-1" >Category</font></td>
                                <td><select name="sel_cat" id="sel_cat" onchange="setVal(this.value)">
                                        <option value="category">select a category</option>
                                        <option value="Fresher">Fresher</option>
                                        <option value="Experienced">Experienced</option>
                                </select>              </td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Experienced Years</font></td>
                                <td><input type="text" name="expyears" id="expyears" size="30" maxlength="30" /></td>
                                <td bgcolor="#FEF7E9">&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Company</font></td>
                                <td><input type="text" name="company" id="company" size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Designation </font></td>
                                <td><input type="text" name="designation" id="designation" size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Salary</font></td>
                                <td><input type="text" name="salary" id="salary" size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr bgcolor ="#FEF7E9">
                                <td bgcolor="#FEF7E9"><span class="style5"></span></td>
                                <td><font size="2" color="black" face ="arial">Company Address</font></td>
                                <td><input type="text" name="comAddress" id="comAddress"  size="30" maxlength="30" /></td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td colspan="4" align="center" bgcolor="#FEF7E9" ><br/>
                                    <input type="reset" />
                                    &nbsp;&nbsp;&nbsp;&nbsp;
                                    <input type="submit" value="submit" />
                                    <br />
                                <br /> </td>
                            </tr>
                        </table>
                </form></td>
            </tr>
        </table>

    </body>
</html>