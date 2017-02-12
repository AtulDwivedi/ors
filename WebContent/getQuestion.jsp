<%@page contentType="text/html" pageEncoding="UTF-8" import="java.sql.*"%>
<%
    Connection con;
    Statement st;
    int qno=Integer.parseInt(request.getParameter("qno")) ;

    try{

        
    }catch(Exception ex){
        out.println("Error:" + ex.toString());
    }
%>
