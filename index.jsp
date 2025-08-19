<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Online Exam System - Login</title>
    <link rel="stylesheet" href="Style2.css">
</head>
<body>
    <div class="login-container">
        <h1>Login to Online Exam</h1>

        <% 
            String error = request.getParameter("error");
            if ("1".equals(error)) {
        %>
            <p class="error-message">Invalid username or password. Please try again.</p>
        <% } %>

        <form action="LoginServlet" method="post">
            <div class="form-group">
                <label>Username</label>
                <input type="text" name="username" required>
            </div>

            <div class="form-group">
                <label>Password</label>
                <input type="password" name="password" required>
            </div>

            <input type="submit" value="Login" class="btn">
        </form>
        
        
    </div>
</body>
</html>
