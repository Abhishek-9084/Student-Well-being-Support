<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>Your Appointments</h2>
<table>
    <thead>
        <tr>
            <th>Doctor</th>
            <th>Appointment Time</th>
            <th>Status</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="appointment" items="${appointments}">
            <tr>
                <td>${appointment.doctor.name}</td>
                <td>${appointment.appointmentTime}</td>
                <td>${appointment.status}</td>
            </tr>
        </c:forEach>
    </tbody>
</table>


</body>
</html>