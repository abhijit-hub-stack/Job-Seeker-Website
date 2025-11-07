<%-- 
    Document   : SearchJobPage
    Created on : 15 Mar 2025, 9:11:12 am
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseekersproject.JobPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
           <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f7f8fc;
                display: flex;
                flex-direction: column;
                justify-content: center;
                align-items: center;
                min-height: 100vh;
                color: #333;
            }

            /* Section for Job Listings */
            #section2 {
                width: 100%;
                padding: 40px;
                background-color: #ffffff;
                margin-top: 20px;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
                border-radius: 8px;
                max-width: 1200px;
            }

            h1 {
                text-align: center;
                font-size: 2rem;
                color: #333;
                margin-bottom: 20px;
            }

            /* Back Button */
            .back-btn {
                background-color: #007bff;
                color: white;
                padding: 12px 25px;
                text-decoration: none;
                border-radius: 6px;
                display: inline-block;
                font-weight: bold;
                transition: background-color 0.3s ease;
                margin-bottom: 20px;
            }

            .back-btn:hover {
                background-color: #0056b3;
            }

            /* Job Post Container (Grid Layout) */
            .job-container {
                display: grid;
                grid-template-columns: repeat(2, 1fr); /* Ensures two job cards per row */
                gap: 20px;
                padding: 20px;
                margin-top: 20px;
            }

            /* Each Job Card */
            .job-card {
                background-color: #ffffff;
                border: 1px solid #ddd;
                border-radius: 8px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                padding: 20px;
                transition: transform 0.3s ease, box-shadow 0.3s ease;
                text-align: left;
                cursor: pointer;
                display: flex;
                flex-direction: column;
                justify-content: space-between;
            }

            .job-card:hover {
                transform: translateY(-10px);
                box-shadow: 0 8px 12px rgba(0, 0, 0, 0.2);
            }

            /* Job Card Title */
            .job-card h2 {
                font-size: 1.75rem;
                margin-bottom: 15px;
                color: #333;
            }

            /* Job Details */
            .job-card p {
                font-size: 1rem;
                margin: 5px 0;
                color: #555;
            }

            .job-card p strong {
                color: #333;
            }

            /* Apply Button */
            .job-actions {
                margin-top: 20px;
                margin-bottom: 10px;
                display: flex;
                justify-content: flex-end;
            }

            .apply-btn {
                background-color: #007bff;
                color: white;
                padding: 12px 20px;
                text-decoration: none;
                border-radius: 6px;
                font-weight: bold;
                text-align: center;
                width: 100%;
                max-width: 150px;
                transition: background-color 0.3s ease;
            }

            .apply-btn:hover {
                background-color: #0056b3;
            }

            /* No jobs message */
            .no-jobs-message {
                text-align: center;
                font-size: 1.2rem;
                color: #888;
                margin-top: 40px;
            }

            /* Responsive design for smaller screens */
            @media (max-width: 768px) {
                h1 {
                    font-size: 1.5rem;
                }

                .job-card h2 {
                    font-size: 1.5rem;
                }

                .apply-btn {
                    font-size: 1rem;
                }

                .job-container {
                    grid-template-columns: 1fr; /* Stack job cards in one column on small screens */
                }
            }
        </style>
    </head>
    <body>
        
        <section id="section2">
             <a href="JobViewListController" class="back-btn">Back</a> <!-- Back Button -->
    <h1>Job Section</h1>
    
    <!-- Container for job post cards -->
    <div class="job-container">
        <%
        List<JobPost> jobpostList = (List<JobPost>) request.getAttribute("jobpostList");
        
        if (jobpostList != null && !jobpostList.isEmpty()) {
            for (JobPost jobpost : jobpostList) {
        %>
        <!-- Each job post displayed in a card -->
        <div class="job-card">
            <h2><%= jobpost.getJobTitle() %></h2>
            <p><strong>Job Type:</strong> <%= jobpost.getJobType() %></p>
            <p><strong>Location:</strong> <%= jobpost.getLocation() %></p>
            <p><strong>Description:</strong> <%= jobpost.getJobDescription() %></p>
            <p><strong>Post Date:</strong> <%= jobpost.getPostDate() %></p>
            
            <!-- Apply Job Link -->
            <div class="job-actions">
                <a href="ApplyJob.jsp?jobTitle=<%= jobpost.getJobTitle() %>" class="apply-btn">Apply</a>
            </div>
        </div>
        <%
            }
        } else {
        %>
        <p>No job available.</p>
        <% 
        }
        %>
    </div>
</section>
    </body>
</html>
