<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
body {
    background-color: lightblue;
}

form {
    display: flex;
}
</style>
</head>
<body>
<p class="display-2 text-primary text-center m-5">
    Student Registration Successful
</p>

<div class="d-flex justify-content-center gap-4">

    <!-- Add new student -->
    <a href="index.jsp"
       class="m-3 p-4 bg-danger text-white fw-bold fs-5 rounded-4 text-decoration-none shadow-lg">Add New Student</a>

    <!-- Display students -->
    <form action="/StudentManagementSystem1/DisplayRecord">
        <input type="submit" value="Display Students Info" class="m-3 p-4 bg-danger text-white fw-bold fs-5 rounded-4 shadow-lg border-0"> </form>

</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
