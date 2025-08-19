<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Result Declaration</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-family: 'Roboto', sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #007BFF;
            color: white;
            text-align: center;
            padding: 20px;
            font-size: 24px;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .card {
            background-color: #ffffff;
            padding: 50px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.15);
            text-align: center;
            max-width: 450px;
            width: 100%;
        }

        .card h1 {
            color: #333;
            margin-bottom: 30px;
            font-size: 26px;
        }

        .btn {
            display: inline-block;
            text-decoration: none;
            background-color: #007BFF;
            color: white;
            padding: 14px 30px;
            font-size: 17px;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        footer {
            background-color: #f1f1f1;
            color: #666;
            font-size: 14px;
            text-align: center;
            padding: 15px;
            border-top: 1px solid #ccc;
        }

        @media (max-width: 500px) {
            .card {
                padding: 30px 20px;
            }

            .card h1 {
                font-size: 22px;
            }

            .btn {
                width: 100%;
            }
        }
    </style>
</head>
<body>

<header>
    Result Declaration Portal
</header>

<div class="container">
    <div class="card">
        <h1>Welcome to the Result Portal</h1>
        <a href="ResDec.jsp" class="btn">📄 View Declared Results</a>
    </div>
</div>

<footer>
    &copy; 2025 D'Soft Computer. All rights reserved.
</footer>

</body>
</html>
