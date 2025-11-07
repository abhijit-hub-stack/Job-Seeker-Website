<%-- 
    Document   : UserViewWebsite
    Created on : 4 Mar 2025, 8:45:14 am
    Author     : user
--%>

<%@page import="java.util.stream.Collectors"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.jobseekersproject.User"%>
<%@page import="java.util.List"%>
<%@page import="com.mycompany.jobseekersproject.JobPost"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
        
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" 
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css" rel="stylesheet">

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

.search-bar input[type="text"] {
                padding: 8px 12px;
                font-size: 1rem;
                border-radius: 4px;
                border: 1px solid #ccc;
                margin-right: 10px;
            }

            .search-bar button {
                padding: 8px 12px;
                font-size: 1rem;
                background-color: #007bff;
                color: white;
                border: none;
                border-radius: 4px;
                cursor: pointer;
            }

            .search-bar button:hover {
                background-color: #0056b3;
            }
            
             #clearSearch {
        font-size: 20px;
        color: gray;
        margin-left: -25px;
        cursor: pointer;
    }

    #searchInput {
        padding-right: 30px; /* Space for the cross icon */
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



    
    /* Profile Dropdown */
        .profile-dropdown {
            display: none;
            position: absolute;
            background-color: #333;
            background-image: linear-gradient(to top,pink,rgb(5, 5, 39),rgb(5, 5, 39));
            color: white;
            padding: 10px;
            border-radius: 5px;
            top: 60px;
            right: 0;
            z-index: 10;
        }

        .profile-dropdown a {
            color: white;
            padding: 10px;
            text-decoration: none;
            display: block;
            font-size: 1.2rem;
            background-color: red;
           
        }
.profile-dropdown  #heading{
        color: white;
    }
        .profile-dropdown a:hover {
            background-color: #ddd;
            color: black;
        }

        /* Show profile dropdown when profile icon is clicked */
        .profile-icon:hover .profile-dropdown {
            display: block;
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




/* Job Listings Section Styling */
#section2 {
    width: 100%;
    max-width: 1200px; /* Limit maximum width */
    padding: 40px;
    background-color: #ffffff;
    margin-top: 20px;
    box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
    border-radius: 8px;
    display: flex;
    margin-left: 120px;
    flex-direction: column;
    align-items: center; /* Center the content inside the section */
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

/* Job Container Layout */
.job-container {
    display: grid;
    grid-template-columns: repeat(2, 1fr); /* Ensures two job cards per row */
    gap: 20px;
    width: 100%; /* Full width inside the section */
    margin-top: 20px;
   
    padding: 0 20px; /* Padding inside the job container */
}

/* Individual Job Card Styling */
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
                  <li class="search-bar">
        
                     <form action="JobSearchController" method="GET" id="searchForm">
    <input type="text" name="search" id="searchInput" placeholder="Search for jobs..." value="${param.search}" />
    <button type="submit">Search</button>
    <span id="clearSearch" style="cursor: pointer; display: none;" onclick="clearSearch()">&times;</span>
</form>
                        
    </li>
                <!-- Profile Icon and Dropdown -->
                <li class="profile-icon">
                    <i class="bi bi-person-circle" style="font-size: 40px;" onclick="toggleProfileDropdown()"></i>
                    
                    <div class="profile-dropdown" id="profileDropdown">
                        <h1 id="heading">Profile</h1>
                        <p><strong>Name:</strong> <%= session.getAttribute("name") != null ? session.getAttribute("name") : "Guest" %></p>
                        <p><strong>Email:</strong> <%= session.getAttribute("email") != null ? session.getAttribute("email") : "Guest" %></p>
                        <p><strong>Education:</strong> <%= session.getAttribute("education") != null ? session.getAttribute("education") : "N/A" %></p>
                        <p><strong>Mobile:</strong> <%= session.getAttribute("mobileno") != null ? session.getAttribute("mobileno") : "N/A" %></p>
                        
                        <h1><a href="logout.jsp">Logout</a></h1>
                    </div>
                </li>
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
 <script>
        // JavaScript function to toggle the dropdown
        function toggleProfileDropdown() {
            var dropdown = document.getElementById('profileDropdown');
            // Toggle between showing and hiding the dropdown
            if (dropdown.style.display === 'block') {
                dropdown.style.display = 'none';
            } else {
                dropdown.style.display = 'block';
            }
        }
        
        

        
    </script>
    
    </body>
</html>
