<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="jakarta.tags.core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Login</title>

    <!-- Link to Bootstrap CSS for better styling and responsiveness -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: url('images/mentalwords.jpg') no-repeat center center fixed;
            background-size: cover;
            margin: 0;
            padding: 0;
        }
        .container {
            margin-top: 50px;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            margin: auto;
        }
        h3 {
            text-align: center;
            color: #007bff;
        }
        h4 {
            color: red;
            text-align: center;
        }
        .form-control {
            margin-bottom: 15px;
        }
        .btn-success {
            width: 100%;
            margin-top: 10px;
        }
    </style>
</head>
<body>

<%@ include file = "mainnavbar.jsp" %>

<h4>
    <c:out value="${message}"></c:out><br/>
</h4>

<h3>Student Login Form</h3>

<div class="container">
    <form method="post" action="checkstudentlogin">
        <div class="form-group">
            <label for="email">Enter Email:</label>
            <input type="email" class="form-control" name="semail" required />
        </div>

        <div class="form-group">
            <label for="password">Enter Password:</label>
            <input type="password" class="form-control" name="spwd" required />
        </div>

        <input type="submit" value="Login" class="btn btn-success" />
        <input type="reset" value="Clear" class="btn btn-secondary mt-2" />
    </form>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>