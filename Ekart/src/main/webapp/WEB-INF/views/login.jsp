<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<title>Jaguar</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=width-device,initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="conatiner">
 <img src="resources/images/welcome.jpg" alt="Welcome user" style="width:100%;">
<c:if test="${!empty error}">
<p style="color:red;">${error}</p>
</c:if>
<c:if test="${!empty msg}">
<p style="color:green;">${msg}</p>
</c:if>
<form class="form" action="j_spring_security_check" method="post">

<h3><label>User Name:</label></h3>
<input type="text" name="username" class="form-control" required>

<h3><label>Password:</label></h3>
<input type="password" name="password" class="form-control" required>
<button class="btn btn-lg btn-primary"  type="submit">Login</button>
<button class="btn btn-lg btn-primary" type="reset">Cancel</button>
 <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

</form>



</div>
</body>
</html>