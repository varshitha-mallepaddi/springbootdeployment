<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Available Events</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <style>
        body {
            margin: 0;
            font-family: Arial, sans-serif;
            color: #333;
            background: url('https://res.cloudinary.com/def2d6aqn/image/upload/v1733499602/background_apuvhf.webp') no-repeat center center fixed;
            background-size: cover;
        }

        h2 {
            color: #6a1b9a;
            text-align: center;
            margin-top: 20px;
            font-size: 24px;
        }

        .container {
            width: 80%;
            max-width: 1200px;
            margin: 30px auto;
            padding: 15px;
            background-color: #ffffff;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .grid-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
        }

        .card {
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100%;
            height: 180px;
            object-fit: cover;
        }

        .card-content {
            padding: 15px;
        }

        .card-title {
            font-size: 20px;
            font-weight: bold;
            color: #6a1b9a;
            margin-bottom: 10px;
        }

        .card-description {
            font-size: 14px;
            color: #555;
            margin-bottom: 8px;
        }

        .card-info {
            font-size: 14px;
            color: #333;
            margin-bottom: 8px;
        }

        input[type="submit"] {
            background-color: #6a1b9a;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            font-weight: bold;
            display: block;
            margin: 10px auto 0;
            text-align: center;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #4a0072;
        }

        .no-events {
            text-align: center;
            font-size: 16px;
            color: #6a1b9a;
            margin: 20px 0;
        }
    </style>
</head>
<body>
<div class="navbar">
    <%@include file="studentnavbar.jsp" %>
</div>

<h2>Available Events</h2>
<div class="container">
    <c:if test="${not empty eventList}">
        <div class="grid-container">
            <c:forEach var="event" items="${eventList}">
                <div class="card">
                    <img src="displayEventImage?id=${event.id}" alt="${event.eventName}">
                    <div class="card-content">
                        <h3 class="card-title">${event.eventName}</h3>
                        <p class="card-description">${event.description}</p>
                        <p class="card-info"><strong>Date:</strong> ${event.date}</p>
                        <p class="card-info"><strong>Location:</strong> ${event.location}</p>
                        <form action="registerEvent" method="post">
                            <input type="hidden" name="eventId" value="${event.id}">
                            <input type="hidden" name="studentId" value="${student.id}">
                            <input type="submit" value="Register">
                        </form>
                    </div>
                </div>
            </c:forEach>
        </div>
    </c:if>

    <c:if test="${empty eventList}">
        <p class="no-events">No events available for registration.</p>
    </c:if>
</div>
</body>
</html>
