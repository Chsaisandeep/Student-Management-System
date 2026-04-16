<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display Page</title>

<!-- Bootstrap CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
a {
    box-shadow: 0px 0px 15px black;
}
</style>
</head>
<body>
<%@ page import="java.util.List, java.util.Iterator, com.gqt.Student" %>
<%
    List sList = (List) session.getAttribute("Student");
%>

<table class="table table-bordered table-hover mb-5">

    <thead class="table-dark text-center">
        <tr>
            <th>Student Id</th>
            <th>Student Name</th>
            <th>Gender</th>
            <th>City</th>
            <th>Course</th>
            <th>Amount</th>
        </tr>
    </thead>

    <tbody class="table-warning text-center">

        <%
            Iterator<Student> itr = sList.iterator();

            while (itr.hasNext()) {
                Student s = itr.next();
        %>

        <tr>
            <td><%= s.getSid() %></td>
            <td><%= s.getName() %></td>
            <td><%= s.getGender() %></td>
            <td><%= s.getCity() %></td>
            <td><%= s.getCourse() %></td>
            <td><%= s.getAmount() %></td>
        </tr>

        <%
            }
        %>

    </tbody>

</table>

<a href="index.jsp"
   class="bg-success text-white text-decoration-none fs-5 p-3 rounded-4 m-5">
   Home Page
</a>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
