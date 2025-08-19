<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Exam Declaration Success</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #74ebd5, #ACB6E5);
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            background-color: white;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            text-align: center;
        }
        h2 {
            color: #333;
            margin-bottom: 20px;
        }
        .button-group {
            margin-top: 30px;
        }
        .btn {
            text-decoration: none;
            padding: 12px 25px;
            margin: 10px;
            background-color: #007BFF;
            color: white;
            border-radius: 8px;
            transition: background-color 0.3s;
        }
        .btn:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>

    <div class="container">
        <h2>✅ Thank you! Exam Successfully Declared.</h2>
        
        <div class="button-group">
            <a href="ViewStudents.jsp" class="btn">View All Students</a>  
            <a href="DashBoardAdmin.jsp" class="btn">Home</a> 
        </div>
    </div>

</body>
</html>
