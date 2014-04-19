<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login page</title>
</head>
<body>
	<c:url var="loginURL" value="j_spring_security_check" />
	<c:if test="${param.error != null }">
		<div>
			Failed to login
			<c:if test="${SPRING_SECURITY_LAST_EXCEPTION != null }">
				Reason:&nbsp;<c:out
					value="${SPRING_SECURITY_LAST_EXCEPTION.message }" />
			</c:if>
		</div>
	</c:if>

	<form action="${loginURL}" method="post">
		<label for="username"> Username</label> <input type="text"
			id="username" name="j_username"> <label for="password">Password</label>
		<input type="password" id="password" name="j_password"> <input
			type="submit" value="Submit">
	</form>
</body>
</html>