<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Home</title>   
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Link Bootstrap CSS for styling -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f8f9fa;
            padding: 0;
            margin: 0;
        }
        .container {
            max-width: 1600px;
            margin: auto;
            padding: 20px;
            text-align: center;
        }
        h1 {
            color: #007bff;
            margin-top: 20px;
        }
        .content {
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            margin-top: 20px;
        }
        .section-title {
            color: #007bff;
            margin-top: 40px;
        }
        .btn-primary {
            margin-top: 20px;
        }
        .project-description {
            font-size: 18px;
            line-height: 1.6;
            margin-bottom: 20px;
            color: #333;
        }
        .doctor-images {
            display: flex;
            justify-content: center;
            gap: 15px;
            margin-top: 20px;
        }
        .doctor-images img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            border: 2px solid #007bff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>

<!-- Include the main navbar -->
<%@ include file="mainnavbar.jsp" %>

<div class="container">
    <h1>Welcome to Our Platform</h1>
    <h2>Student Mental Well-being Support</h2>
    <div class="content">
        <p class="project-description">
            Our platform is dedicated to connecting students with experienced doctors for mental health support and consultation. We aim to provide a seamless and accessible solution for booking, managing, and attending appointments, ensuring high-quality care for everyone involved. Explore our services to see how we are making a difference in mental health awareness and support.
        </p>

        <h2 class="section-title">Meet Our Professionals</h2>
        <p>We work with a team of skilled doctors committed to your well-being. Here's a glimpse of some of the experts on our platform:</p>

        <div class="doctor-images">
            <img src="images/docimg1.jpeg" alt="Doctor 1">
            <img src="images/docimg3.jpeg" alt="Doctor 2">
            <img src="images/docimg2.jpeg" alt="Doctor 3">
        </div>

        <p class="project-description">
            Join our growing community and take the first step toward better mental health today. Whether you're a student seeking guidance or a doctor looking to contribute, our platform is designed to support you every step of the way.
        </p>
    </div>
</div>

<!-- Link Bootstrap and jQuery JS for any interactivity if needed -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

</body>
</html>
