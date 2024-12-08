<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>JFSD - Student Support</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="style.css"/>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 0;
            margin: 0;
        }
        h2 {
            color: black;
            text-align: center;
            margin-top: 20px;
        }
        .navbar {
            margin: 20px auto;
            padding: 15px;
            background-color: lightgray;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center;
        }
        .navbar a {
            color: black;
            font-size: 1.3em;
            margin: 0 15px;
            text-decoration: none;
            font-weight: 500;
        }
        .navbar a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
    </style>
</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <a href="/">Home</a>
    <a href="studentreg">Student Registration</a>
    <a href="studentlogin">Student Login</a>
    <a href="adminlogin">Admin Login</a>
</div>

<!-- Bootstrap and jQuery scripts for interactivity -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</body>
</html>
