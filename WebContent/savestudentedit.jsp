
<%@page import="java.io.*" session="true"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>www.CarrierMithr.com</title>
    </head>
    <body>
        <%
        try {
            String c1 = (String) session.getAttribute("s1");
            String c2 = (String) session.getAttribute("s2");
            String old_cat = request.getParameter("category");
            String new_cat = request.getParameter("cat");

            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            Connection con = DriverManager.getConnection("jdbc:odbc:OnlineExam");
            Statement st = con.createStatement();
            Statement st2 = con.createStatement();
            Statement st3 = con.createStatement();

            String name = request.getParameter("name");
            String college = request.getParameter("college");
            String coph = request.getParameter("collegephone");
            String cemail = request.getParameter("collegeemail");
            String degree = request.getParameter("markDegree");
            String email = request.getParameter("email");
            String ph = request.getParameter("telephone");
            String add = request.getParameter("address");
            String state = request.getParameter("state");
            String pin = request.getParameter("pin");
            String expyears = request.getParameter("expyears");
           
            ResultSet rs = null;
            if (old_cat.equalsIgnoreCase("Fresher") && new_cat == null) {
                new_cat = "Fresher";
            } else if (old_cat.equalsIgnoreCase("Experienced")) {
                new_cat = "Experienced";
            }
            String a = "Update Details set Name='" + name + "',CollegeName='" + college +
                    "',CollegePhone='" + coph + "',CollegeEmail='" + cemail +
                    "',Mark='" + degree + "',Email_id='" + email + "',Telephone='" +
                    ph + "',Address='" + add + "',State='" + state +
                    "',Pincode='" + pin + "',Category='" + new_cat + "' where Username='" + c1 + "'";
            st.executeUpdate(a);
            String q = null;
            if (old_cat.equalsIgnoreCase("Fresher") && new_cat.equalsIgnoreCase("Experienced")) {
                q = "insert into Experienced values('" + c1 + "','" + request.getParameter("expyears") +
                        "','" + request.getParameter("company") + "','" + request.getParameter("designation") +
                        "','" + request.getParameter("salary") + "','" + request.getParameter("comAddress") +
                        "')";
            } else if (old_cat.equalsIgnoreCase("Experienced")) {
                q = "Update Experienced set ExpYears='" + request.getParameter("expyears") + "',Company='" +
                        request.getParameter("company") + "',Designation='" + request.getParameter("designation") +
                        "',Salary='" + request.getParameter("salary") + "',ComAddress='" + request.getParameter("comAddress") +
                        "'where Username='" + c1 + "'";
            }
            if (q != null) {
                st2.executeUpdate(q);
            }


        %>
        <font color="red" size="5"> <%out.println("You have Successfully Edited!!!");%></font>
        <%
        } //try
        catch (Exception e) {
            out.println(e);
        }
        %>
        <p>&nbsp;</p>
        <p><a href="CandidateHomePage.jsp"><strong>Goto Home</strong></a> </p>
    </body>
</html>
