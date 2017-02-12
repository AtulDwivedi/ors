<%-- 
    Document   : ViewQuestions
    Created on : Nov 18, 2008, 4:07:26 PM
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
}
-->
        </style>
</head>
 <body style="margin:0px" bgcolor="#FFFFFF">
        <table width="100%" border="1" bgcolor="#FFFFFF">
          <tr>
            <td height="107" colspan="2"><jsp:include page="CompanyHeader.jsp"/></td>
          </tr>
          <tr>
            <td width="1" height="512"><jsp:include page="Companymenu.html"/></td>
            <td width="961">
	<table width="291" height="89" border="1" align="center">
          <tr>
            <td colspan="2"><div align="center" class="style1">View Question </div></td>
          </tr>

          <tr>
            <td width="147"><strong>Select Exam ID </strong></td>
            <td width="128">
                <select name="examid">
              <option> </option>
              </select>
            
            </td>
          </tr>
        </table>
        <p>&nbsp;</p>
        <p align="center">&nbsp;</p>
        <table width="829" height="89" border="1" align="center">

          <tr>
            <td width="184" height="31"><strong>Question</strong></td>
            <td width="95"><strong>Option1</strong></td>
            <td width="100"><strong>Option2</strong></td>
            <td width="95"><strong>Option3</strong></td>
            <td width="94"><strong>Option4</strong></td>
            <td width="83"><strong>Answer</strong></td>
            <td width="61"><strong>Edit</strong></td>
            <td width="65"><strong>Delete</strong></td>
          </tr>
          <tr>
            <td height="50">&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
            <td>&nbsp;</td>
          </tr>
        </table>
        <h2>&nbsp;</h2>
</td>
          </tr>
        </table>  
    </body>
</html>
