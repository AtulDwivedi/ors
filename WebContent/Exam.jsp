<%-- 
    Document   : Exam
    Created on : Nov 25, 2008, 2:12:42 PM
    Author     : Srishti
--%>

<%@page import="java.io.*,java.sql.*"session="true"%>
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
.style9 {color: #663366; font-weight: bold; }
-->
        </style>
</head>
    <body>
        
        
        <table width="277" height="144" border="0" align="center">
          <tr>
            <td colspan="2"><div align="center" class="style1"> </div></td>
          </tr>
          <tr>
<%
      String jid=request.getParameter("jobid");  
      out.print(jid);
    try
       {
        if(jid==null)       
              {
                 Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
                Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");
                Statement st = con.createStatement();
%>
               <form name="form1" action="ExamConduct.jsp">
 <td width="135" height="42"><span class="style7">Select a JobID </span></td>
            <td width="132">
              <label>
                <select name="jobid">
<%      ResultSet rs = st.executeQuery("select * from JobDetails");
                String s1=null;
             // String s2=null;
                while (rs.next())
                    {  
                      s1=rs.getString("JobId");
                //    s2=rs.getString("Post");
              
%>
                  <option value="<%=s1%>"><%=s1%></option>
                 <% }//while %>
              </select>
              
              </label>  
            
           </td>
   </tr>  
   <tr><td> <input type="submit" value="Select"> </td></tr> 
   </form>
<%  
          }//if
    else 
         {
            jid=request.getParameter("jobid");
            out.println(jid);
            out.println("test");
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");
            Statement st = con.createStatement();
            Statement st2=con.createStatement();
            ResultSet rs = st.executeQuery("select * from JobDetails where JobId='"+jid+"'");
                String s2=null;
                while(rs.next())
                    {
                      s2=rs.getString("post");
                  
%>
          <tr>
            
          </tr>
        </table>
        <p>&nbsp;</p>
        <form method="post" action="saveexam.jsp">
       <table width="661" height="350" border="1" align="center">
  <tr>
    <td width="141" bgcolor="#D3F1F8"><div align="center"><strong>Question No: </strong></div></td>
    <td width="504" bgcolor="#D3F1F8">
      <label>
        
      <div align="left">
            <select name="select">
              <option>1</option>
              <option>2</option>
              <option>3</option>
              <option>4</option>
            </select>
      </div>
      </label>
    
    </td>
  </tr>
  <tr>
    <td height="50" bgcolor="#D3F1F8"><div align="center"><strong>Question</strong></div></td>
    <td bgcolor="#D3F1F8">&nbsp;</td>
  </tr>
  <tr>
    <td height="49" colspan="2" bgcolor="#D3F1F8">
      <label>
        <input name="radiobutton" type="radio" value="a" />
      </label>
    
      <strong>a.</strong></td>
  </tr>
  <tr>
    <td height="50" colspan="2" bgcolor="#D3F1F8"><input name="radiobutton" type="radio" value="b" />
      <strong>      b.</strong></td>
  </tr>
  <tr>
    <td height="48" colspan="2" bgcolor="#D3F1F8"><input name="radiobutton" type="radio" value="c" />
      <strong>c.</strong></td>
  </tr>
  <tr>
    <td height="48" colspan="2" bgcolor="#D3F1F8">
     
        <input name="radiobutton" type="radio" value="d" />
        <strong>d.    </strong></td>
  </tr>
  <tr>
    <td colspan="2" bgcolor="#D3F1F8">
      <label>
        
          <div align="center">
            <input type="text" name="ans" />
            
      </div>
      </label>
    
    </td>
  </tr>
</table>
    </form>
<%
           }//while
                session.setAttribute("jobid", request.getParameter("jobid"));
            session.setAttribute("post", s2);    
                out.println("123");
      }//else
        
   }//try
            catch(Exception e)
              {
                 out.println(e);
              }
%>

<p>&nbsp;</p>

</body>
</html>

