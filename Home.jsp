<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Select User Type</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #dce35b, #45b649);
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #007BFF;
            padding: 20px;
            color: white;
            font-size: 22px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .form-box {
            background: #fff;
            padding: 40px 50px;
            border-radius: 12px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.1);
            width: 100%;
            max-width: 450px;
            text-align: center;
        }

        h2 {
            margin-bottom: 30px;
            color: #333;
        }

        .option-container {
            display: flex;
            flex-direction: column;
            gap: 20px;
        }

        .radio-tile {
            position: relative;
            border: 2px solid #ccc;
            border-radius: 10px;
            padding: 20px;
            font-size: 18px;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .radio-tile input[type="radio"] {
            display: none;
        }

        .radio-tile label {
            display: block;
            width: 100%;
            color: #333;
        }

        .radio-tile:hover {
            border-color: #007BFF;
            background-color: #f1f8ff;
        }

        .radio-tile input[type="radio"]:checked + label {
            border: 2px solid #007BFF;
            background-color: #e9f2ff;
            color: #007BFF;
            font-weight: bold;
        }

        input[type="submit"] {
            margin-top: 30px;
            background-color: #007bff;
            color: white;
            padding: 14px 26px;
            font-size: 16px;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
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
    </style>
</head>
<body>

<header>
    User Type Selection
</header>

<div class="container">
    <div class="form-box">
        <form action="Action.jsp" method="post">
            <h2>Select User Type</h2>

            <div class="option-container">
                <div class="radio-tile">
                    <input type="radio" id="student" name="usertype" value="student" required>
                    <label for="student">👨‍🎓 Student</label>
                </div>
                <div class="radio-tile">
                    <input type="radio" id="admin" name="usertype" value="admin" required>
                    <label for="admin">🛠️ Admin</label>
                </div>
            </div>

            <input type="submit" value="Next">
        </form>
    </div>
</div>

<footer>
    &copy; 2025 D'Soft Computer. All rights reserved.
</footer>

</body>
</html>
