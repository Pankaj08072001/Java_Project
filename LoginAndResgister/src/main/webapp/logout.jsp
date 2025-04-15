<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="Stylesheet" href="Style.css">
</head>
<body>
	<%@ page import="jakarta.servlet.http.HttpSession"%>
	<%
	// Retrieve the session object
	HttpSession session2 = request.getSession(false);
	if (session2 != null) {
		session2.invalidate();
	}
	response.sendRedirect("ThankPage.jsp");
	%>

</body>
</html>