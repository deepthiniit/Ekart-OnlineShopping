<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
    border: 2px solid black;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/3.3.7/css/font-awesome.min.css" rel="stylesheet"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>Jaguar</title>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
	<a class="navbar-brand" href="#">User Information</a>
	</div>
<ul class="nav navbar-nav">
<li class="active"><a href="index">Home</a></li>
<li class="active"><a href="login">Save</a></li>
<li class="active"><a href="User">Cancel</a></li>
</ul>
</div>
</nav>	
<form:form action="addinguser" method="post" modelAttribute="obuserjsp" >
  User Name:<br>
  <form:input type="text" path="name" />
  <br>

 User Email:<br>
  <form:input type="text" path="email" />
  <br>

User Password:<br>
  <form:input type="password" path="password" />
  <br>

 User Id:<br>
  <form:input type="text" path="userId" />
  <br>

 Phone:<br>
  <form:input type="number" path="phone" />
  <br>

 Address:<br>
  <form:input type="text" path="address" />
  <br>

  Role:<br>
  <form:input type="text"  path="role" />
  <br>
 Enabled:<br>
  <form:input type="text" path="enabled" />
  <br><br>
  <input type="submit" value="add to cart">
  <div class="clearfix">
      <button type="button"  class="cancelbtn">Cancel</button>
      <button type="submit" class="signupbtn">Sign Up</button>
    </div>
</form:form> 
<h1>Table Created for User</h1>
<table class="table">
  <tr>
    <th>User Id</th>
    <th>User Name</th> 
    <th>User Email</th>
    <th>User Password</th>
    <th>Address</th>
    <th>Phone</th>
    <th>Role</th>
    <th>Enabled</th>
  </tr>
  <c:forEach items="${Listofuser}" var="u">
  <tr>
    <td>${u.userId}</td>
    <td>${u.username}</td>
    <td>${u.email}</td>
    <td>${u.password}</td>
    <td>${u.address}</td>
    <td>${u.phone}</td>
    <td>${u.role}</td>
    <td>${u.enabled}</td>
  </tr>
  </c:forEach>
  </table>
</body>
</html>