<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Welcome | A.S.H Event Planners</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef3f7;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #ffffff;
            padding: 20px 40px;
            box-shadow: 0 2px 6px rgba(0,0,0,0.08);
        }
        .header h1 {
            margin: 0;
            color: #2d3e50;
        }
        .content {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 60px 20px;
        }
        .content h2 {
            color: #3e4e5e;
        }
        .btn {
            margin-top: 30px;
            display: flex;
            gap: 20px;
        }
        .btn a {
            text-decoration: none;
            padding: 12px 24px;
            background-color: #4caf50;
            color: white;
            border-radius: 5px;
            font-weight: 500;
            transition: background-color 0.3s ease;
        }
        .btn a:hover {
            background-color: #43a047;
        }
        .footer {
            text-align: center;
            color: #888;
            font-size: 14px;
            margin-top: 100px;
        }
    </style>
</head>
<body>

<div class="header">
    <h1>A.S.H Event Planners</h1>
</div>

<div class="content">
    <h2>Plan Your Events With Ease</h2>
    <p>Register or login to book your next big event with us.</p>

    <div class="btn">
        <a href="register.jsp">Register</a>
        <a href="login.jsp">Login</a>
    </div>
</div>

<div class="footer">
    &copy; 2025 A.S.H Event Planners
</div>

</body>
</html>
