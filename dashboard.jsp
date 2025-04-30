<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.sql., java.util." %>
<%@ page import="com.event.DBConnection" %>
<%
    String userEmail = (String) session.getAttribute("userEmail");
    if (userEmail == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    Connection conn = DBConnection.getConnection();
    PreparedStatement ps = conn.prepareStatement("SELECT * FROM events");
    ResultSet rs = ps.executeQuery();
%>
<!DOCTYPE html>
<html>
<head>
    <title>Dashboard | A.S.H Event Planners</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            margin: 0;
            padding: 20px;
        }
        h2 {
            color: #2d3e50;
            text-align: center;
        }
        .event-card {
            background-color: #ffffff;
            padding: 20px;
            margin: 20px auto;
            border-radius: 10px;
            box-shadow: 0 0 8px rgba(0,0,0,0.05);
            width: 80%;
        }
        .event-card h3 {
            margin: 0 0 10px;
            color: #333;
        }
        .event-card p {
            margin: 5px 0;
            color: #555;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            margin-top: 10px;
            background-color: #4caf50;
            color: white;
            border-radius: 5px;
            text-decoration: none;
        }
        .btn:hover {
            background-color: #43a047;
        }
    </style>
</head>
<body>

<h2>Welcome, <%= userEmail %>! Explore Events Below</h2>

<% while(rs.next()) { %>
    <div class="event-card">
        <h3><%= rs.getString("title") %></h3>
        <p><strong>Date:</strong> <%= rs.getString("date") %></p>
        <p><strong>Location:</strong> <%= rs.getString("location") %></p>
        <p><%= rs.getString("description") %></p>
        <form action="book" method="post">
            <input type="hidden" name="eventId" value="<%= rs.getInt("id") %>"/>
            <button class="btn" type="submit">Register</button>
        </form>
    </div>
<% } conn.close(); %>

</body>
</html>
