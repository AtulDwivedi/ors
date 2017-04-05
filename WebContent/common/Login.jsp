<%-- 
    Document   : Login
    Created on : Nov 11, 2012, 12:44:19 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
    <title>Online Recruitment System</title>
    <style type="text/css">
        <!--
        .body {
            margin:0%;
        }
        a:link {
            color: #003366;
            text-decoration: underline;
        }
        a:visited {
            text-decoration: underline;
            color: #660066;
        }
        a:hover {
            text-decoration: none;
            color: #CC6633;
        }
        a:active {
            text-decoration: underline;
            color: #990033;
        }
        .style10 {
            color: #993300;
            font-weight: bold;
        }
        .style11 {
            color: #993333;
            font-weight: bold;
        }
        .style12 {color: #339933}
        body,td,th {
            color: #336633;
        }
        -->
    </style>
</head>

<body style="margin:0px">
<table width="100%" height="492" border="1">
    <tr valign="top">
        <td height="120" colspan="2" bgcolor="#624631"><jsp:include page="${request.contextPath}/Header.jsp"/></td>
    </tr>
    <td width="1" height="449" valign="top" bgcolor="#624631"><jsp:include page="${request.contextPath}/menu.jsp"/></td>
    <td width="759" valign="top" bgcolor="#E8E1C7">
        <div align="right" >
            <p><img src="images\Login.jpg" width="209" height="166"></p>
        </div>
        <form name="login" method="post" action="<%=request.getContextPath() %>/LoginServlet">

            <div align="right">
                <table width="219" height="230" border="1" align="right">
                    <tr valign="top">
                        <td height="36" bgcolor="#668CCC"><p align="center" class="style10">Already a member???</p>            </td>
                    </tr>
                    <tr>
                        <td width="209" height="155" bgcolor="#93C2E6">
                            <div align="center">
                                <p><strong>Enter Username </strong><br>
                                    <input name="username" type="text" id="username" />
                                </p>
                            </div>
                            <p align="center"><strong>Enter Password
                                    <input name="password" type="password" id="password" />
                            </strong></p>

                            <label></label>
                            <div align="center">
                                <input type="submit" name="Submit" value="Login" />
                        </div></td>
                    </tr>
                </table>
        </div></form>
        <p align="right">&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
        <p>&nbsp;</p>
    <p>&nbsp;</p>    </td>
    </tr>
</table>
</tr>
</table>

</body>
</html>