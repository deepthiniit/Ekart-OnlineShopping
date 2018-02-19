<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Jaguar </title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<link  href="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"/>"rel="stylesheet">
	<script src="<c:url value="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"/>"></script>
	<script src="<c:url value="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"/>"></script>
	
	<link href="<c:url value="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"/>" rel="stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <h1></h1>
    <p>Describe yourself...</p>
    <hr>
<form:form action="registeruser" method="post" modelAttribute="user">
    <label><b>User Name</b></label><br>
    <form:input type="text" path="username" />
<br>
<br>
<label><b>User Email</b></label><br>
    <form:input type="text" path="email"  />
<br>
<br>
    <label><b>Password</b></label><br>
    <form:input type="password" path="password" />
<br>
<br>
 <label><b>Address</b></label><br>
    <form:input type="text" path="address"   />
<br>
<br>
 <label><b>Phone</b></label><br>
    <form:input type="number" path="phone" />
<br>
<br>
<label>Role_name</label><br>
    <form:input type="text" path="role" />
<br>
     
<form:input type="hidden" path="enabled"  required="" />

 <br>
   
    <div class="clearfix">
      <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
 
</form:form>
</body>
</html>