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
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        .container {
            width: 80%;
            margin: auto;
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h1 {
            color: #2c3e50;
        }
        h3 {
            color: #34495e;
        }
        .info-box {
            background: #ecf0f1;
            padding: 15px;
            margin: 10px 0;
            border-radius: 5px;
            font-size: 18px;
        }
        .footer {
            margin-top: 20px;
            padding: 15px;
            background: #2c3e50;
            color: white;
        }
        .footer a {
            color: #1abc9c;
            text-decoration: none;
            font-weight: bold;
        }
        .footer a:hover {
            text-decoration: underline;
        }
        .contact-info {
            margin: 15px 0;
            font-size: 16px;
            font-weight: bold;
        }
        .email-link {
            display: inline-block;
            margin-top: 10px;
            background: #1abc9c;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
        }
        .email-link:hover {
            background: #16a085;
        }
        .service-link {
            display: block;
            margin-top: 20px;
            background: #e67e22;
            color: white;
            padding: 10px 15px;
            border-radius: 5px;
            text-decoration: none;
            font-weight: bold;
            width: fit-content;
            margin: auto;
        }
        .service-link:hover {
            background: #d35400;
        }
        img {
            border-radius: 50%;
            margin: 10px;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Hi to KK AWS</h1>
    <h1>I am from JAVA Dev</h1>
    
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

    <div class="info-box">
        <h3>Client Side IP Address</h3>
        <p>
            <%= "Client IP Address: " + request.getRemoteAddr() %><br>
            <%= "Client Name Host: " + request.getRemoteHost() %>
        </p>
    </div>

    <hr>

    <div class="contact-info">
        <img src="images/kkfunda.jpg" alt="KK FUNDA" width="80">
        <p>KK FUNDA, Martha Halli, Bangalore, India</p>
        <p>📞 +91-9676831734, +91-9676831734</p>
        <p>📧 <a href="mailto:kkeducationblr@gmail.com" class="email-link">Mail to KK FUNDA</a></p>
    </div>

    <hr>

    <a href="services/employee/getEmployeeDetails" class="service-link">Get Employee Details</a>

</div>

<div class="footer">
    <p>KK FUNDA Training, Development Center.</p>
    <p><small>Copyrights 2024 by <a href="https://google.com/">KK FUNDA</a></small></p>
</div>

</body>
</html>
