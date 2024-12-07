<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Home</title>
    <style>
        /* General styling */
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Background image */
            background-size: cover;
            color: #333;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: flex-start;
            min-height: 100vh;
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
        .main-content {
            background-color: rgba(255, 255, 255, 0.9); /* Slightly transparent white */
            border-radius: 12px;
            padding: 40px;
            margin-top: 100px; /* Space below the navbar */
            text-align: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            width: 90%;
            max-width: 800px; /* Set a max width */
        }

        h1 {
            color: #2c3e50; /* Dark blue */
            font-size: 2.5em;
            margin-bottom: 20px;
        }

        p {
            color: #555; /* Lighter gray */
            font-size: 1.2em;
            line-height: 1.6;
            margin-bottom: 20px;
        }

        .welcome-message {
            background-color: #3498db; /* Blue */
            color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            font-size: 1.4em;
        }
    </style>
</head>
<body>
    <!-- Navbar stays at the top -->
    <div class="navbar-container">
        <%@include file="adminnavbar.jsp" %>
    </div>

    <!-- Main content container -->
    <div class="main-content">
        <h1>Welcome to Admin Home</h1>
        <p class="welcome-message">You have full control over the admin dashboard. Use the navigation bar above to manage settings and user data.</p>
    </div>
</body>
</html>
