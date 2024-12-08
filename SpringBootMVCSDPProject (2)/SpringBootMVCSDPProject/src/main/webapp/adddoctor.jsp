<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Add Doctor</title>

<!-- Link Bootstrap CSS for styling -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<style>
    body {
        font-family: Arial, sans-serif;
        background: linear-gradient(to right, #6a11cb, #2575fc);
        color: #fff;
        margin: 0;
        padding: 20px;
    }
    h3 {
        color: #ffffff;
        text-align: center;
        margin-bottom: 30px;
        font-weight: bold;
    }
    .container {
        background-color: rgba(255, 255, 255, 0.1);
        padding: 30px;
        border-radius: 15px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.2);
        max-width: 600px;
        margin: auto;
    }
    .form-group label {
        font-weight: bold;
        color: #ffffff;
    }
    .form-control, textarea {
        background-color: rgba(255, 255, 255, 0.9);
        border: none;
        border-radius: 5px;
        padding: 10px;
        color: #333;
    }
    textarea {
        width: 100%;
        resize: none;
        height: 80px;
    }
    .btn {
        width: 45%;
        margin: 10px 5px;
        font-weight: bold;
    }
    .btn-success {
        background-color: #28a745;
        border: none;
    }
    .btn-success:hover {
        background-color: #218838;
    }
    .btn-secondary {
        background-color: #6c757d;
        border: none;
    }
    .btn-secondary:hover {
        background-color: #5a6268;
    }
</style>
</head>
<body>

<div class="container">
    <h3>Add Doctor</h3>
    <form method="post" action="insertdoctor" enctype="multipart/form-data">

        <!-- Name Field -->
        <div class="form-group">
            <label for="dname">Doctor Name</label>
            <input type="text" id="dname" class="form-control" name="dname" required>
        </div>

        <!-- Gender Selection -->
        <div class="form-group">
            <label>Select Gender</label><br>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderMale" name="dgender" class="form-check-input" value="Male" required>
                <label class="form-check-label" for="genderMale">Male</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderFemale" name="dgender" class="form-check-input" value="Female" required>
                <label class="form-check-label" for="genderFemale">Female</label>
            </div>
            <div class="form-check form-check-inline">
                <input type="radio" id="genderOther" name="dgender" class="form-check-input" value="Other" required>
                <label class="form-check-label" for="genderOther">Other</label>
            </div>
        </div>

        <!-- Email Field -->
        <div class="form-group">
            <label for="demail">Enter Email Id</label>
            <input type="email" id="demail" name="demail" class="form-control" required>
        </div>

        <!-- Cost Field -->
        <div class="form-group">
            <label for="dcost">Doctor Cost</label>
            <input type="number" id="dcost" name="dcost" class="form-control" required>
        </div>

        <!-- About Doctor -->
        <div class="form-group">
            <label for="dabout">About Doctor</label>
            <textarea id="dabout" name="dabout" class="form-control" required></textarea>
        </div>

        <!-- Doctor Image -->
        <div class="form-group">
            <label for="dimage">Doctor Image</label>
            <input type="file" id="dimage" name="dimage" class="form-control" required>
        </div>

        <!-- Submit and Reset Buttons -->
        <div class="form-group text-center">
            <input type="submit" value="Add" class="btn btn-success">
            <input type="reset" value="Clear" class="btn btn-secondary">
        </div>

    </form>
</div>

</body>
</html>
