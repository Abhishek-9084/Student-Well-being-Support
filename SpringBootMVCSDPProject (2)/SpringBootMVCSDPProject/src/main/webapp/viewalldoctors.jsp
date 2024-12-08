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
            background-color: #f4f7fc;
            font-family: 'Roboto', sans-serif;
        }
        h3 {
            margin-top: 20px;
            color: #343a40;
            font-weight: 700;
        }
        .table-container {
            max-width: 90%;
            margin: 30px auto;
            background-color: #fff;
            padding: 25px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            border: 1px solid #ddd;
        }
        .table {
            width: 100%;
            border-collapse: collapse;
            border-radius: 8px;
            overflow: hidden;
        }
        .table th {
            background-color: #007bff;
            color: white;
            text-align: center;
            font-size: 1.1em;
            padding: 15px;
        }
        .table td {
            padding: 12px;
            text-align: center;
            font-size: 1em;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
        }
        .table tbody tr:nth-child(even) {
            background-color: #fafafa;
        }
        .total-students {
            font-size: 1.2em;
            color: #28a745;
            margin-bottom: 15px;
        }
        .table td img {
            width: 60px;
            height: 60px;
            object-fit: cover;
            border-radius: 50%;
            border: 2px solid #ddd;
        }
        .table th, .table td {
            text-align: center;
        }
        .table-container .btn {
            background-color: #007bff;
            color: white;
            border-radius: 5px;
            font-weight: bold;
        }
        .table-container .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <!-- Table Container for styling -->
    <div class="table-container">
        <h3 class="text-center">View All Doctors</h3>
        <!-- Display Total Doctors -->
        <p class="total-students text-center">Total Doctors: <strong>${doctorlist.size()}</strong></p>
        <table class="table">
            <thead>
                <tr>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>EMAIL</th>
                    <th>COST</th>
                    <th>ABOUT</th>
                    <th>IMAGE</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${doctorlist}" var="d">
                    <tr>
                        <td><c:out value="${d.name}" /></td>
                        <td><c:out value="${d.gender}" /></td>
                        <td><c:out value="${d.email}" /></td>
                        <td><c:out value="${d.cost}" /></td>
                        <td><c:out value="${d.about}" /></td>
                        <td><img src="<c:out value="${d.image}" />" alt="Doctor Image" /></td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="text-center">
            <a href="adddoctor.jsp" class="btn">Add New Doctor</a>
        </div>
    </div>

    <!-- Link Bootstrap and jQuery JS for table interactivity if needed -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
