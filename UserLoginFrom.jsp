<%-- 
    Document   : UserLoginFrom
    Created on : 24 Feb 2025, 4:40:17 am
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

        .login-container {
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            color: #333;
            margin-bottom: 20px;
        }

        form {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }

        input[type="submit"] {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 10px 0;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        a {
            color: #007BFF;
            text-decoration: none;
            margin: 5px 0;
            display: block;
            font-size: 14px;
        }

        a:hover {
            text-decoration: underline;
        }

         /* Back Button Style */
        .back-button {
            background-color: #f44336; /* Red color */
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin: 20px 0;
        }

        .back-button:hover {
            background-color: #d32f2f; /* Darker red */
        }
    </style>
    </head>
    <body>
        
     <div class="login-container">
        <h1>User Login Form</h1>
        <form action="loginservlet" method="POST">
            Username: <input type="text" name="username" value="" /><br>
            Password: <input type="password" name="password" value="" /><br>
            <input type="submit" value="Submit" /><br>
            <a href="#">Forget Password?</a>
             <a href="UserRegister.jsp">Don't have an account? Register here</a>
             
        </form>
        
        <form action="JobSeekers.jsp" method="get">
            <button class="back-button" type="submit">Back</button>
        </form>
        </div>
       
    </body>
</html>
