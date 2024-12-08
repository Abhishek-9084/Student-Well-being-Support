<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: Arial, sans-serif;
        }
        h3 {
            margin-top: 20px;
            color: #007bff;
        }
        .table-container {
            max-width: 80%;
            margin: 20px auto;
            background-color: white;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        .table th {
            background-color: #007bff;
            color: white;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
        }
        .total-students {
            font-size: 1.2em;
            color: #28a745;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
    <!-- Include the admin navbar -->
    <%@ include file="adminnavbar.jsp" %><br/>

    <!-- Table Container for styling -->
    <div class="table-container">
        <h3 class="text-center">View All Students</h3>
        <!-- Display Total Customers -->
    <div class="text-center mt-4 total-students">
        <strong>Total Students:</strong> <c:out value="${count}" /><br/><br/>
    </div>
        <table class="table table-bordered table-hover text-center">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DATE OF BIRTH</th>
                    <th>EMAIL</th>
                    <th>LOCATION</th>
                    <th>CONTACT NO</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${studentlist}" var="student">
                    <tr>
                        <td><c:out value="${student.id}" /></td>
                        <td><c:out value="${student.name}" /></td>
                        <td><c:out value="${student.gender}" /></td>
                        <td><c:out value="${student.dateofbirth}" /></td>
                        <td><c:out value="${student.email}" /></td>
                        <td><c:out value="${student.location}" /></td>
                        <td><c:out value="${student.contact}" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <!-- Link Bootstrap and jQuery JS for table interactivity if needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
