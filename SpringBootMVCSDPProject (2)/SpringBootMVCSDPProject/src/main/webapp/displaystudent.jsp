<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Display Student</title>
    <!-- Link to Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 800px;
            background-color: #fff;
            padding: 30px;
            margin: auto;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h3 {
            color: #007bff;
            text-align: center;
            margin-bottom: 20px;
        }
        .profile-info {
            margin-bottom: 20px;
        }
        .profile-info label {
            font-weight: 600;
        }
        .profile-info p {
            font-size: 16px;
            color: #555;
        }
    </style>
</head>
<body>

<%@include file="adminnavbar.jsp" %>

<div class="container">
    <h3>Display Student</h3>
    <div class="profile-info">
        <label>ID: <c:out value="${student.id}"></c:out> </label>
        
    </div>
    <div class="profile-info">
        <label>Name: <c:out value="${student.name}"></c:out> </label>
        
    </div>
    <div class="profile-info">
        <label>Gender: <c:out value="${student.gender}"></c:out> </label>
        
    </div>
    <div class="profile-info">
        <label>Date of Birth: <c:out value="${student.dateofbirth}"></c:out> </label>
        
    </div>
    <div class="profile-info">
        <label>Email: <c:out value="${student.email}"></c:out> </label>
        
    </div>
    <div class="profile-info">
        <label>Location: <c:out value="${student.location}"></c:out> </label>
        
    </div>
    <div class="profile-info">
        <label>Contact: <c:out value="${student.contact }"></c:out> </label>
        
    </div>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
