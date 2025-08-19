<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="adm.* , java.util.*"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result Display</title>
<style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
        padding: 20px;
    }

    h2 {
        color: #333;
    }

    table {
        border-collapse: collapse;
        width: 100%;
        margin-bottom: 30px;
        background-color: #fff;
        box-shadow: 0px 0px 10px #ccc;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 10px 15px;
        text-align: center;
    }

    th {
        background-color: #4CAF50;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f9f9f9;
    }

    .container {
        max-width: 1100px;
        margin: auto;
    }
</style>
</head>
<body>
<div class="container">
    <h2>Individual Results</h2>
    <table>
        <tr>
            <th>User ID</th>
            <th>Name</th>
            <th>Project</th>
            <th>Rank</th>
            <th>Technology</th>
            <th>Semester</th>
        </tr>
        <%
            ArrayList<ResultBeans> rs = (ArrayList<ResultBeans>) request.getAttribute("rsb");
            if (rs != null) {
                for (ResultBeans rb : rs) {
        %>
        <tr>
            <td><%= rb.getUsrid() %></td>
            <td><%= rb.getName() %></td>
            <td><%= rb.getProject() %></td>
            <td><%= rb.getRanked() %></td>
            <td><%= rb.getTech() %></td>
            <td><%= rb.getSem() %></td>
        </tr>
        <% 
                } 
            } 
        %>
    </table>

    <h2>Group Results</h2>
    <table>
        <tr>
            <th>Project Name</th>
            <th>Rank</th>
            <th>Semester</th>
            <th>Technology</th>
            <th>User 1</th>
            <th>User 2</th>
            <th>User 3</th>
        </tr>
        <%
            ArrayList<GroupresultBeans> gb = (ArrayList<GroupresultBeans>) request.getAttribute("grp");
            if (gb != null) {
                for (GroupresultBeans grb : gb) {
        %>
        <tr>
            <td><%= grb.getProject_name() %></td>
            <td><%= grb.getRanked() %></td>
            <td><%= grb.getSem() %></td>
            <td><%= grb.getTech() %></td>
            <td><%= grb.getUsr1() %></td>
            <td><%= grb.getUsr2() %></td>
            <td><%= grb.getUsr3() %></td>
        </tr>
        <% 
                } 
            } 
        %>
    </table>
</div>
</body>
</html>
