<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Post Attendance</title>
    <style>
        /* Your existing styles */
        body {
            background-color: #f7f7f7;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        h2 {
            color: #6a1b9a;
            text-align: center;
            margin-top: 20px;
        }
        .table-container {
            background-color: #ffffff;
            padding: 20px;
            border-radius: 10px;
            max-width: 800px;
            margin: 30px auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border: 1px solid #6a1b9a;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        th {
            background-color: #6a1b9a;
            color: white;
        }
        td {
            background-color: #e8eaf6;
        }
        tr:nth-child(even) td {
            background-color: #d1c4e9;
        }
        .no-students {
            text-align: center;
            font-size: 16px;
            color: #6a1b9a;
        }
        .submit-button {
            margin-top: 20px;
            text-align: center;
        }
        button {
            background-color: #6a1b9a;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #4a0072;
        }
    </style>
</head>
<body>
    <%@ include file="managernavbar.jsp" %>
    <h2>Post Attendance for Event</h2>
    <form action="${pageContext.request.contextPath}/submitAttendance" method="POST">
        <div class="table-container">
            <input type="hidden" name="eventId" value="${event.id}">
            <c:if test="${not empty registeredStudents}">
                <table>
                    <thead>
                        <tr>
                            <th>Student ID</th>
                            <th>Student Name</th>
                            <th>Email</th>
                            <th>Contact</th>
                            <th>Attendance</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="student" items="${registeredStudents}">
                            <tr>
                                <td>${student.id}</td>
                                <td>${student.name}</td>
                                <td>${student.email}</td>
                                <td>${student.contact}</td>
                                <td>
                                    <input type="radio" name="status_${student.id}" value="Present" required> Present
                                    <input type="radio" name="status_${student.id}" value="Absent"> Absent
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
            <c:if test="${empty registeredStudents}">
                <p class="no-students">No students registered for this event.</p>
            </c:if>
        </div>
        <form action="${pageContext.request.contextPath}/submitAttendance" method="POST">
    <input type="hidden" name="eventId" value="${event.id}">
    <!-- Your existing table with student details -->
    <div class="submit-button">
        <button type="submit">Submit Attendance</button>
    </div>
</form>

    </form>
</body>
</html>