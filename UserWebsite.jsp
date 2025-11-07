<%-- 
    Document   : UserWebsite
    Created on : 11 Mar 2025, 8:46:36 am
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseekersproject.JobPost"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            *{
    margin: 0;
    padding: 0;
}


.navbar{
    display: flex;
    justify-content: space-around;
    height: 70px;
    background-color: orange;
    background-color: rgb(5, 5, 39);
    background-image: linear-gradient(to right,rgb(5, 5, 39),orange,rgb(5, 5, 39));
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

h1{
    text-align: center;
    font-size: 2.5rem;
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

    .apply-btn {
        text-decoration: none;
        padding: 10px 20px;
        background-color: #007bff;
        color: white;
        border-radius: 5px;
        text-align: center;
        display: inline-block;
    }

    .apply-btn:hover {
        background-color: #0056b3;
    }


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

/* Styling for the search bar */
            .search-bar {
                display: flex;
                align-items: center;
                background-color: white;
                border-radius: 5px;
                padding: 5px;
            }

            .search-bar input {
                border: none;
                padding: 10px;
                border-radius: 5px;
                width: 200px;
                font-size: 1rem;
            }

            .search-bar button {
                background-color: orange;
                color: white;
                border: none;
                padding: 10px;
                border-radius: 5px;
                font-size: 1rem;
                cursor: pointer;
            }

            .search-bar button:hover {
                background-color: darkorange;
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
    
   
    <li><a href="logout.jsp">Logout</a></li>
     
</ul>
            </div>
        </nav>
    </header>
    <section class="section1">
        <div class="firstsection">
            <div class="leftside">
                <div><b>Job Search</b></div>
                <div><b>Website</b></div>
            </div>
            <div class="rightside">
                <img src="https://img.freepik.com/free-vector/ui-ux-designers-isometric-composition-with-small-people-creating-custom-design-web-site-3d-vector-illustration_1284-68939.jpg?t=st=1740393797~exp=1740397397~hmac=b1de5ad11b58a638cbf0bd86d8cce2316599b2f3a4552c334c6e5033b789a789&w=1060"
                    alt="developer imgae" height="500px">
            </div>
        </div>
    </section>
        <hr><br>
                
                <section id="section2">
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
    
    <footer>
    <div class="footer">
        <div class="footerheading">
            <h3>Job Search Portal - 2024-2025</h3>
        </div>
        
        <div class="footerrightside">
            <!-- Left side footer with Job Search-related links -->
            <div class="leftsidefooter">
                <ul>
                    <li>Job Listings</li>
                    <li>Apply Now</li>
                    <li>Resume Upload</li>
                    <li>Application Status</li>
                    <li>Employer Portal</li>
                </ul>
            </div>
            
            <!-- Middle footer with Search-related links -->
            <div class="leftsidefooter">
                <ul>
                    <li>Search Jobs</li>
                    <li>By Location</li>
                    <li>By Category</li>
                    <li>By Company</li>
                    <li>Job Alerts</li>
                </ul>
            </div>
            
            <!-- Center footer with General Info links -->
            <div class="leftsidefooter">
                <ul>
                    <li>About Us</li>
                    <li>Contact Us</li>
                    <li>FAQs</li>
                    <li>Privacy Policy</li>
                    <li>Terms & Conditions</li>
                </ul>
            </div>
            
            <!-- Right footer with company and career info -->
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
           
            
            <br>
             <a href="https://www.instagram.com" target="_blank"><i class="fa-brands fa-instagram"></i></a>
            <a href="https://www.facebook.com" target="_blank"><i class="fa-brands fa-facebook"></i></a>
            <a href="https://twitter.com" target="_blank"><i class="fa-brands fa-twitter"></i></a>
            &copy; 2024-2025 www.JobSeekers.com. All rights reserved.
            <a href="https://www.linkedin.com" target="_blank"><i class="fa-brands fa-linkedin"></i></a>
            <a href="https://www.youtube.com" target="_blank"><i class="fa-brands fa-youtube"></i></a>
            
            
        </p>
    </div>
</footer>
    </body>
</html>
