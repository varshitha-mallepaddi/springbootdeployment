<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Event Success</title>
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333; /* Dark gray text */
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed; /* Replace with your image URL */
            background-size: cover;
        }

        .content {
            margin-left: 200px; /* Sidebar width */
            padding: 20px;
            padding-top: 80px; /* Adjust for navbar height */
            text-align: center;
        }

        h2 {
            color: #2c3e50; /* Dark blue for headings */
            margin-top: 20px;
        }

        p {
            font-size: 18px;
            color: #333; /* Dark gray text */
        }

        .button {
            background-color: #2c3e50; /* Dark blue background */
            color: white; /* White text */
            border: none;
            padding: 10px 20px;
            margin: 10px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
            text-decoration: none;
            border-radius: 5px;
            display: inline-block;
            transition: background-color 0.3s, transform 0.2s;
        }

        .button:hover {
            background-color: white; /* Change background to white on hover */
            color: #2c3e50; /* Change text to dark blue on hover */
            border: 2px solid #2c3e50; /* Add a border for better visibility */
            transform: scale(1.05); /* Slight zoom effect */
        }

        /* Navbar styling */
        #navbar {
            position: fixed;
            top: 0;
            left: 0;
            width: 200px; /* Sidebar width */
            height: 100vh;
            background-color: #333; /* Sidebar color */
            z-index: 1000;
            color: white; /* Text color */
            text-align: center;
        }

        #navbar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 15px 0;
            font-size: 16px;
        }

        #navbar a:hover {
            background-color: #444; /* Darker gray on hover */
        }
    </style>
</head>
<body>
    <div id="navbar">
        <%@ include file="adminnavbar.jsp" %>
    </div>

    <div class="content">
        <h2>Event Added Successfully!</h2>
        <p>${message}</p> <!-- Display the success message from the controller -->
        <a href="addevent" class="button">Add Another Event</a>
        <a href="adminhome" class="button">Back to Admin Home</a>
    </div>
</body>
</html>
