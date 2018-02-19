<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
 
<li class="active"><a href="product">cancel</a>
</li></ul></div></nav>
 
<br>
<form:form action="addingproduct" method="post" modelAttribute="obprodjsp" enctype="multipart/form-data">
<form:input type="hidden" path="pid" value="${obprodjsp.pid}"/>
  Product Name:
  <br>
   <form:input type="text" path="pname" value="${obprodjsp.pname}" />
 <br>
 <br>
  <br>
  Product description:
  <br>
   <form:input type="text" path="description" value="${obprodjsp.description }" />
  <br>
  <br>
  Product price:
  <br>
   <form:input type="number" path="price" value="${obprodjsp.price }" />
  <br>
  <br>
  Product stock:
  <br>
   <form:input type="number" path="stock" value="${obprodjsp.stock }" />
  <br>
  <br>
  <%-- Product image:
  <br>
   <form:input type="file" path="pimage" value="${obprodjsp.pimage }" />
  <br>
  <br> --%>
 <label>Category</label>
	<form:select path="category.cname"  items="${categoryList}" itemLabel="cname" itemValue="cname"/>
<br>
  <br>
  <label>Supplier</label>
 <form:select path="supplier.supplierName" items="${supplierList}" itemLabel="supplierName" itemValue="supplierName"/>
<br>
  <br>
  <label>Upload product image</label>
  <br>
  <form:input type="file" path="pimage" />
  <br>
  <c:if test="${empty obprodjsp.pname}">
 <button type="Submit">Add product to list</button>
 </c:if>
 <c:if test="${!empty obprodjsp.pname}">
 <button type="submit">Edit</button>
 </c:if>
 <br>
 <br>
  </form:form>
 <h1>Table Created for Product</h1>
 <table class="table">
  <tr>
    <th>Product Id</th>
    <th>Product Name</th> 
    <th>Product Description</th>
    <th>Product Price</th>
    <th>Product Stock</th>
    <th>Product Image</th>
  </tr>
  <c:forEach items="${Listofprod}" var="p">
  <tr>
    <td>${p.pid}</td>
    <td>${p.pname}</td>
    <td>${p.description}</td>
    <td>${p.price}</td>
    <td>${p.stock}</td>
    <td><img src="resources/images/${p.pid}.jpg" alt="shopping" width="100" height="100"></td>
     <td><a href="updateproduct-${p.pid}"><button type="button" class="btn btn-primary">Update</button></a></td>
     <td><a href="deleteproduct-${p.pid }"><button type="button" class="btn btn-danger">Delete</button></a></td>
     
  </tr>
  </c:forEach>
</table>
</body>
</html>