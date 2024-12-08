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
            color: #f1f1f1;
            text-align: center;
            margin-bottom: 30px;
        }
        .profile-info {
            margin-bottom: 15px;
            color: #e0e0e0;
        }
        .profile-info label {
            font-weight: bold;
            display: block;
            color: #ffffff;
        }
        .profile-info p {
            margin: 0;
            padding: 5px 0;
            font-size: 1rem;
            color: #ffffff;
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
            color: white;
            text-decoration: none;
            text-align: center;
            transition: background 0.3s ease, transform 0.3s ease;
        }
        .btn-home:hover {
            background: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>

<%@ include file = "studentnavbar.jsp" %>

<div class="container">
    <h3>Welcome, <%=s.getName() %>!</h3>
    <h4>Here's your student dashboard</h4>

    <div class="profile-info">
        <label>ID:</label>
        <p><%= s.getId() %></p>
    </div>
    <div class="profile-info">
        <label>Name:</label>
        <p><%= s.getName() %></p>
    </div>
    <div class="profile-info">
        <label>Gender:</label>
        <p><%= s.getGender() %></p>
    </div>
    <div class="profile-info">
        <label>Date of Birth:</label>
        <p><%= s.getDateofbirth() %></p>
    </div>
    <div class="profile-info">
        <label>Email:</label>
        <p><%= s.getEmail() %></p>
    </div>
    <div class="profile-info">
        <label>Location:</label>
        <p><%= s.getLocation() %></p>
    </div>
    <div class="profile-info">
        <label>Contact:</label>
        <p><%= s.getContact() %></p>
    </div>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
