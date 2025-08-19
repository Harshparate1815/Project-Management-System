<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@400;500&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #007BFF;
            padding: 20px;
            text-align: center;
            color: white;
            font-size: 24px;
            font-weight: 500;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        form {
            background: #fff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 400px;
        }

        form h2 {
            margin-top: 0;
            margin-bottom: 25px;
            font-size: 22px;
            color: #333;
            text-align: center;
        }

        input[type=text], input[type=password] {
            width: 100%;
            padding: 12px;
            margin: 10px 0 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        input[type=submit] {
            width: 100%;
            background-color: #28a745;
            color: white;
            padding: 12px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #218838;
        }

        footer {
            background-color: #f1f1f1;
            padding: 15px 30px;
            text-align: center;
            color: #666;
            font-size: 14px;
            border-top: 1px solid #ddd;
        }

        @media (max-width: 500px) {
            form {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<header>
    Student Login Portal
</header>

<div class="container">
    <form action="LoginServlet" method="post">
        <h2>Login</h2>
        <label for="id">User ID</label>
        <input type="text" id="id" name="id" required>

        <label for="password">Password</label>
        <input type="password" id="password" name="password" required>

        <input type="submit" value="Login">
    </form>
</div>

<footer>
    &copy; 2025 D'Soft Computer. All rights reserved.
</footer>

</body>
</html>
