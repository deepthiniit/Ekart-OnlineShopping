<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
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
<title>newshop</title>
</head>
<body>
<form action="addingorders" method="post" modelAttribute="obordersjsp">
  Order id:<br>
  <input type="number" path="orderId" name="id"  value="">
  <br>
 User:<br>
  <input type="text" path="user" name="user"  value="">
  <br>
Order Payment:<br>
  <input type="text" path="payment" name="ordpay"  value="">
  <br>
Order Total:<br>
  <input type="text" path="total" name="ordtot"  value="">
  <br><br>
  <input type="submit" value="Submit">
  <br>
  <br>
  <br>
  <h1>Table Created for Orders</h1>
  <table class="table">
  <tr>
    <th>Orders Id</th>
    <th>User </th> 
    <th>Payment</th>
    <th>Total</th>
    
  </tr>
  <c:forEach items="${Listoford}" var="o">
  <tr>
    <td>${o.orderId}</td>
    <td>${o.user}</td>
    <td>${o.payment}</td>
    <td>${o.total}</td>
  </tr>
  </c:forEach>
</table>
</form> 

</body>
</html>