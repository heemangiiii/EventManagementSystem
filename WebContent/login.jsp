<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login | A.S.H Event Planners</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #eef3f7;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #ffffff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.08);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #2d3e50;
            margin-bottom: 30px;
        }
        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 15px;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #4caf50;
            color: white;
            padding: 12px;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #43a047;
        }
        .register-link {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #555;
        }
        .register-link a {
            text-decoration: none;
            color: #4caf50;
        }
    </style>
</head>
<body>

<div class="form-container">
    <h2>Login</h2>
    <form action="login" method="post">
        <input type="email" name="email" placeholder="Email" required />
        <input type="password" name="password" placeholder="Password" required />
        <input type="submit" value="Login" />
    </form>
    <div class="register-link">
        New here? <a href="register.jsp">Register</a>
    </div>
</div>

</body>
</html>
