<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Home</title>

    <!-- Link to Bootstrap CSS for better styling and responsiveness -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #6a11cb, #2575fc);
            color: #fff;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            padding: 30px;
            max-width: 600px;
            width: 100%;
        }
        h3 {
            text-align: center;
            color: #ffffff;
            font-size: 2rem;
            margin-bottom: 20px;
        }
        h4 {
            color: #ddd;
            text-align: center;
            margin-bottom: 30px;
        }
        p {
            text-align: center;
            color: #bbb;
        }
        .btn-home {
    display: block;
    width: 100%;
    margin-bottom: 15px;
    padding: 10px;
    font-size: 1.1rem;
    font-weight: bold;
    border-radius: 25px;
    background: #007bff;
    color: white; /* Ensures text is white by default */
    text-decoration: none;
    text-align: center;
    transition: background 0.3s ease, transform 0.3s ease, color 0.3s ease;
}
.btn-home:hover {
    background: #0056b3;
    color: white; /* Keeps the text white during hover */
    transform: scale(1.05);
}
        
    </style>
</head>
<body>

<%@ include file = "studentnavbar.jsp" %>

<div class="container">
    <h3>Welcome, <%=s.getName() %>!</h3>
    <h4>Here's your student dashboard</h4>

    <p>Manage your profile, appointments, and more.</p>

    <a href="studentprofile" class="btn-home">View Profile</a>
    <a href="${pageContext.request.contextPath}/book-appointment" class="btn-home">Schedule an Appointment</a>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
