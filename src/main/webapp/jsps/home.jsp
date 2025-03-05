<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>KK FUNDA Home Page</title>
    <link rel="icon" href="images/kkfunda.jpg">
    <style>
        /* Global Styles */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(120deg, #fdfbfb, #ebedee);
            margin: 0;
            padding: 0;
        }

        /* Navigation Bar */
        .navbar {
            background: #2c3e50;
            padding: 15px;
            text-align: center;
        }
        .navbar a {
            color: white;
            text-decoration: none;
            font-size: 18px;
            margin: 0 15px;
            font-weight: bold;
        }
        .navbar a:hover {
            color: #1abc9c;
        }

        /* Main Container */
        .container {
            width: 85%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
            margin-top: 20px;
        }

        h1 {
            color: #2c3e50;
        }

        /* Info Box Styling */
        .info-box {
            background: #ecf0f1;
            padding: 20px;
            margin: 15px 0;
            border-radius: 8px;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 2px 2px 8px rgba(0, 0, 0, 0.1);
        }

        /* Contact & Buttons */
        .contact-info {
            margin: 15px 0;
            font-size: 16px;
            font-weight: bold;
        }
        .email-link, .service-link {
            display: inline-block;
            margin-top: 10px;
            padding: 12px 20px;
            border-radius: 5px;
            font-weight: bold;
            text-decoration: none;
            transition: all 0.3s ease-in-out;
        }
        .email-link {
            background: #1abc9c;
            color: white;
        }
        .email-link:hover {
            background: #16a085;
        }
        .service-link {
            background: #e67e22;
            color: white;
        }
        .service-link:hover {
            background: #d35400;
        }

        /* Footer */
        .footer {
            margin-top: 20px;
            padding: 15px;
            background: #2c3e50;
            color: white;
            text-align: center;
        }
        .footer a {
            color: #1abc9c;
            text-decoration: none;
            font-weight: bold;
        }
        .footer a:hover {
            text-decoration: underline;
        }

        /* Social Icons */
        .social-icons {
            margin-top: 10px;
        }
        .social-icons img {
            width: 35px;
            margin: 0 10px;
            cursor: pointer;
            transition: 0.3s;
        }
        .social-icons img:hover {
            transform: scale(1.1);
        }

        img {
            border-radius: 50%;
            margin: 10px;
        }
    </style>
</head>
<body>

<!-- Navigation Bar -->
<div class="navbar">
    <a href="#">Home</a>
    <a href="#">Services</a>
    <a href="#">About</a>
    <a href="#">Contact</a>
</div>

<!-- Main Container -->
<div class="container">
    <h1>Hi to KK AWS</h1>
    <h1>I am from JAVA Dev</h1>
    
    <!-- Server Side Info -->
    <div class="info-box">
        <h3>Server Side IP Address</h3>
        <p>
            <%
            String ip = "";
            InetAddress inetAddress = InetAddress.getLocalHost();
            ip = inetAddress.getHostAddress();
            out.println("Server Host Name: " + inetAddress.getHostName());
            %>
            <br>
            <%= "Server IP Address: " + ip %>
        </p>
    </div>

    <!-- Client Side Info -->
    <div class="info-box">
        <h3>Client Side IP Address</h3>
        <p>
            <%= "Client IP Address: " + request.getRemoteAddr() %><br>
            <%= "Client Name Host: " + request.getRemoteHost() %>
        </p>
    </div>

    <hr>

    <!-- Contact Information -->
    <div class="contact-info">
        <img src="images/kkfunda.jpg" alt="KK FUNDA" width="80">
        <p>KK FUNDA, Martha Halli, Bangalore, India</p>
        <p>📞 +91-9676831734, +91-9676831734</p>
        <p>📧 <a href="mailto:kkeducationblr@gmail.com" class="email-link">Mail to KK FUNDA</a></p>
    </div>

    <hr>

    <!-- Get Employee Details Button -->
    <a href="services/employee/getEmployeeDetails" class="service-link">Get Employee Details</a>

    <!-- Social Media Icons -->
    <div class="social-icons">
        <a href="https://www.facebook.com"><img src="images/facebook.png" alt="Facebook"></a>
        <a href="https://www.twitter.com"><img src="images/twitter.png" alt="Twitter"></a>
        <a href="https://www.linkedin.com"><img src="images/linkedin.png" alt="LinkedIn"></a>
    </div>
</div>

<!-- Footer -->
<div class="footer">
    <p>KK FUNDA Training, Development Center.</p>
    <p><small>Copyrights 2024 by <a href="https://google.com/">KK FUNDA</a></small></p>
</div>

</body>
</html>
