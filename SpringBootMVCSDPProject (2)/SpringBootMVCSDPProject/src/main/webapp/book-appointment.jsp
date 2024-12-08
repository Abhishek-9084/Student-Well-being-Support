<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Book Appointment</title>
<!-- Link to Bootstrap CSS for styling -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to bottom, #6a11cb, #2575fc);
        color: #fff;
        margin: 0;
        padding: 0;
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
        max-width: 500px;
        width: 100%;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
    }
    h1 {
        text-align: center;
        color: #ffffff;
        margin-bottom: 20px;
    }
    label {
        display: block;
        margin-top: 15px;
        color: #ddd;
        font-weight: bold;
    }
    select, input[type="datetime-local"], input[type="submit"] {
        width: 100%;
        margin-top: 10px;
        padding: 10px;
        border: none;
        border-radius: 5px;
        font-size: 1rem;
    }
    select, input[type="datetime-local"] {
        background-color: #fff;
        color: #333;
    }
    input[type="submit"] {
        background: #007bff;
        color: white;
        cursor: pointer;
        transition: background 0.3s ease;
        margin-top: 20px;
        font-weight: bold;
    }
    input[type="submit"]:hover {
        background: #0056b3;
    }
</style>
</head>
<body>

<div class="container">
    <h1>Book Appointment</h1>
    <form action="${pageContext.request.contextPath}/submit-appointment" method="POST">
        <label for="doctorId">Select Doctor:</label>
        <select name="doctorId" id="doctorId" required>
            <c:forEach var="doctor" items="${doctors}">
                <option value="${doctor.id}">${doctor.name}</option>
            </c:forEach>
        </select>

        <label for="appointmentTime">Appointment Time:</label>
        <input type="datetime-local" id="appointmentTime" name="appointmentTime" required>

        <input type="submit" value="Book Appointment">
    </form>
</div>

<!-- Bootstrap and jQuery scripts for interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
