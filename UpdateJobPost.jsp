<%-- 
    Document   : UpdateJobPost
    Created on : 4 Mar 2025, 3:14:11 am
    Author     : user
--%>

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
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        .container {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1), 0 4px 20px rgba(0, 0, 0, 0.15);
            padding: 30px;
            width: 400px;
            max-width: 100%;
            transition: box-shadow 0.3s ease;
            box-sizing: border-box; /* Ensures padding is included in the width */
        }

        .container:hover {
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.2), 0 8px 40px rgba(0, 0, 0, 0.25);
        }

        h1 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        label {
            font-size: 1em;
            color: #555;
            margin-bottom: 5px;
            display: block;
            margin-top: 10px;
        }

        /* Styling for inputs and select elements */
        input[type="text"],
        input[type="date"],
        textarea,
        select {
            width: 100%;
            padding: 12px;
            border: 2px solid #ccc;
            border-radius: 5px;
            font-size: 1em;
            color: #333;
            background-color: #f9f9f9;
            transition: all 0.3s ease;
            margin-bottom: 15px;
            box-sizing: border-box; /* Ensures padding is included in the width */
        }

        /* Focus effect for input fields */
        input[type="text"]:focus,
        input[type="date"]:focus,
        textarea:focus,
        select:focus {
            border-color: #007bff;
            background-color: #e9f5ff;
            outline: none;
        }

        textarea {
            resize: vertical;
            min-height: 120px;
        }

        button {
            width: 100%;
            padding: 12px;
            background-color: #007bff;
            color: white;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button:hover {
            background-color: #0056b3;
        }

        .form-footer {
            text-align: center;
            margin-top: 20px;
        }

        .error {
            color: red;
            text-align: center;
        }
        
        .back-button {
            width: 48%; /* Button width to fit side by side */
            padding: 12px;
            background-color: #f44336; /* Red color for back button */
            color: white;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .back-button:hover {
            background-color: #d32f2f;
        }

        .update-button {
            width: 48%; /* Button width to fit side by side */
            padding: 12px;
            background-color: #007bff; /* Blue color for update button */
            color: white;
            font-size: 1.1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .update-button:hover {
            background-color: #0056b3;
        }
    </style>
    </head>
    <body>
        <div class="container">
            
        <h1>Update Job Post Details</h1>
        <%
         JobPost jobpost=(JobPost)request.getAttribute("jobpost");
         if(jobpost !=null)
         {
         %>
         <form action="SaveUpdatedJobPostController" method="POST">
            <label for="jobTitle">Job Title</label>
            <input type="text" id="jobTitle" name="jobTitle" value="<%= jobpost.getJobTitle() %>">
            <br>
            <label for="jobType">Job Type</label>
            <select id="jobType" name="jobType" >
                
                <option value="Full-time"<%= jobpost.getJobType().equals("Full-time")?"selected" :"" %>>Full-time</option>
                <option value="Part-time"<%= jobpost.getJobType().equals("Part-time")?"selected" :"" %>>Part-time</option>
                <option value="Contract"<%= jobpost.getJobType().equals("Contract")?"selected" :"" %>>Contract</option>
                <option value="Internship"<%= jobpost.getJobType().equals("Internship")?"selected" :"" %>>Internship</option>
            </select>
            <br>
            <label for="location">Location </label>
            <input type="text" id="location" name="location" value="<%= jobpost.getLocation() %>">
            <br>
            <label for="jobDescription">Job Description</label>
            <textarea id="jobDescription" name="jobDescription" rows="5" ><%= jobpost.getJobDescription() %></textarea>
            <br>
            <label for="postDate">Post Date</label>
            <input type="date" id="postDate" name="postDate" value="<%= jobpost.getPostDate() %>" required>
            <br><br>

            

            <!-- Both buttons side by side -->
                <div class="form-footer">
                    <!-- Back button -->
                    <form action="JobPostListController" method="get" style="width: 48%;">
                        <button class="back-button" type="submit">Back</button>
                    </form>

                    <!-- Update Job button -->
                    <button class="update-button" type="submit">Update Job</button>
                </div>
        </form>
            <%
        }
else{
%>
<p>JobPost not found</p>
<%
}
        %>
        
        </div>
        
    </body>
</html>
