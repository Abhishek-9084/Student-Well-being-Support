<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Home</title>

    <!-- Link to Bootstrap CSS for better styling and responsiveness -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to bottom, #141e30, #243b55);
            color: #fff;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
            max-width: 400px;
            text-align: center;
        }
        h2 {
            color: #00c6ff;
            margin-bottom: 30px;
            font-weight: bold;
        }
        .btn {
            margin: 10px 0;
            width: 100%;
            background: #007bff;
            color: white;
            border: none;
            padding: 10px;
            font-weight: bold;
            transition: background 0.3s ease;
        }
        .btn:hover {
            background: #0056b3;
        }
    </style>
</head>
<body>

<div class="container">
    <h2>Admin Dashboard</h2>
    
     <div class="stats-box">
        <h4>Total Students</h4>
        <p><strong><c:out value="${count}" /></strong></p>
        
        
    </div>

    <a href="adminhome" class="btn">Home</a>
    <a href="viewallstudents" class="btn btn-secondary">View All Students</a>
    <a href="deletestudent" class="btn btn-danger">Delete Student</a>
    <a href="viewstudentbyid" class="btn btn-warning">View Student By ID</a>
    <a href="adminlogin" class="btn btn-dark">Logout</a>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
