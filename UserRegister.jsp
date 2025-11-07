<%-- 
    Document   : StudentFrom
    Created on : 26 Feb 2025, 3:11:50 am
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
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

            .registration-container {
                background-color: white;
                padding: 30px;
                border-radius: 10px;
                box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
                width: 500px; /* Set the container width */
                box-sizing: border-box;
                text-align: center;
            }

            h1 {
                font-size: 24px;
                color: #333;
                margin-bottom: 20px;
                font-weight: bold;
            }

            /* Form Layout: Two Columns for the Inputs */
            form {
                display: grid;
                grid-template-columns: 1fr 1fr; /* Two columns layout */
                gap: 15px;  /* Space between columns */
                align-items: center;  /* Vertically center content */
                width: 100%;
            }

            label {
                text-align: left; /* Align label to the left */
                font-size: 16px;
                font-weight: bold;
            }

            input[type="text"],
            input[type="email"],
            input[type="password"] {
                width: 100%;
                padding: 12px;
                margin: 8px 0;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
                font-size: 16px;
            }

            /* Submit Button Style */
            input[type="submit"] {
                grid-column: span 2;  /* Makes the submit button span across both columns */
                width: 100%;
                padding: 12px;
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

            /* Link Style for Login (Center-aligned) */
            a {
                color: #007BFF;
                text-decoration: none;
                font-size: 14px;
                display: block;
                margin: 10px 0;
            }

            a:hover {
                text-decoration: underline;
            }

            /* Back Button Style */
            .back-button {
                background-color: #f44336; /* Red color */
                color: white;
                padding: 10px 18px;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                font-size: 16px;
                margin-top: 10px; /* Space above the button */
                width: 100%;
                transition: background-color 0.3s;
                margin-left: 100px;
            }

            .back-button:hover {
                background-color: #d32f2f; /* Darker red */
            }
    </style>
    </head>
    <body>
        <div class="registration-container">
        <h1>User Registration</h1>
        <form action="UserRegServlet" method="POST">
            Name : <input type="text" name="name" value="" required/><br>
            Email : <input type="email" name="email" value="" required/><br>
            Education :<input type="text" name="education" value="" required/><br>
            Mobile No. :<input type="text" name="mobileno" value="" required/><br>
            Username : <input type="text" name="username" value="" /><br>
            Password : <input type="password" name="password" value="" /><br>
            <input type="submit" value="Submit" /><br>
            
        </form>
        <a href="UserLoginFrom.jsp">Already have an account? Login here</a>
       <form action="JobSeekers.jsp" method="get">
            <button class="back-button" type="submit">Back</button>
        </form>
        </div>
    </body>
</html>
