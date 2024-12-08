<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Doctor Appointment</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 0;
            margin: 0;
        }
        .container {
            max-width: 900px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }
        h1 {
            color: #007bff;
            margin-top: 20px;
        }
        .content {
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        table {
            width: 100%;
            margin-top: 20px;
        }
        th, td {
            padding: 10px;
            text-align: left;
        }
        .btn {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<!-- Include the main navbar -->
<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <h1>Manage Appointments</h1>
    <div class="content">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Student Name</th>
                    <th>Appointment Time</th>
                    <th>Status</th>
                    <th>Action</th>
                </tr>
            </thead>
            <tbody>
                <!-- Loop through the appointments list -->
                <c:forEach var="appointment" items="${appointments}">
                    <tr>
                        <td>${appointment.student.name}</td>
                        <td>${appointment.appointmentTime}</td>
                        <td>${appointment.status}</td>
                        <td>
                            <!-- Buttons for approving or rejecting the appointment -->
                            <a href="/approve-appointment?appointmentId=${appointment.id}" class="btn btn-success">Approve</a>
                            <a href="/reject-appointment?appointmentId=${appointment.id}" class="btn btn-danger">Reject</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<!-- Link Bootstrap and jQuery JS for any interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
