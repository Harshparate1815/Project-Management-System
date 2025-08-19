<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Select Semester</title>
<style>
    body {
        font-family: 'Segoe UI', sans-serif;
        background: linear-gradient(to right, #dce35b, #45b649);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        margin: 0;
    }

    .container {
        background-color: white;
        padding: 40px;
        border-radius: 15px;
        box-shadow: 0 8px 20px rgba(0,0,0,0.2);
        text-align: center;
    }

    h2 {
        margin-bottom: 30px;
        color: #333;
    }

    button {
        background-color: #28a745;
        color: white;
        border: none;
        padding: 15px 25px;
        margin: 10px;
        border-radius: 8px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease, transform 0.2s ease;
    }

    button:hover {
        background-color: #218838;
        transform: scale(1.05);
    }

</style>
</head>
<body>
    <div class="container">
        <h2>Select Semester</h2>
        <form action="res" method="post"> 
            <button type="submit" name="semester" value="5th">5th Semester</button>
            <button type="submit" name="semester" value="7th">7th Semester</button>
        </form>
    </div>
</body>
</html>
