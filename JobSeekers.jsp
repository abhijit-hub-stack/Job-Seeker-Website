<%-- 
    Document   : JobSeekers
    Created on : 23 Feb 2025, 9:47:32 am
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Job Seekers Website</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css"
        integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />

        <style>
        * {
            margin: 0;
            padding: 0;
        }

        .navbar {
            display: flex;
            justify-content: space-around;
            height: 70px;
            background-color: rgb(5, 5, 39);
            background-image: linear-gradient(to right, red, orange,red,orangered);
             background-image: linear-gradient(to right,pink,rgb(5, 5, 39),rgb(5, 5, 39),pink);
            
            color: white;
            padding-top: 30px;
        }

        .left {
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
            font-size: 1.5rem;
        }

        section {
            height: 650px;
        }

        .section1 {
            height: 540px;
        }

        .firstsection {
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

        footer {
            height: 60px;
            background-color: rgb(5, 5, 39);
            color: white;
            text-align: center;
            padding-top: 40px;
        }

        .footerend p {
            text-align: center;
            margin-top: 40px;
            color: gray;
            height: 30px;
        }


        .dropdown {
            position: relative;
            display: inline-block;
            
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #333;
            min-width: 160px;
            z-index: 1;
            border-radius: 5px;
            
        }

        .dropdown-content a {
            color: white;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
            font-size: 1.5rem;
            
        }

        .dropdown-content a:hover {
            background-color: #ddd;
            color: black;
        }


        .content li a.login,
        .content li a.register {
            background-color: black;
            color: white;
            padding: 12px 20px;
            border-radius: 25px;
            text-align: center;
            display: inline-block;
            font-size: 1.5rem;
            transition: all 0.3s ease;
           
        }


        .content li a.login:hover,
        .content li a.register:hover {
            background-color: white;
            color: black;
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

                    <li class="dropdown">
                        <a href="javascript:void(0)" onclick="toggleDropdown('loginDropdown')" class="login">Login</a>
                        <div class="dropdown-content" id="loginDropdown">
                            <a href="UserLoginFrom.jsp">User</a>
                            <a href="AdminLoginFrom.jsp">Admin</a>
                        </div>
                    </li>


                    <li class="dropdown">
                        <a href="javascript:void(0)" onclick="toggleDropdown('registerDropdown')"
                            class="register">Register</a>
                        <div class="dropdown-content" id="registerDropdown">
                            <a href="UserRegister.jsp">User</a>
                            <a href="AdminRegister.jsp">Admin</a>
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
                    alt="developer image" height="500px">
            </div>
        </div>
    </section>
       
    <footer>
        <p>
            <i class="fa-brands fa-instagram"></i>
            <i class="fa-brands fa-facebook"></i>
            <i class="fa-brands fa-x-twitter"></i>
            <i class="fa-brands fa-twitter"></i>
            Copy right &copy; www.//Job Seekars.com-All right 2024-2025
            <i class="fa-brands fa-linkedin"></i>
            <i class="fa-brands fa-windows"></i>
            <i class="fa-brands fa-youtube"></i>
        </p>
    </footer>

    <script>

        function toggleDropdown(dropdownId) {
            var dropdownContent = document.getElementById(dropdownId);

            dropdownContent.style.display = (dropdownContent.style.display === 'block') ? 'none' : 'block';
        }
    </script>
    </body>
</html>
