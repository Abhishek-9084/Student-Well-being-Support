<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Success</title>
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        .success-message {
            text-align: center;
            padding: 40px;
            background-color: #ffffff;
            border: 1px solid #e3e6ea;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        .success-message h1 {
            color: #28a745;
        }
        .success-message p {
            color: #6c757d;
            font-size: 1.1em;
            margin: 20px 0;
        }
        .btn-login {
            color: #ffffff;
            background-color: #007bff;
            border-color: #007bff;
            padding: 10px 20px;
            font-size: 1em;
            border-radius: 4px;
            text-decoration: none;
        }
        .btn-login:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

<div class="success-message">
    <h1>Success!</h1>
    <p><c:out value="${message}" /></p>
    <a href="studentlogin" class="btn-login">Login Here</a>
</div>

<!-- Link Bootstrap JS for any interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
