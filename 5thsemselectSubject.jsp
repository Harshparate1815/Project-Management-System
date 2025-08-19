<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String sem = (String)request.getParameter("semester");
		session.setAttribute("sem", sem);
	%>
	
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Select Subject</title>
  <link rel="stylesheet" href="5thand7thsemcss.css">
</head>
<body>
  <h1>Select Subject</h1>

  <div class="subject-buttons">
    <form action="java5th.html" method="post">
      <button type="submit" name="subject" value="Java">Java</button>
    	<name="sem" value=<%=sem %>>
    </form>

    <form action="Cpp5th.html" method="post">
      <button type="submit" name="subject" value="C++">C++</button>
    </form>

    <form action="Python5th.html" method="post">
      <button type="submit" name="subject" value="Python">Python</button>
    </form>
  </div>
</body>
</html>


</body>
</html>