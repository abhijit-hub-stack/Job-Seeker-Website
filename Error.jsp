<%-- 
    Document   : Error
    Created on : 26 Feb 2025, 3:17:41 am
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
         body, html {
  height: 100%;
  margin: 0;
  display: flex;
  justify-content: center;
  align-items: center;
  font-family: Arial, sans-serif;
  background-color: #f0f0f0;
}

/* Styling the message container */
.message {
  text-align: center;
  padding: 20px;
  width: 300px; /* Set a smaller width */
  background-color: white;
  border-radius: 8px;
  box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
}

/* Styling the heading */
.message h1 {
  font-size: 18px; /* Smaller font size */
  color: #ff4d4d;  /* Red color for the text */
  margin: 10px 0;
  text-shadow: 2px 2px 10px rgba(0, 0, 0, 0.3); /* Shadow effect */
}

/* Styling the link */
.message a {
  font-size: 16px; /* Slightly smaller link font */
  color: #0066cc;  /* Blue color for the link */
  text-decoration: none;
  font-weight: bold;
}

.message a:hover {
  text-decoration: underline;
}

        </style>
    </head>
    <body>
         <div class="message">
    <h1>Invalid Username and Password</h1>
    <h1>Please Register First</h1>
    
    <a href="UserRegister.jsp">Go back to registration</a>
  </div>
    </body>
</html>
