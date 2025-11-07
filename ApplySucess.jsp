<%-- 
    Document   : ApplySucess
    Created on : 5 Mar 2025, 12:57:29 am
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

            
            .success-icon {
                font-size: 30px; /* Adjust the size of the checkmark */
                color: #fff;
                background-color: #28a745;
                border-radius: 50%;
                width: 50px;
                height: 50px;
                display: flex;
                justify-content: center;
                align-items: center;
                margin-right: 15px;  /* Space between checkmark and text */
                vertical-align: middle;
                margin: 0 auto 20px;
            }
            .container {
                text-align: center;
                background-color: white;
                padding: 20px;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
                width: 80%;
                max-width: 600px;
            }

            h1 {
                color: #4CAF50;
            }

            .back-link {
                text-decoration: none;
                display: inline-block;
                margin-top: 20px;
                padding: 10px 20px;
                background-color: #4CAF50;
                color: white;
                font-weight: bold;
                border-radius: 5px;
                text-align: center;
            }

            .back-link:hover {
                background-color: #45a049;
            }

            .arrow {
                display: inline-block;
                margin-left: 10px;
                font-size: 20px;
                color: #fff;
                vertical-align: middle;
            }

        </style>
    </head>
    <body>
         <div class="container">
             <span class="success-icon">✔</span>
            <h1>You have successfully applied for the job!</h1>
            <a href="JobViewListController" class="back-link">
                
                 Continue Apply
            </a>
        </div>
    </body>
</html>
