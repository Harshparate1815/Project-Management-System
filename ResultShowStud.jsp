<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="adm.ResultBeans"
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Student Result Portal</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary: #4361ee;
            --secondary: #3a0ca3;
            --accent: #4cc9f0;
            --light: #f8f9fa;
            --dark: #212529;
            --success: #2ecc71;
        }
        
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            background-attachment: fixed;
            margin: 0;
            padding: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            color: var(--dark);
        }
        
        .container {
            background: rgba(255, 255, 255, 0.95);
            backdrop-filter: blur(10px);
            border-radius: 20px;
            box-shadow: 0 15px 35px rgba(0, 0, 0, 0.2);
            padding: 40px;
            width: 100%;
            max-width: 700px;
            border: 1px solid rgba(255, 255, 255, 0.3);
            transform: translateY(0);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }
        
        .container:hover {
            transform: translateY(-5px);
            box-shadow: 0 20px 40px rgba(0, 0, 0, 0.25);
        }
        
        .header {
            text-align: center;
            margin-bottom: 30px;
            position: relative;
        }
        
        .header::after {
            content: '';
            position: absolute;
            bottom: -10px;
            left: 50%;
            transform: translateX(-50%);
            width: 80px;
            height: 4px;
            background: linear-gradient(to right, var(--accent), var(--primary));
            border-radius: 2px;
        }
        
        h2 {
            font-size: 2.2rem;
            color: var(--secondary);
            margin-bottom: 5px;
            font-weight: 600;
            letter-spacing: 0.5px;
        }
        
        .subtitle {
            color: #6c757d;
            font-size: 1rem;
            font-weight: 400;
        }
        
        .result-card {
            background: linear-gradient(120deg, rgba(248, 249, 250, 0.8), rgba(241, 243, 245, 0.6));
            border-radius: 15px;
            overflow: hidden;
            margin-bottom: 30px;
            border: 1px solid rgba(0, 0, 0, 0.05);
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.05);
        }
        
        table {
            width: 100%;
            border-collapse: separate;
            border-spacing: 0;
        }
        
        th {
            background: linear-gradient(to right, var(--primary), var(--secondary));
            color: white;
            font-weight: 500;
            font-size: 1rem;
            padding: 18px 20px;
            text-align: left;
            text-transform: uppercase;
            letter-spacing: 0.8px;
        }
        
        tr:nth-child(even) {
            background-color: rgba(67, 97, 238, 0.03);
        }
        
        td {
            padding: 16px 20px;
            font-size: 1.05rem;
            font-weight: 400;
            color: #495057;
            transition: background-color 0.2s;
        }
        
        tr:hover td {
            background-color: rgba(76, 201, 240, 0.1);
        }
        
        .field-name {
            font-weight: 500;
            color: var(--dark);
            width: 35%;
        }
        
        .back-btn-container {
            text-align: center;
            margin-top: 25px;
        }
        
        .back-btn {
            display: inline-flex;
            align-items: center;
            justify-content: center;
            padding: 13px 30px;
            background: linear-gradient(to right, var(--primary), var(--secondary));
            color: white;
            text-decoration: none;
            border-radius: 50px;
            font-weight: 500;
            font-size: 1rem;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(67, 97, 238, 0.4);
            border: none;
            cursor: pointer;
            letter-spacing: 0.5px;
        }
        
        .back-btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 8px 20px rgba(67, 97, 238, 0.6);
        }
        
        .back-btn:active {
            transform: translateY(-1px);
        }
        
        .back-btn i {
            margin-right: 8px;
            transition: transform 0.3s ease;
        }
        
        .back-btn:hover i {
            transform: translateX(-3px);
        }
        
        .highlight {
            color: var(--secondary);
            font-weight: 600;
        }
        
        @media (max-width: 768px) {
            .container {
                padding: 25px;
            }
            
            h2 {
                font-size: 1.8rem;
            }
            
            th, td {
                padding: 14px 15px;
                font-size: 0.95rem;
            }
            
            .back-btn {
                padding: 12px 25px;
                font-size: 0.95rem;
            }
        }
    </style>
</head>
<body>

<%
    ResultBeans res = (ResultBeans) request.getAttribute("rsb");
%>

<div class="container">
    <div class="header">
        <h2>Student Result</h2>
        <p class="subtitle">Academic Performance Details</p>
    </div>
    
    <div class="result-card">
        <table>
            <tr>
                <th colspan="2">Academic Information</th>
            </tr>
            <tr>
                <td class="field-name">Name</td>
                <td class="highlight"><%= res.getName() %></td>
            </tr>
            <tr>
                <td class="field-name">User ID</td>
                <td><%= res.getUsrid() %></td>
            </tr>
            <tr>
                <td class="field-name">Technology</td>
                <td><%= res.getTech() %></td>
            </tr>
            <tr>
                <td class="field-name">Project</td>
                <td><%= res.getProject() %></td>
            </tr>
            <tr>
                <td class="field-name">Rank</td>
                <td class="highlight"><%= res.getRanked() %></td>
            </tr>
            <tr>
                <td class="field-name">Semester</td>
                <td><%= res.getSem() %></td>
            </tr>
        </table>
    </div>
    
    <div class="back-btn-container">
        <a href="StudentDashBoard.jsp" class="back-btn">
            <i class="fas fa-arrow-left"></i> Back to Dashboard
        </a>
    </div>
</div>

</body>
</html>