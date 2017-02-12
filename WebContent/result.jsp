<html xmlns:v="urn:schemas-microsoft-com:vml" xmlns:o="urn:schemas-microsoft-com:office:office" xmlns="http://www.w3.org/TR/REC-html40">

<head>
<meta name="GENERATOR" content="Microsoft FrontPage 5.0">
<meta name="ProgId" content="FrontPage.Editor.Document">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
<link rel="File-List" href="Examinform_files/filelist.xml">

<title>User Name</title>
</head>

<body>
<%



%>
<p>&nbsp;</p>

<table height="133" width="672">
					<tr>
						<th height="87" width="664">&nbsp;
                        </th>
                       
					</tr>
					<tr>
						<th height="1" width="664">
                        <p align="left"><!--[if gte vml 1]><v:roundrect id="_x0000_s1026"
 style='position:absolute;left:216.75pt;top:-199.5pt;width:81pt;height:508.5pt;
 rotation:90;z-index:3;visibility:visible;mso-wrap-edited:f;
 mso-wrap-distance-left:2.88pt;mso-wrap-distance-top:2.88pt;
 mso-wrap-distance-right:2.88pt;mso-wrap-distance-bottom:2.88pt;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text' arcsize=".5" fillcolor="#cebba2"
 stroked="f" strokeweight="0" o:cliptowrap="t">
 <v:shadow color="#ccc"/>
 <v:path insetpenok="f"/>
 <o:lock v:ext="edit" shapetype="t"/>
 <v:textbox inset="2.88pt,2.88pt,2.88pt,2.88pt"/>
</v:roundrect><![endif]--><![if !vml]><span style='mso-ignore:vglayout;
position:absolute;z-index:3;left:4px;top:19px;width:679px;height:108px'><img
width=679 height=108 src="Examinform_files/image001.gif" v:shapes="_x0000_s1026"></span><![endif]><!--[if gte vml 1]><v:shapetype
 id="_x0000_t202" coordsize="21600,21600" o:spt="202" path="m,l,21600r21600,l21600,xe">
 <v:stroke joinstyle="miter"/>
 <v:path gradientshapeok="t" o:connecttype="rect"/>
</v:shapetype><v:shape id="_x0000_s1027" type="#_x0000_t202" style='position:absolute;
 left:68.25pt;top:13.5pt;width:376.5pt;height:81pt;z-index:5;visibility:visible;
 mso-wrap-edited:f;mso-wrap-distance-left:2.88pt;mso-wrap-distance-top:2.88pt;
 mso-wrap-distance-right:2.88pt;mso-wrap-distance-bottom:2.88pt;
 mso-position-horizontal-relative:text;mso-position-vertical:absolute;
 mso-position-vertical-relative:text;float:left' filled="f" fillcolor="black"
 stroked="f" strokeweight="0" o:cliptowrap="t">
 <v:shadow color="#ccc"/>
 <v:path insetpenok="f"/>
 <o:lock v:ext="edit" shapetype="t"/>
 <v:textbox style='mso-column-margin:5.76pt' inset="2.85pt,2.85pt,2.85pt,2.85pt">
<p class="MsoOrganizationName" style="mso-pagination: none" align="center">
<span style="font-size: 28.0pt; font-family: Times New Roman; mso-default-font-family: Times New Roman; mso-ascii-font-family: Times New Roman; mso-latin-font-family: Times New Roman; mso-greek-font-family: Times New Roman; mso-cyrillic-font-family: Times New Roman; mso-latinext-font-family: Times New Roman; color: #006666; language: EN; mso-ansi-language: EN">
<![if !supportEmptyParas]>&nbsp;<![endif]>Srishti </span>
<span style="font-family: Times New Roman; font-size: 28pt; color: #006666">Test 
Suite</span></p>
<p class="MsoOrganizationName" style="mso-pagination: none" align="center">&nbsp;</p>
<p class="MsoOrganizationName" style="mso-pagination: none" align="center">&nbsp;</p>
 </v:textbox>
</v:shape><![endif]--><![if !vml]><span style='mso-ignore:vglayout;position:
absolute;z-index:5;left:91px;top:18px;width:506px;height:112px'><img width=506
height=112 src="Examinform_files/image002.gif" align=left
alt="Text Box: &nbsp;Srishti Test Suite&#13;&#10;&nbsp;&#13;&#10;&nbsp;&#13;&#10;"
v:shapes="_x0000_s1027"></span><![endif]><p align="right">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        </th>
                       
					</tr>
<body bgcolor="ffffff">
<%
int ca=Integer.parseInt(request.getParameter("ca"));
int wa=Integer.parseInt(request.getParameter("wa"));
int a=Integer.parseInt(request.getParameter("t"));
ca=ca/2;
wa=wa/2;
a=a/2;
//out.println("Your Number of correct answers"+ca);
//out.println("Your Number of wrong answers"+wa);

int mark= (ca*4)-(wa);
//out.println(mark);

%>
<br>
<br>
<table align="center" border="0" width="314" height="227" bgcolor="ffffff">
      <tr>
        <td>
<p align="center">
<font color="#FF0000" size="+1">

  Your Number of correct answers <%=ca%><p align="center">
  Your Number of wrong answers <%=wa%><p align="center">
 Your Total Mark is <%=mark%>
<p align=center>
<html:submit value="OK"/>
</p></font>
</td>
      </tr>
</table>
</body>

 </html>
