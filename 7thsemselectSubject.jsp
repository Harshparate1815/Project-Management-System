<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select 7th Semester Subject</title>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(135deg, #74ebd5, #acb6e5);
            display: flex;
            flex-direction: column;
            min-height: 100vh;
        }

        header {
            background-color: #4A90E2;
            padding: 20px;
            color: white;
            text-align: center;
            font-size: 1.8rem;
            font-weight: bold;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.2);
        }

        footer {
            background-color: #4A90E2;
            padding: 10px;
            color: white;
            text-align: center;
            font-size: 0.9rem;
            margin-top: auto;
        }

        h1 {
            text-align: center;
            color: #333;
            margin-top: 40px;
            margin-bottom: 30px;
            font-size: 2.2rem;
        }

        .subject-buttons {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
            margin-bottom: 40px;
        }

        form button {
            padding: 15px 30px;
            font-size: 1.2rem;
            color: white;
            background: #4A90E2;
            border: none;
            border-radius: 12px;
            cursor: pointer;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background 0.3s ease, transform 0.2s;
        }

        form button:hover {
            background: #357ABD;
            transform: scale(1.05);
        }

        @media (max-width: 600px) {
            .subject-buttons {
                flex-direction: column;
                gap: 15px;
                align-items: center;
            }
        }
    </style>
</head>
<body>
    <%
        String sem = (String) request.getParameter("semester");
        session.setAttribute("sem", sem);
    %>

    <header>
        Student Portal - 7th Semester Subject Selection
    </header>

    <h1>Select Subject</h1>
    <div class="subject-buttons">
        <form action="java7th.html" method="post">
            <button type="submit" name="subject" value="Java">Java</button>
        </form>

        <form action="Cpp7th.html" method="post">
            <button type="submit" name="subject" value="C++">C++</button>
        </form>

        <form action="Python7th.html" method="post">
            <button type="submit" name="subject" value="Python">Python</button>
        </form>
    </div>

    <footer>
        &copy; 2025 Student Result System | Developed by D'Soft Titans 
    </footer>
</body>
</html>
