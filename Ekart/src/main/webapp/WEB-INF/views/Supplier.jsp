<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
     <%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table, th, td {
    border: 1px solid black;
}
</style>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/3.3.7/css/font-awesome.min.css" rel="stylesheet"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<title>NewShop</title>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
	<a class="navbar-brand" href="#">Jaguar</a>
</div>
<ul class="nav navbar-nav">
<li class="active"><a href="index">Home</a>
 
<li class="active"><a href="supplier">cancel</a>
</li></ul></div></nav>
<h2>SUPPLIER DETAILS</h2><br>
<br>
<br>
<springForm:form action="addingsupplier" method="post" modelAttribute="obsuppjsp">
<springForm:input type="hidden" path="sid" value="${obsuppjsp.sid}"/>
Supplier Name:
  <br>
   <springForm:input type="text" path="supplierName" name="supplier name" value="${obsuppjsp.supplierName }" />
  <br>
  <br>
 <c:if test="${empty obsuppjsp.supplierName}">
 <button type="Submit">Add supplier to list</button>
 </c:if>
 <c:if test="${!empty obsuppjsp.supplierName}">
 <button type="submit">Edit</button>
 </c:if>
  </springForm:form> 
 <br>
 <br>
 <br>
 <h2>Table Created for Supplier</h2>
 <table class="table">
  <tr>
    <th>Supplier Id</th>
    <th>Supplier Name</th> 
  </tr>
  <c:forEach items="${Listofsup}" var="s">
  <tr>
    <td>${s.sid}</td>
    <td>${s.supplierName}</td>
    <td><a href="updatesupplier-${s.sid}"><button type="button" class="btn btn-primary">Update</button></a></td>
     <td><a href="deletesupplier-${s.sid }"><button type="button" class="btn btn-danger">Delete</button></a></td>
  </tr>
  </c:forEach>
</table>
 
</body>
</html>