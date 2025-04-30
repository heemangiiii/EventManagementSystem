<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.event.DBConnection" %>
<%
    String userEmail = (String) session.getAttribute("userEmail");
    if (userEmail == null || !userEmail.equals("admin@ash.com")) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection conn = DBConnection.getConnection();
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * FROM events");
%>
<!DOCTYPE html>
<html>
<head>
    <title>Admin Dashboard</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            padding: 40px;
        }
        h2 {
            color: #2d3e50;
            text-align: center;
        }
        .form-container {
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            width: 600px;
            margin: 20px auto;
            box-shadow: 0 0 10px rgba(0,0,0,0.05);
        }
        input, textarea {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            font-size: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        button {
            background-color: #4caf50;
            color: white;
            padding: 10px 20px;
            border: none;
            font-size: 15px;
            border-radius: 5px;
            cursor: pointer;
        }
        table {
            margin-top: 40px;
            width: 90%;
            border-collapse: collapse;
            margin-left: auto;
            margin-right: auto;
        }
        th, td {
            padding: 10px;
            border: 1px solid #ccc;
            text-align: center;
            font-size: 14px;
        }
    </style>
</head>
<body>

<h2>Admin Dashboard - Manage Events</h2>

<div class="form-container">
    <form action="addevent" method="post">
        <input type="text" name="title" placeholder="Event Title" required />
        <textarea name="description" placeholder="Description" required></textarea>
        <input type="date" name="date" required />
        <input type="text" name="location" placeholder="Location" required />
        <button type="submit">Add Event</button>
    </form>
</div>

<h2>Existing Events</h2>
<table>
    <tr>
        <th>ID</th>
        <th>Title</th>
        <th>Date</th>
        <th>Location</th>
        <th>Actions</th>
    </tr>
<%
    while(rs.next()) {
%>
    <tr>
        <td><%= rs.getInt("id") %></td>
        <td><%= rs.getString("title") %></td>
        <td><%= rs.getDate("date") %></td>
        <td><%= rs.getString("location") %></td>
        <td>
            <form action="deleteevent" method="post" style="display:inline;">
                <input type="hidden" name="eventId" value="<%= rs.getInt("id") %>"/>
                <button type="submit">Delete</button>
            </form>
        </td>
    </tr>
<% } conn.close(); %>
</table>

</body>
</html>
