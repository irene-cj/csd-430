<%-- Irene Carrillo Jaramillo, Module 3, 09/28/2025
This program will receive the submitted form (job application) and show it in a HTML table. The 
Scriptlets will be used to grab the values from the request. CSD 430 --%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Job Application Data</title>
</head>

<body>
    <h1>Submitted Job Application</h1>
    <p>Here is the information you submitted:</p>

    <%
        // This will retrieve the form data using request.getParameter().
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String position = request.getParameter("position");
        String experience = request.getParameter("experience");
        String skills = request.getParameter("skills");
    %>

    <!-- This will be displayed in a table. -->
    <table border="1" cellpadding="8" cellspacing="0">
        <tr>
            <th>Field</th>
            <th>Entered Data</th>
        </tr>
        <tr>
            <td>Full Name</td>
            <td><%= name %></td>
        </tr>
        <tr>
            <td>Email</td>
            <td><%= email %></td>
        </tr>
        <tr>
            <td>Position Applied For</td>
            <td><%= position %></td>
        </tr>
        <tr>
            <td>Years of Experience</td>
            <td><%= experience %></td>
        </tr>
        <tr>
            <td>Skills & Qualifications</td>
            <td><%= skills %></td>
        </tr>
    </table>

    <p><i>PSA: This data is will not be sold...or...stored forever...</i></p>
</body>
</html>
