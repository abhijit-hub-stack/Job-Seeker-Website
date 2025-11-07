<%-- 
    Document   : JobPost
    Created on : 4 Mar 2025, 2:54:28 am
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Job Post</h1>
        
        <form action="JobPostServlet" method="POST">
            <label for="jobTitle">Job Title</label>
            <input type="text" id="jobTitle" name="jobTitle" required>
            <br>
            <label for="jobType">Job Type</label>
            <select id="jobType" name="jobType" required>
                <option value="">Select Type</option>
                <option value="Full-time">Full-time</option>
                <option value="Part-time">Part-time</option>
                <option value="Contract">Contract</option>
                <option value="Internship">Internship</option>
            </select>
            <br>
            <label for="location">Location </label>
            <input type="text" id="location" name="location" value="">
            <br>
            <label for="jobDescription">Job Description</label>
            <textarea id="jobDescription" name="jobDescription" rows="5" required></textarea>
            <br>
            <label for="postDate">Post Date</label>
            <input type="date" id="postDate" name="postDate" value="" required>
            <br><br>


            <button type="submit">Post Job</button>

        </form>
    </body>
</html>
