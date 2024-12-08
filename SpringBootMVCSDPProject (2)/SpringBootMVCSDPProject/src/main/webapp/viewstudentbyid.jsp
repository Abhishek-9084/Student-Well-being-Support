<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
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
            background-color: #f8f9fa;
            margin: 0;
            padding: 50px 0;
        }
        .container {
            max-width: 500px;
            margin: auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            text-align: center
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

<%@ include file="adminnavbar.jsp" %>

<div class="container">
    <h3 class="text-center"><u>View Student By ID</u></h3><br/><br/>
    <form method="post" action="displaystudent">
        <div class="form-group">
            <label for="auname">Select Student ID</label>
            <select name="id" required>
            <option value="">---Select---</option>
            <c:forEach items="${studentlist}" var="student">
            <option value="${student.id}">${student.id}-${student.name}</option>
            
            
            </c:forEach>
            </select>
        </div>
      
        <div class="form-group">
            <input type="submit" value="View" class="btn btn-primary" />
           
        </div>
    </form>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
