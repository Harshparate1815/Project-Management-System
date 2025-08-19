<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="pojos.*"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Dashboard</title>
    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #83a4d4, #b6fbff);
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }

        header {
            background-color: #007BFF;
            padding: 20px 40px;
            color: white;
            font-size: 24px;
            text-align: center;
            box-shadow: 0 4px 6px rgba(0,0,0,0.1);
        }

        footer {
            background-color: #f1f1f1;
            padding: 15px 30px;
            text-align: center;
            color: #666;
            font-size: 14px;
            margin-top: auto;
            border-top: 1px solid #ddd;
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 40px 20px;
        }

        .dashboard {
            background: rgba(255, 255, 255, 0.9);
            padding: 40px 50px;
            border-radius: 20px;
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
            text-align: center;
        }

        h2 {
            font-size: 28px;
            margin-bottom: 40px;
            color: #333;
        }

        .btn {
            display: inline-block;
            padding: 14px 30px;
            margin: 12px;
            font-size: 16px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 8px;
            transition: background-color 0.3s ease, transform 0.2s ease;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }

        @media (max-width: 600px) {
            .dashboard {
                padding: 30px 20px;
            }

            h2 {
                font-size: 22px;
            }

            .btn {
                padding: 12px 20px;
                font-size: 14px;
            }
        }
    </style>
</head>
<body>

<%
    StudentBean sb = (StudentBean) session.getAttribute("userDetails");
%>

<header>
    Student Portal Dashboard
</header>

<div class="container">
    <div class="dashboard">
        <h2>Welcome, <%= (sb != null) ? sb.getName() : "Student" %>!</h2>

        <form method="post" action="test" style="display: inline;">
            <button type="submit" class="btn">Conduct Exam</button>
        </form>

        <form method="post" action="viewResult" style="display: inline;">
            <button type="submit" class="btn">View Result</button>
        </form>
    </div>
</div>

<footer>
    &copy; 2025 D'Soft Computer. All rights reserved.
</footer>

</body>
</html>
