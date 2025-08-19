<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Choose Action</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #c9d6ff, #e2e2e2);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #007BFF;
            padding: 20px;
            color: white;
            font-size: 24px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 30px;
        }

        .box {
            background: #ffffff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.1);
            text-align: center;
            max-width: 400px;
            width: 100%;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
        }

        a {
            display: inline-block;
            margin: 10px;
            padding: 12px 28px;
            background-color: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 8px;
            font-size: 16px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        a:hover {
            background-color: #218838;
            transform: scale(1.05);
        }

        footer {
            background-color: #f1f1f1;
            text-align: center;
            padding: 15px;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ddd;
        }

        @media (max-width: 500px) {
            .box {
                padding: 30px 20px;
            }

            a {
                width: 100%;
                margin-top: 12px;
            }
        }
    </style>
</head>
<body>

<%
    String userType = request.getParameter("usertype");
    ServletContext sc = getServletContext();
    sc.setAttribute("usertype", userType);
%>

<header>
    Choose Your Action
</header>

<div class="container">
    <div class="box">
        <h2>Welcome, <%= userType %></h2>
        <a href="Login.jsp">🔐 Login</a>
        <a href="Register.jsp">📝 Register</a>
    </div>
</div>

<footer>
    &copy; 2025 D'Soft Computer. All rights reserved.
</footer>

</body>
</html>
