<%-- 
    Document   : Adminlogout
    Created on : 2 Mar 2025, 2:46:07 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="jakarta.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
    
    session.invalidate();

    response.sendRedirect("JobSeekers.jsp");
%>
    </body>
</html>
