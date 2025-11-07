<%-- 
    Document   : ProfilePage
    Created on : 11 Mar 2025, 8:59:10 am
    Author     : user
--%>

<%@page import="com.mycompany.jobseekersproject.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            body {
                font-family: Arial, sans-serif;
            }
            .profile-container {
                width: 50%;
                margin: auto;
                padding: 20px;
                border: 1px solid #ddd;
                border-radius: 10px;
                background-color: #f9f9f9;
            }
            .profile-container h2 {
                text-align: center;
            }
            .profile-info {
                margin: 10px 0;
            }
        </style>
    </head>
    <body>
         <div class="profile-container">
            <h2>User Profile</h2>
            <%
                User user = (User) session.getAttribute("user");
                if (user != null) {
            %>
                <div class="profile-info">
                    <strong>Name:</strong> <%= user.getName() %>
                </div>
                <div class="profile-info">
                    <strong>Email:</strong> <%= user.getEmail() %>
                </div>
                <div class="profile-info">
                    <strong>Education:</strong> <%= user.getEmail() %>
                </div>
                <div class="profile-info">
                    <strong>Mobile Number:</strong> <%= user.getName() %>
                </div>
            <%
                } else {
            %>
                <p>User not logged in.</p>
            <%
                }
            %>
            <a href="UserViewWebsite.jsp">Back to Job Search</a>
        </div>
    </body>
</html>
