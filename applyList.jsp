<%-- 
    Document   : applyList
    Created on : 5 Mar 2025, 2:42:10 am
    Author     : user
--%>

<%@page import="com.mycompany.jobseekersproject.ApplyDAO"%>
<%@page import="java.io.File"%>
<%@page import="com.mycompany.jobseekersproject.Apply"%>
<%@page import="java.util.List"%>
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
                margin: 0;
                padding: 0;
                background-color: #f4f4f9;
                display: flex;
                justify-content: center;
                align-items: flex-start;
                min-height: 100vh; /* Make sure content is on top */
            }

            /* Container for content */
            .container {
                width: 80%;
                max-width: 1200px;
                padding: 20px;
                background-color: white;
                border-radius: 10px;
                box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1), 0 4px 20px rgba(0, 0, 0, 0.15);
                overflow: hidden;
                margin-top: 20px;
            }

            /* Heading style */
            h1 {
                text-align: center;
                color: #333;
                margin-bottom: 30px;
                font-size: 2.5em;
            }

            /* Table styling */
            table {
                width: 100%;
                border-collapse: collapse;
                margin-top: 20px;
            }

            th, td {
                padding: 12px;
                text-align: center;
                border-bottom: 1px solid #ddd;
            }

            th {
                background-color: #007bff;
                color: white;
                text-align: center;
                font-weight: bold;
            }

            td {
                background-color: #f9f9f9;
            }

            tr:nth-child(even) td {
                background-color: #f1f1f1;
            }

            /* Links styling */
            a {
                color: #007bff;
                text-decoration: none;
                font-weight: bold;
            }

            a:hover {
                text-decoration: underline;
            }

            /* No data styling */
            .no-data {
                text-align: center;
                color: #888;
                padding: 20px 0;
                font-size: 1.2em;
            }

            /* Error or message styling */
            .message {
                font-size: 1.2em;
                text-align: center;
                color: #ff0000;
            }
.back-btn {
    display: block;
    width: 150px;
    margin: 20px auto;
    padding: 10px;
    background-color: #28a745;
    color: white;
    text-align: center;
    font-size: 16px;
    border-radius: 5px;
    text-decoration: none;
    cursor: pointer;
}

.back-btn:hover {
    background-color: #218838;
}

         /* Accept button style */
            .accept-btn {
                padding: 8px 18px;
                background-color: #28a745; /* Green for accept */
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .accept-btn:hover {
                background-color: #218838; /* Darker green on hover */
            }

            /* Reject button style */
            .reject-btn {
                padding: 8px 18px;
                background-color: #dc3545; /* Red for reject */
                color: white;
                border: none;
                border-radius: 5px;
                font-size: 16px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .reject-btn:hover {
                background-color: #c82333; /* Darker red on hover */
            }

            /* Button container style to make sure the buttons align properly */
            form {
                display: inline-block;
                margin: 0 10px;
            }
            /* Table header style */

        </style>
    </head>
    <body>
       <div class="container">
           
            <h1>Job Applications</h1>
            <table>
                <thead>
                    <tr>
                        <th>Job Title</th>
                        <th>Applicant Name</th>
                        <th>Resume</th>
                        <th>Accept</th>
                        <th>Reject</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        List<Apply> applyList = (List<Apply>) request.getAttribute("applyList");
                        if (applyList != null && !applyList.isEmpty()) {
                            for (Apply apply : applyList) {
                    %>
                    <tr>
                        <td><%= apply.getJobTitle() %></td>
                        <td><%= apply.getApplicantName() %></td>
                        <td>
                            <% if (apply.getResume() != null && !apply.getResume().isEmpty()) { %>
                                <a href="<%= request.getContextPath() + "/resumefiles/" + apply.getResume().substring(apply.getResume().lastIndexOf(File.separator) + 1) %>" target="_blank">View File</a>
                            <% } else { %>
                                No file Uploaded
                            <% } %>
                        </td>
                        <td>
                            <form action="AcceptRejectController" method="post">
                                <input type="hidden" name="applyId" value="" />
                                <input type="submit" name="action" value="Accept" class="button accept-btn" />
                            </form>
                        </td>
                        <td>
                            <form action="AcceptRejectController" method="post">
                                <input type="hidden" name="applyId" value="" />
                                <input type="submit" name="action" value="Reject" class="button reject-btn" />
                            </form>
                        </td>
                    </tr>
                    <%
                            }
                        } else {
                    %>
                    <tr>
                        <td colspan="3" class="no-data">No Applicants found.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
                <a href="JobPostListController" class="back-btn">Back</a>

        </div>
    </body>
</html>
