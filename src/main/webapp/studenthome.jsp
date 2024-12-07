<%@page import="com.klef.jfsd.model.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    Student s = (Student)session.getAttribute("student");
    if(s == null) {
        response.sendRedirect("studentsessionfail");
        return;
    }
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Home</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Background image */
            background-size: cover;
        }

        .container {
            text-align: center;
            max-width: 900px;
            margin: 50px auto;
            padding: 20px;
            background-color: rgba(255, 255, 255, 0.9); /* Light white background with transparency */
            border-radius: 15px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            font-size: 36px;
            color: #2c3e50; /* Dark blue */
            margin-bottom: 20px;
            text-transform: uppercase;
            letter-spacing: 2px;
        }

        p {
            font-size: 18px;
            line-height: 1.6;
            color: #333; /* Dark gray text */
        }

        .btn {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            font-size: 18px;
            font-weight: bold;
            text-decoration: none;
            color: #fff;
            background-color: #2c3e50; /* Dark blue */
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s ease, box-shadow 0.3s ease;
        }

        .btn:hover {
            background-color: #1a252f; /* Darker blue for hover */
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.3);
        }

        .welcome {
            font-size: 20px;
            margin-top: 20px;
            color: #555; /* Medium gray for contrast */
        }
    </style>
</head>
<body>
    <%@include file="studentnavbar.jsp" %>

    <div class="container">
        <h1>Welcome to Your Dashboard</h1>
        <p>Hello, <strong><%= s.getName() %></strong>!</p>
        <p>Explore your events, manage your profile, and stay updated with the latest information.</p>
        <a href="viewevents" class="btn">View Events</a>
        <a href="studentprofile" class="btn">My Profile</a>
        <p class="welcome">We're glad to have you here. Let's make this a great experience!</p>
    </div>
</body>
</html>
