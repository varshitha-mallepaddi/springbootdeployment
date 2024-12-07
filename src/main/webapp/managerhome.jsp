<%@page import="com.klef.jfsd.model.Manager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Manager m = (Manager)session.getAttribute("manager");
if(m==null)
{
    response.sendRedirect("managersessionfail");
    return;
}
%>    
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Home</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Background image */
            background-size: cover;
            color: #333; /* Dark gray text */
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh; /* Full viewport height */
        }

        /* Navbar styling */
        .navbar-container {
            width: 100%;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 1000; /* Keeps navbar on top */
        }

        /* Main content styling */
        .content-container {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white background */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            margin-top: 80px; /* Space below the navbar */
            width: 80%; /* Adjusted for a good layout */
            max-width: 800px; /* Restrict max-width */
            text-align: center;
            color: #333;
        }

        h1 {
            color: #2c3e50; /* Dark blue */
            margin-bottom: 20px;
            font-size: 2.5em; /* Larger font size */
        }

        p {
            color: #555; /* Slightly lighter gray */
            font-size: 1.2em; /* Larger font size for readability */
            line-height: 1.6; /* More spacing for readability */
        }

        /* Button styling */
        .button-container {
            margin-top: 30px; /* Space above buttons */
            text-align: center;
        }

        .button-container button {
            background-color: #3498db; /* Blue background */
            color: #fff;
            border: none;
            padding: 12px 24px;
            border-radius: 8px;
            font-size: 1.2em; /* Larger font size */
            cursor: pointer;
            margin: 5px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .button-container button:hover {
            background-color: #2980b9; /* Darker blue */
            transform: translateY(-2px); /* Slight lift effect */
        }
    </style>
</head>
<body>

    <div class="navbar-container">
        <%@include file="managernavbar.jsp" %>
    </div>

    <!-- Main content -->
    <div class="content-container">
        <h1>Welcome, Manager!</h1>
        <p>We are glad to have you here. Use the navigation bar to access different sections of the management portal.</p>
        <div class="button-container">
            <button onclick="window.location.href='managerprofile'">Manager Profile</button>
            
        </div>
    </div>
</body>
</html>
