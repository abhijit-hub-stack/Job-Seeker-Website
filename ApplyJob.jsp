<%-- 
    Document   : ApplyJob
    Created on : 4 Mar 2025, 9:31:44 am
    Author     : user
--%>

<%@page import="com.mycompany.jobseekersproject.Apply"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseekersproject.JobPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
           /* Global body styling */
            body {
                font-family: Arial, sans-serif;
                background-color: #f4f4f9;
                margin: 0;
                padding: 0;
                display: flex;
                justify-content: center;
                align-items: center;
                height: 100vh;
            }

            /* Container for form */
            .container {
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1), 0 4px 20px rgba(0, 0, 0, 0.15);
                padding: 30px;
                width: 100%;
                max-width: 500px;
                box-sizing: border-box;
            }

            /* Heading style */
            h1 {
                text-align: center;
                color: #333;
                margin-bottom: 30px;
                font-size: 2em;
            }

            /* Form group (input fields) styling */
            .form-group {
                margin-bottom: 20px;
            }

            /* Label for input fields */
            .form-group label {
                font-size: 1em;
                color: #555;
                margin-bottom: 5px;
                display: block;
            }

            /* Input fields for text and file */
            .form-group input[type="text"],
            .form-group input[type="email"],
            .form-group input[type="file"],
            .form-group input[type="tel"] {
                width: 100%;
                padding: 12px;
                border: 2px solid #ccc;
                border-radius: 5px;
                font-size: 1em;
                color: #333;
                background-color: #f9f9f9;
                transition: border 0.3s ease, background-color 0.3s ease;
                box-sizing: border-box; /* Include padding in width calculation */
            }

            /* Focused input fields styling */
            .form-group input[type="text"]:focus,
            .form-group input[type="email"]:focus,
            .form-group input[type="file"]:focus,
            .form-group input[type="tel"]:focus {
                border-color: #007bff;
                background-color: #e9f5ff;
                outline: none;
            }

            /* Button styling */
            button {
                width: 100%;
                padding: 14px;
                background-color: #007bff;
                color: white;
                font-size: 1.1em;
                border: none;
                border-radius: 5px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            /* Hover effect for button */
            button:hover {
                background-color: #0056b3;
            }

            /* Style for required fields to show clear labels */
            .form-group input:invalid {
                border-color: #e74c3c;
            }

            /* Styling for placeholder (optional) */
            .form-group input::placeholder {
                color: #ccc;
            }


        </style>
    </head>
   <body>
       
              <div class="container">
                  
            <h1>Apply for Job</h1>
            <%
                String jobTitle = request.getParameter("jobTitle"); // Get jobTitle from URL parameter
                if (jobTitle == null) {
                    jobTitle = "Job Title Not Available"; // Set fallback value
                }
            %>

            <form action="ApplyJobServlet" method="post" enctype="multipart/form-data">
                <!-- Display the job title -->
                <div class="form-group">
                    <label for="jobTitle">Job Title:</label>
                    <input type="text" id="jobTitle" name="jobTitle" value="<%= jobTitle %>" readonly />
                </div>

                <!-- Name input -->
                <div class="form-group">
                    <label for="name">Your Name:</label>
                    <input type="text" id="name" name="applicantname" required />
                </div>

                <!-- Email input -->
                <div class="form-group">
                    <label for="email">Your Email:</label>
                    <input type="email" id="email" name="email" required />
                </div>

                <!-- Education input -->
                <div class="form-group">
                    <label for="education">Education:</label>
                    <input type="text" id="education" name="education" required />
                </div>

                <!-- Contact Number input -->
                <div class="form-group">
                    <label for="contact">Contact Number:</label>
                    <input type="tel" id="contact" name="contact" pattern="[0-9]{10}" required placeholder="Enter 10-digit number"/>
                </div>

                <!-- Resume upload -->
                <div class="form-group">
                    <label for="resume">Upload Your Resume:</label>
                    <input type="file" id="resume" name="resume" required />
                </div>

                <!-- Submit button -->
                <button type="submit">Apply</button>
            </form>
        </div>

    </body>
</html>
