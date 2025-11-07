<%-- 
    Document   : AdminUsedWebsite
    Created on : 4 Mar 2025, 8:46:09 am
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseekersproject.JobPost"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            *{
    margin: 0;
    padding: 0;
}

body{
    height: auto;
}

.navbar{
    display: flex;
    justify-content: space-around;
    height: 70px;
    background-color: orange;
    background-color: rgb(5, 5, 39);
    background-image: linear-gradient(to right,rgb(5, 5, 39),orange,rgb(5, 5, 39));
    background-image: linear-gradient(to right,pink,rgb(5, 5, 39),rgb(5, 5, 39),pink);
    color: white;
    padding-top: 30px;
}

.left{
    font-size: 2.5rem;
    
}
.content {
    display: flex;
    justify-content: space-around;
    
    gap: 40px;
}

.content li {
    list-style: none;
    font-size: 1.5rem;
    padding-top: 10px;
}
a {
    text-decoration: none;
    color: white;
}

/*section{
    height: 750px;
}*/

.section1{
    height: 540px;
    
}
.firstsection{
    display: flex;
    justify-content: space-around;
    align-items: center;
}

.leftside {
    
    color: rgb(5, 5, 39);
    font-size: 3.5rem;

}

.namecolor {
    color: rgb(210, 19, 108);
}

 #section3 {
        max-width: 600px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f4f4f9;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    }

    h1 {
        text-align: center;
        font-family: 'Arial', sans-serif;
        color: #333;
        margin-bottom: 20px;
    }

    label {
        display: block;
        font-size: 14px;
        font-weight: bold;
        color: #555;
        margin-bottom: 5px;
    }

    input, select, textarea {
        width: 100%;
        padding: 10px;
        font-size: 16px;
        margin-bottom: 15px;
        border: 1px solid #ccc;
        border-radius: 4px;
        box-sizing: border-box;
    }

    button {
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        padding: 10px 20px;
        border: none;
        border-radius: 4px;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        background-color: #45a049;
    }

    /* Add responsiveness for mobile screens */
    @media (max-width: 600px) {
        #section3 {
            padding: 15px;
        }
        
        button {
            font-size: 14px;
        }
    }

      /* Container for job post cards */
    .job-container {
        display: flex;
        flex-wrap: wrap;
        gap: 20px;
        justify-content: space-around;
        padding: 20px;
    }

    /* Individual job card styling */
    .job-card {
        background-color: #f9f9f9;
        border: 1px solid #ccc;
        border-radius: 10px;
        padding: 20px;
        width: 300px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out;
    }

    /* Hover effect for the card */
    .job-card:hover {
        transform: translateY(-10px);
    }

    .job-card h2 {
        font-size: 1.5em;
        color: #333;
        margin-bottom: 10px;
    }

    .job-card p {
        font-size: 1em;
        color: #555;
        margin-bottom: 10px;
    }

    /* Styling for action buttons */
    .job-actions {
        margin-top: 10px;
    }

    .job-actions a {
        text-decoration: none;
        padding: 8px 15px;
        margin-right: 10px;
        border-radius: 5px;
    }

    .update-btn {
        background-color: #4CAF50;
        color: white;
    }

    .delete-btn {
        background-color: #f44336;
        color: white;
    }

    .update-btn:hover {
        background-color: #45a049;
    }

    .delete-btn:hover {
        background-color: #e57373;
    }

/* footer section */
footer {
    height: 450px;
    background-color: rgb(5, 5, 39);

    color: white;
    margin-top: 150px;
}
.footerheading{
    font-size: 2.0rem;
    padding-top: 30px;
    padding-left: 80px;
}

.footerrightside{
    display: flex;
    justify-content: space-around;
    padding-top: 100px;
    
}
.footer li {
    list-style: none;
}

.footerend p {
    text-align: center;
    margin-top: 80px;
    color: white;
    height: 30px;

    
    padding-bottom: 10px;
} 

        </style>
    </head>
    <body>
        <header>
        <nav class="navbar">
            <div class="left">

                <b>Job Seekars</b>
            </div>
            <div class="right">
                <ul class="content">
    <li><a href="#section1">Home</a></li>
    <li><a href="ApplyListController">Applicant Data</a></li>
    <li><a href="#section4">View Job</a></li>
    <li><a href="#section3">Job Post</a></li>
    <li><a href="Adminlogout.jsp">Logout</a></li>
    
    
</ul>
            </div>
        </nav>
    </header>
    <section class="section1">
        <div class="firstsection">
            <div class="leftside">
                <div><b>Admin Manage</b></div>
                <div><b>Website</b></div>
            </div>
            <div class="rightside">
                <img src="https://img.freepik.com/free-vector/ui-ux-designers-isometric-composition-with-small-people-creating-custom-design-web-site-3d-vector-illustration_1284-68939.jpg?t=st=1740393797~exp=1740397397~hmac=b1de5ad11b58a638cbf0bd86d8cce2316599b2f3a4552c334c6e5033b789a789&w=1060"
                    alt="developer imgae" height="500px">
            </div>
        </div>
    </section>
        
        <hr><br>
        <section id="section4">
    <h1>Job Section</h1>
    
    
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
            
            <!-- Action links -->
            <div class="job-actions">
                <a href="UpdateJobPostController?jobTitle=<%= jobpost.getJobTitle() %>" class="update-btn">Update</a>
                <a href="DeleteJobPostController?jobTitle=<%= jobpost.getJobTitle() %>" class="delete-btn" onclick="return confirm('Are you sure you want to delete this Job Post?');">Delete</a>
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
        
        <hr><br>
        
        <section id="section3">
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
        </section>
        
        
        
   <footer>
        <div class="footer">
            <div class="footerheading">
                <h3>Job Seekers Website in 2024-2025 Created</h3>
            </div>
            <div class="footerrightside">
                <div class="leftsidefooter">
            <ul>
                <li>Job Listings</li>
                <li>Apply Now</li>
                <li>Resume Upload</li>
                <li>Job Status</li>
                <li>Employer Portal</li>
            </ul>
        </div>
                <div class="leftsidefooter">
                    <ul>
                        <li>Search Jobs</li>
                <li>By Location</li>
                <li>By Category</li>
                <li>By Company</li>
                <li>Job Alerts</li>
                    </ul>
                </div>
                <div class="leftsidefooter">
                    <ul>
                        <li>About Us</li>
                <li>Contact Us</li>
                <li>FAQs</li>
                <li>Privacy Policy</li>
                <li>Terms & Conditions</li>
                    </ul>
                </div>
                <div class="leftsidefooter">
                    <ul>
                        <li>Company Info</li>
                <li>Our Team</li>
                <li>Careers</li>
                <li>Social Media</li>
                <li>Blog</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footerend">
            <p>
                <i class="fa-brands fa-instagram"></i>
                <i class="fa-brands fa-facebook"></i>
                <i class="fa-brands fa-x-twitter"></i>
                <i class="fa-brands fa-twitter"></i>

                Copy right &copy www.//JobSeekers.com-All right 2024-2025.
                <i class="fa-brands fa-linkedin"></i>
                <i class="fa-brands fa-windows"></i>
                <i class="fa-brands fa-youtube"></i>
            </p>
        </div>
    </footer>

    </body>
</html>
