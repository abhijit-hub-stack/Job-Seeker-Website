<%-- 
    Document   : AdminLoginError
    Created on : 26 Mar 2025, 8:24:15 pm
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        /* Center the content on the page */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-color: #f4f4f4;
        }

        .error-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 350px;
            text-align: center;
            color: #f44336; /* Red color for error */
        }

        h1 {
            font-size: 24px;
            color: #f44336; /* Red color for error */
            margin-bottom: 20px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.2); /* Shadow effect */
        }

        .error-icon {
            font-size: 50px;
            color: #f44336;
            margin-bottom: 20px;
        }

        /* Optional: Style for the error message */
        .message {
            font-size: 18px;
            margin-bottom: 20px;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            font-size: 14px;
        }

        a:hover {
            text-decoration: underline;
        }

    </style>
    </head>
    <body>
         <div class="error-container">
        <!-- "Wrong mark" icon (red cross) -->
        <div class="error-icon">&#10060;</div> <!-- Unicode for a red cross (❌) -->

        <h1>Invalid Username and Password.</h1>

        <!-- Error message description -->
        <div class="message">
             Please try again.
        </div>

        <!-- Optional link to go back to registration page -->
        <a href="AdminLoginFrom.jsp">Go Back</a>
    </div>
    </body>
</html>
