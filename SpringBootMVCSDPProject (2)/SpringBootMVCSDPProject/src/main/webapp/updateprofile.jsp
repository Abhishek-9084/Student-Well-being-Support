<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Update Profile</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            background-color: #ffffff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 20px auto;
        }
        h3 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        label {
            font-weight: 600;
        }
        .form-check-inline {
            margin-right: 10px;
        }
    </style>
</head>
<body>

<!-- Include the main navbar -->
<%@ include file="studentnavbar.jsp" %>

<div class="container">
    <h3>Student Update Profile Form</h3>
    <form method="post" action="update">
    
    <label for="sid">ID</label>
    <input type="number" class="form-control" name="sid" value="<%=s.getId() %>" readonly required>
       <br/> 
        <!-- Name Field -->
        <div class="form-group">
            <label for="sname">Enter Name</label>
            <input type="text" id="sname" class="form-control" name="sname" value="<%=s.getName() %>" required>
        </div>

        <!-- Gender Selection -->
        <div class="form-group">
            <label>Select Gender</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderMale" name="sgender" class="form-check-input" value="Male" required>
                <label class="form-check-label" for="genderMale">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderFemale" name="sgender" class="form-check-input" value="Female" required>
                <label class="form-check-label" for="genderFemale">Female</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderOther" name="sgender" class="form-check-input" value="Other" required>
                <label class="form-check-label" for="genderOther">Other</label>
            </div>
        </div>

        <!-- Date of Birth Field -->
        <div class="form-group">
            <label for="sdob">Select Date Of Birth</label>
            <input type="date" id="sdob" name="sdob" class="form-control" required>
        </div>

        <!-- Email Field -->
        <div class="form-group">
            <label for="semail">Enter Email Id</label>
            <input type="email" id="semail" name="semail" class="form-control" value="<%=s.getEmail() %>" readonly required>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <label for="spwd">Enter Password</label>
            <input type="password" id="spwd" name="spwd" class="form-control" value="<%=s.getPassword() %>" required>
        </div>

        <!-- Location Field -->
        <div class="form-group">
            <label for="slocation">Enter Location</label>
            <input type="text" id="slocation" name="slocation" class="form-control" value="<%=s.getLocation() %>" required>
        </div>

        <!-- Contact Field -->
        <div class="form-group">
            <label for="scontact">Enter Contact</label>
            <input type="number" id="scontact" name="scontact" class="form-control" value="<%=s.getContact() %>" required>
        </div>

        <!-- Submit and Reset Buttons -->
        <div class="form-group text-center">
            <input type="submit" value="Update" class="btn btn-success">
            <input type="reset" value="Clear" class="btn btn-secondary">
        </div>

    </form>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
