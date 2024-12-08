<%@page import="com.klef.jfsd.springboot.model.Student" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
Student s = (Student)session.getAttribute("student");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Student Registration</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
            max-width: 600px;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 50px auto;
        }
        h3 {
            text-align: center;
            color: #007bff;
            margin-bottom: 20px;
        }
        label {
            font-weight: 600;
        }
        .btn-success {
            background-color: #28a745;
            border-color: #28a745;
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
        }
        #passwordStrength {
            margin-top: 5px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>

<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <h3>Student Registration Form</h3>
    <form method="post" action="insertstudent" onsubmit="return validateForm()">
        
        <!-- Name Field -->
        <div class="form-group">
            <label for="sname">Enter Name</label>
            <input type="text" id="sname" class="form-control" name="sname" 
                   pattern="^[A-Za-z ]+$" title="Name must contain only alphabets and spaces" required>
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
            <input type="date" id="sdob" name="sdob" class="form-control" 
                   min="2021-12-07" max="2024-12-07" required>
        </div>

        <!-- Email Field -->
        <div class="form-group">
            <label for="semail">Enter Email Id</label>
            <input type="email" id="semail" name="semail" class="form-control" required>
        </div>

        <!-- Password Field -->
        <div class="form-group">
            <label for="spwd">Enter Password</label>
            <input type="password" id="spwd" name="spwd" class="form-control" 
                   pattern="^(?=.[A-Z])(?=.[a-z])(?=.\\d)(?=.[@#$%^&+=]).{8,}$"
                   title="Password must include an uppercase letter, lowercase letter, number, and special character, and be at least 8 characters long." required>
            <small id="passwordHelp" class="form-text text-muted">Password must be strong. Avoid personal details and repetition.</small>
            <div id="passwordStrength"></div>
        </div>

        <!-- Location Field -->
        <div class="form-group">
            <label for="slocation">Enter Location</label>
            <input type="text" id="slocation" name="slocation" class="form-control" required>
        </div>

        <!-- Contact Field -->
        <div class="form-group">
            <label for="scontact">Enter Contact</label>
            <input type="number" id="scontact" name="scontact" class="form-control" required>
        </div>

        <!-- Submit and Reset Buttons -->
        <div class="form-group text-center">
            <input type="submit" value="Register" class="btn btn-success">
            <input type="reset" value="Clear" class="btn btn-secondary">
        </div>

    </form>
</div>

<script>
    function validateForm() {
        const dobField = document.getElementById('sdob');
        const dob = new Date(dobField.value);
        const today = new Date();
        const minAgeDate = new Date();
        minAgeDate.setFullYear(today.getFullYear() - 3);

        if (dob > today) {
            alert("Date of birth cannot be in the future.");
            return false;
        }
        if (dob > minAgeDate) {
            alert("You must be at least 3 years old.");
            return false;
        }

        return true;
    }

    document.getElementById('spwd').addEventListener('input', function () {
        const password = this.value;
        const strength = document.getElementById('passwordStrength');
        let message = '';
        let color = '';

        if (password.length >= 8 &&
            /[A-Z]/.test(password) &&
            /[a-z]/.test(password) &&
            /\d/.test(password) &&
            /[@#$%^&+=]/.test(password)) {
            message = "Strong password!";
            color = "green";
        } else if (password.length >= 6) {
            message = "Weak password. Add more complexity.";
            color = "orange";
        } else {
            message = "Very weak password!";
            color = "red";
        }

        strength.textContent = message;
        strength.style.color = color;
    });
</script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>