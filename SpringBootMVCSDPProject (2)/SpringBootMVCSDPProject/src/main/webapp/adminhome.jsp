<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Dashboard</title>

    <!-- Bootstrap for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 50px 0;
        }
        .container {
            max-width: 800px;
            margin: auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #007bff;
        }
        .stats-box {
            margin: 20px 0;
            padding: 15px;
            background-color: #343a40; /* Dark background for contrast */
            border-radius: 8px;
            text-align: center;
            color: #ffffff; /* White text for contrast */
        }
        .stats-box h4 {
            color: #ffc107; /* Highlighted title color */
        }
        .stats-box p {
            color: #28a745; /* Green text for count */
            font-size: 1.5rem;
            font-weight: bold;
        }
    </style>
</head>
<body>

<%@ include file="adminnavbar.jsp" %>

<div class="container">
    
    
    <!-- Total Customers Box -->
    <div class="stats-box">
        
        <a href="${pageContext.request.contextPath}/adddoctor" class="btn btn-secondary">Add Doctor</a><br><br>
        
        <a href="${pageContext.request.contextPath}/viewalldoctors" class="btn btn-secondary">View All Doctors</a><br><br>
        
    </div>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
