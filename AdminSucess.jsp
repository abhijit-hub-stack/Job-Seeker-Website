<%-- 
    Document   : AdminSucess
    Created on : 27 Feb 2025, 9:20:45 am
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f0f0f0;
        }
        .message {
            text-align: center;
            padding: 30px;
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .message h1 {
            color: green;
            font-size: 28px;
        }
        .message p {
            font-size: 18px;
            color: #555;
        }
        .checkmark {
            font-size: 50px;
            color: green;
        }
        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        a:hover {
            background-color: #45a049;
        }
    </style>
    </head>
    <body>
                 <div class="message">
        <div class="checkmark">✓</div>
        <h1>You have Successfully Registered!</h1>
        <p>Click the link below to go to the login page.</p>
        <a href="AdminLoginFrom.jsp">Go to Login Page</a>
    </div>
    </body>
</html>
