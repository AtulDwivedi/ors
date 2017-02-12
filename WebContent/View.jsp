<%-- 
    Document   : View
    Created on : Nov 20, 2008, 1:35:08 PM
    Author     : Srishti
--%>

<%@page import="java.io.*,java.sql.*;"%>
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
.style7 {color: #006666; font-weight: bold; }
.style11 {
	color: #CC3399;
	font-weight: bold;
}
-->
        </style>
</head>
 <body style="margin:0px" >
        <table width="85%" border="0" bgcolor="#EBF1E0">
<tr>
               <!-- <td height="57" colspan="2" bordercolor="#CC9999"><jsp:include page="CompanyHeader.jsp"/></td>-->
                <td height="29" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
          </tr>
              <tr>
                <td  height="512" bordercolor="#CC9999"><jsp:include page="Companymenu.html"/></td>
                   <td width="99%" bordercolor="#CC9999" valign="top">
                       <form name="form1" action="View.jsp">
                         <table  width="33%" height="118" border="0" align="left">
                           <tr>
                             <td height="39" colspan="2" bgcolor="#EBF1E0"><div align="center" class="style1">
                                 <p>View Questions</p>
                             </div></td>
                           </tr>
                           <tr>
                             <%
                                        String eid=request.getParameter("examid");  
                                        //out.print(jid);
                                             try
                                              {
                                                  if(eid==null)       
                                                    {
                                                       Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                                                       Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");
                                                       Statement st = con.createStatement();
                                     %>
                             <td width="136" height="42"><span class="style7">Select an ExamID </span></td>
<td width="69"><label>
                               <select name="examid">
                                 <%      ResultSet rs = st.executeQuery("select * from Exam");
                                                  String s1=null;
                                                  // String s2=null;
                                                   while (rs.next())
                                                      {  
                                                         s1=rs.getString("examid");
                                                         //    s2=rs.getString("Post");
                                          %>
                                 <option value="<%=s1%>"><%=s1%></option>
                                 <%} %>
                               </select>
                             </label>                             </td>
                           </tr>
                           <tr>
                             <td><div align="center">
                                 <input type="submit" value="Show Details">
                             </div></td>
                           </tr>
                         </table>
                     </form>                </td>
          </tr>
 </table>
   
        
<%  
                }
    else {
            %>
              <table width="68%" height="54" border="1" align="left">

          <tr>
            <td width="115" height="23" bgcolor="#ECE0CE"><div align="center"><span class="style11">Question</span></div></td>
            <td width="91" bgcolor="#ECE0CE"><div align="center"><span class="style11">Option1</span></div></td>
            <td width="83" bgcolor="#ECE0CE"><div align="center"><span class="style11">Option2</span></div></td>
            <td width="79" bgcolor="#ECE0CE"><div align="center"><span class="style11">Option3</span></div></td>
            <td width="79" bgcolor="#ECE0CE"><div align="center"><span class="style11">Option4</span></div></td>
            <td width="85" bgcolor="#ECE0CE"><div align="center"><span class="style11">Answer</span></div></td>
            <td width="73" bgcolor="#ECE0CE"><div align="center"><span class="style11">Edit</span></div></td>
            <td width="96" bgcolor="#ECE0CE"><div align="center"><span class="style11">Delete</span></div></td>
          </tr>
            <%
            eid=request.getParameter("examid");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");
       Statement st = con.createStatement();
     // Statement st2=con.createStatement();
      ResultSet rs = st.executeQuery("select * from Question where ExamID='"+eid+"'");
              //  String s2=null;
        while(rs.next())
                    {
                

    %>
<tr>
            <td height="23" bgcolor="#ECE0CE"><div align="center">
              <% out.println(rs.getString("Question"));%>
            </div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center">
              <% out.println(rs.getString("Option1"));%>
            </div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center">
              <% out.println(rs.getString("Option2"));%>
            </div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center">
              <% out.println(rs.getString("Option3"));%>
            </div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center">
              <% out.println(rs.getString("Option4"));%>
            </div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center">
              <% out.println(rs.getString("Answer"));%>
            </div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center"><a href="Edit.jsp?eid=<%=eid%>">Edit</a></div></td>
            <td height="23" bgcolor="#ECE0CE"><div align="center"><a href="DeleteExam.jsp?eid=<%=eid%>">Delete</a></div></td>
          </tr>
      
<%
           }
      }
      }
            catch(Exception e)
              {
          out.println(e);
              }
%>
 </table>  
</body>
</html>
