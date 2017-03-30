<%-- 
    Document   : EditProfile
    Created on : Nov 14, 2012, 11:33:33 AM
    Author     : user
--%>
<%@page import="java.io.*" session="true"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Recruitment System</title>
        <script language="javascript">
        function setVal(obj)
         {
             
             if(obj.value=='f')
                 {
                     form1.expyears.disabled=true;
                     form1.company.disabled=true;
                     form1.designation.disabled=true;
                     form1.salary.disabled=true;
                     form1.comAddress.disabled=true;
                 }
                 else{
                     form1.expyears.disabled=false;
                     form1.company.disabled=false;
                     form1.designation.disabled=false;
                     form1.salary.disabled=false;
                     form1.comAddress.disabled=false;
                 }
         }
        </script>
    </head>
<body bgcolor="#FFFFFF" text="#0033FF" link="#CC6600">
    <% try {

                String c1 = (String)session.getAttribute("s1");
                String c2 = (String)session.getAttribute("s2");
                Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");

                Statement st = con.createStatement();

                ResultSet rs = st.executeQuery("select * from Details where Username='" + c1 + "'");
            
                String s1=null;
                String s2=null;
                String s3=null;
                String s4=null;
                String s5=null;
                String s6=null;
                String s7=null;
                String s8=null;
                String s9=null;
                String s10=null;
                String s11=null;
                
                while (rs.next())
                    {  
                    s1=rs.getString(2);//name
                    s2=rs.getString(5);//colg
                    s3=rs.getString(6);//colgph
                    s4=rs.getString(7);//colgemail
                    s5=rs.getString(9);//mark
                    s6=rs.getString(11);//email
                    s7=rs.getString(12);//tph
                    s8=rs.getString(13);//add
                    s9=rs.getString(14);//state
                    s10=rs.getString(15);//pin
                    s11=rs.getString(16);//category
                    
                    }
      %>
            <form method="POST" action="savestudentedit.jsp" name="form1">
              <table border=0 cellpadding=3 cellspacing=0 width =64% align=center>
              <tr bgcolor =#FEF7E9 wdth =100%>
                <td width="44%"><font SIZE="2" COLOR="black" face =arial >Name&nbsp;</font>                                     <font color="blue"> (as in academic records)</font>                </td>
	                             <td width="56%"><input TYPE="text" NAME="name" size=30 
                                       maxlength=30 value='<%=s1%>'>
                </td>
                </tr>
                           <tr bgcolor =#FEF7E9>
	                             <td><font SIZE="2" COLOR="black" face =arial>College in which studying</font>                  </td>
	                             <td><input TYPE="text" NAME="college" size=30 maxlength=30 value='<%=s2%>'>                       </td>
                           </tr>
                           <tr bgcolor =#FEF7E9>
	                             <td><font SIZE="2" COLOR="black" face =arial>College Phone</font>                                 </td>
	                             <td><input TYPE="text" NAME="collegephone" size=30 maxlength=30                                       value='<%=s3%>'><font SIZE="2" COLOR="#CC0000" face =arial (STD-No.)>
                                 </td>
                           </tr>
                           <tr bgcolor =#FEF7E9>
	                             <td><font SIZE="2" COLOR="black" face =arial>College Email</font>                                 </td>
	                             <td><input TYPE="text" NAME="collegeemail" size=30 maxlength=50                                        value='<%=s4%>'>
                                 </td>
                           </tr>
              <tr bgcolor =#FEF7E9>
                <td><font SIZE="2" COLOR="black" face =arial>% of Marks</font></td>
	                           <td>
                                 <table border=0 cellpadding=0 cellspacing=0>
		                                <tr>
		                                     <td><font SIZE="1" COLOR="black" face =arial>B.Tech/BCA/B.Sc.</font>                                </td>
		                               </tr>
		                               <tr>
                                              <td><input TYPE="text" NAME="markDegree" size=5 maxlength=5 value='<%=s5%>' onblur="checkDec('markBSC')">
                                              </td>
		                               </tr>
	                             </table>
	                           </td>
                           </tr>
              <tr  bgcolor =#FEF7E9>
                <td><font SIZE="2" COLOR="black" face =arial>Email_id</font></td>
	                            <td><input TYPE="text" NAME="email" size=30 maxlength=30 value='<%=s6%>'></td>
                           </tr>
                           <tr>
	                            <td><font SIZE="2" COLOR="black" face =arial>Telephone Number</font>                           </td>
	                            <td><input TYPE="text" NAME="telephone" size=4 maxlength=4 value='<%=s7%>'><input TYPE="text" NAME="phone1" value=""><font SIZE="2" COLOR="#CC0000" face =arial>(STD-No.)                       </td>
                          </tr>
                          <tr  bgcolor =#FEF7E9>
                             <td ><font face="Arial, helvetica" color=#000000 size=-1>Address</font>                        </td>
                             <td><input class=USS_TEXT maxLength=30 name="address" size=40 value='<%=s8%>'><b><font face="ARIAL, HELVETICA" color=red size=+2></font></b>
                             </td>
                         </tr>
                         <tr>
                             <td><font face="Arial, helvetica" color=#000000 size=-1>State</font>                             </td>
                             <td><select name=state> <option selected value='<%=s9%>'>Select State</option> 
        <option value=AP>Andhra Pradesh</option> <option value=AR>Arunachal 
        Pradesh</option> <option value=AS>Assam</option> <option 
        value=BR>Bihar</option> <option value=CH>Chandigarh</option> <option 
        value=CG>Chattisgarh</option> <option value=DL>Delhi</option> <option 
        value=GA>Goa</option> <option value=GJ>Gujarat</option> <option 
        value=HR>Haryana</option> <option value=HP>Himachal Pradesh</option> 
        <option value=JK>Jammu &amp; Kashmir</option> <option 
        value=JH>Jharkhand</option> <option value=KA>Karnataka</option> <option 
        value=KL>Kerala</option> <option value=MP>Madhya Pradesh</option> 
        <option value=MH>Maharashtra</option> <option value=MN>Manipur</option> 
        <option value=ML>Meghalaya</option> <option value=MZ>Mizoram</option> 
        <option value=NL>Nagaland</option> <option value=OR>Orissa</option> 
        <option value=PY>Pondicherry</option> <option value=PB>Punjab</option> 
        <option value=RJ>Rajasthan</option> <option value=SK>Sikkim</option> 
        <option value=TN>Tamilnadu</option> <option value=TR>Tripura</option> 
        <option value=UA>Uttaranchal</option> <option value=UP>Uttar 
        Pradesh</option> <option value=WB>West Bengal</option> <option
        value=XX>Others</option></select><br>
                              </td>
                             </tr>
                       <tr>
                              <td><FONT face="Arial, helvetica" color=#000000 size=-1>Pincode</B></FONT>                       </td>
                              <td><INPUT class=USS_TEXT maxLength=6 name="pin" size=6 value='<%=s10%>'><B><FONT face="ARIAL, HELVETICA" color=red size=+2></FONT></B>
                              </td>
                       </tr>
        <%
        if(s11.equals("Fresher"))
            {
        %>
                        <tr>
                              <td><font SIZE="2" COLOR="black" face =arial>Category</font></td>
	                          <td align="left" ><input type="radio" name="cat"  value='Fresher' onclick="setVal(this);"/>Fresher
                                      <input type="radio" name="cat"  value='Experienced' onclick="setVal(this);" />Experienced
                               </td>
                        </tr>
  <%
                }
 %>
                        <tr bgcolor =#FEF7E9>
	                           <td><font SIZE="2" COLOR="black" face =arial>Experienced Years</font></td>
	                           <td><input TYPE="text" NAME="expyears" size=30 maxlength=30></td>
                        </tr>
                        <tr bgcolor =#FEF7E9>
	                            <td><font SIZE="2" COLOR="black" face =arial>Company</font></td>
	                            <td><input TYPE="text" NAME="company" size=30 maxlength=30></td>
                        </tr>
                        <tr bgcolor =#FEF7E9>
	                         <td><font SIZE="2" COLOR="black" face =arial>Designation </font></td>
	                         <td><input TYPE="text" NAME="designation" size=30 maxlength=30></td>
                        </tr>
                        <tr bgcolor =#FEF7E9>
	                         <td><font SIZE="2" COLOR="black" face =arial>Salary</font></td>
	                         <td><input TYPE="text" NAME="salary" size=30 maxlength=30></td>
                        </tr>
                       <tr bgcolor =#FEF7E9>
	                      <td><font SIZE="2" COLOR="black" face =arial>Company Address</font></td>
	                      <td><input TYPE="text" NAME="comAddress" size=30 maxlength=30></td>
                      </tr>
                      <tr>
                         <td height="49" colspan=2 align="center" ><input TYPE="submit" value="submit"></td>
                </tr>
</table>
</form>

 <%// }//while
  }//try 
    catch (Exception e)
            {
               out.println(e);
            }
    
    %> 
</body>
</html>
