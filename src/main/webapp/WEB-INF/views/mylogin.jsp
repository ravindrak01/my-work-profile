<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<spring:url value="/resources/css/loginStyles.css" var="loginCSS" />
<link rel="stylesheet" href="${loginCSS}">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@ page isELIgnored="false"%> 
 
<title>Insert title here</title> 
</head>
<body>
	<form action="<c:url value='login'/>" method="post">
		<h4>Login Information</h4>
		<input class="name" type="text" name="username" placeholder="username"/> 
		<input class="pw" type="password" name="password" placeholder="password"/>
		<input class="button" type="submit" value="Log in" />
		<span class="invalid">${message}</span>
	</form>
</body>
</html>