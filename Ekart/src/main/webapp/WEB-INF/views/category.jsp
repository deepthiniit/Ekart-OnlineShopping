
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
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
<title>Jaguar</title>
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

<h2>CATEGORY DETAILS</h2><br>
<br>
 
<springForm:form action="addingcategory" method="post" modelAttribute="obcatjsp">
 <springForm:input type="hidden" path="cid" value="${obcatjsp.cid}"/>
  Category Name:
  <br>
   <springForm:input type="text" path="cname" />
  <br>
  <br>
  <c:if test="${empty obcatjsp.cname}">
 <button type="Submit">Save/Edit</button>
 </c:if>
 <c:if test="${!empty obcatjsp.cname}">
 <button type="submit">Add category to list</button>
 </c:if>
 </springForm:form>
 <br>
 <br>
 <br>
 <h1>Table Created for Category
 
 </h1>
 <table class="table">
  <tr>
    <th>Category Id</th>
    <th>Category Name</th> 
  </tr>
  <c:forEach items="${Listofcat}" var="c">
  <tr>
    <td>${c.cid}</td>
    <td>${c.cname}</td>
    <td><a href="updatecategory-${c.cid}"><button type="button" class="btn btn-primary">Update</button></a></td>
     <td><a href="deletecategory-${c.cid }"><button type="button" class="btn btn-danger">Delete</button></a></td>
     
  </tr>
  </c:forEach>
</table>
 
</body>
</html>