<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #d3cce3, #e9e4f0);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #007BFF;
            padding: 20px;
            text-align: center;
            color: white;
            font-size: 24px;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        form {
            background: #ffffff;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 500px;
        }

        form h2 {
            margin-top: 0;
            margin-bottom: 30px;
            font-size: 24px;
            text-align: center;
            color: #333;
        }

        input[type=text], input[type=email], input[type=password] {
            width: 100%;
            padding: 12px;
            margin-bottom: 18px;
            border: 1px solid #ccc;
            border-radius: 6px;
            font-size: 15px;
        }

        input[type=submit] {
            width: 100%;
            background-color: #007bff;
            color: white;
            border: none;
            padding: 12px;
            font-size: 16px;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type=submit]:hover {
            background-color: #0056b3;
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
            form {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>

<header>
    Student Registration Portal
</header>

<div class="container">
    <form action="RegisterServlet" method="post">
        <h2>Register</h2>
        <label for="id">ID:</label>
        <input type="text" name="id" id="id" required>

        <label for="name">Name:</label>
        <input type="text" name="name" id="name" required>

        <label for="email">Email:</label>
        <input type="email" name="email" id="email" required>

        <label for="password">Password:</label>
        <input type="password" name="password" id="password" required>

        <input type="submit" value="Register">
    </form>
</div>

<footer>
    &copy; 2025 D'Soft Computer . All rights reserved.
</footer>

</body>
</html>
