<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Registration Successful</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f0f4f8;
            text-align: center;
            padding: 40px;
        }
        .container {
            background-color: #fff;
            padding: 30px;
            margin: auto;
            width: 60%;
            box-shadow: 0 0 10px rgba(0,0,0,0.15);
            border-radius: 10px;
        }
        h1 {
            color: #b30000;
            font-size: 28px;
        }
        p {
            font-size: 16px;
            margin: 15px 0;
        }
        .highlight {
            font-weight: bold;
            color: #444;
        }
        .footer {
            margin-top: 30px;
            color: #006600;
            font-size: 18px;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>A.S.H Event Planners</h1>
    <p>Dear User,</p>
    <p>Your account has been <span class="highlight">successfully registered</span>.</p>
    <p>You can now log in anytime to access our event features.</p>
    <p>Go ahead and book your first event!</p>
    <p>Your account details are as follows:</p>
    <p>Email: <span class="highlight">${userEmail}</span></p>
    <p>Customer ID: <span class="highlight">${userId}</span></p>
    
    <div class="footer">Have a great day. :)</div>
</div>

</body>
</html>
