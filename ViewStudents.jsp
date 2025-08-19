<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Semester</title>
<style>
    body {
        background: linear-gradient(to right, #74ebd5, #ACB6E5);
        font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        display: flex;
        align-items: center;
        justify-content: center;
        height: 100vh;
        margin: 0;
    }

    .form-container {
        background-color: white;
        padding: 40px;
        border-radius: 20px;
        box-shadow: 0px 8px 20px rgba(0, 0, 0, 0.2);
        text-align: center;
    }

    h1 {
        margin-bottom: 30px;
        color: #333;
    }

    button {
        background-color: #4CAF50;
        border: none;
        color: white;
        padding: 15px 30px;
        margin: 10px;
        font-size: 16px;
        border-radius: 30px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
        background-color: #388E3C;
        transform: scale(1.05);
    }
</style>
</head>
<body>

<div class="form-container">
    <h1>Select Semester</h1>
    <form action="result" method="post">
        <button type="submit" name="semester" value="5th">5th Semester</button>
        <button type="submit" name="semester" value="7th">7th Semester</button>
    </form>
</div>

</body>
</html>
