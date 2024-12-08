<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login</title>

    <!-- Bootstrap for styling -->
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
            max-width: 500px;
            margin: auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        h3 {
            color: #007bff;
        }
        .btn-primary {
            width: 100%;
            margin-top: 20px;
        }
        .form-control {
            border-radius: 4px;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <h3 class="text-center">Admin Login</h3>
    <form method="post" action="checkadminlogin">
        <div class="form-group">
            <label for="auname">Enter Username</label>
            <input type="text" class="form-control" name="auname" id="auname" required />
        </div>
        <div class="form-group">
            <label for="apwd">Enter Password</label>
            <input type="password" name="apwd" class="form-control" id="apwd" required />
        </div>
        <div class="form-group">
            <input type="submit" value="Login" class="btn btn-primary" />
            <input type="reset" value="Clear" class="btn btn-secondary" />
        </div>
    </form>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
