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
<h2>CART DETAILS</h2><br>
<br>
<br>
<br>
<h1>Table Created for Cart</h1>
<table class="table">
  <tr>
    <th>Cart Product Id</th>
    <th>Cart Product Name</th>
    <th>Cart Price</th>
    <th>Cart Quantity</th>
    <th>Cart User Id</th>
    
  </tr>
<c:forEach items="${Listofcart}" var="c">
  <tr>
    <td>${c.cartproductid}</td>
    <td>${c.cartproductName}</td>
    <td>${c.cartprice}</td>
    <td>${c.cartquantity}</td>
    <td>${c.cartuserID}</td>
    
    <td><a class="btn btn-danger" href="deletecartitem-${c.id}">Delete</a></td>
 </tr>
 </c:forEach>
 <tr><th colspan="2">Cart Grand Total</th> <th>${sum}</th></tr>
</table>
 <a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath }/index">Continue Shopping</a>
<a class="btn btn-warning btn-lg" href="${pageContext.request.contextPath }/checkout">Checkout</a>

 
 
</body>
</html>