<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>newshop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="container">
<div class="row">
<div class="col-sm-4 item-photo">
<img style="max-width:100%; margin-top:30px;" src="${pageContext.request.contextPath }/resources/${prod.imgName }"/>
</div>

<div class="col-sm-5" style="border:0px solid gray">
<h3>${prod.pname }</h3>
<h4>${prod.description }</h4>
<h4>${prod.price }</h4>
<h5>${prod.suppplierName }</h5>
<div class="section" style="padding-bottom:20px";>
<form action="${pageContext.request.contextPath }/addToCart" method="post">
<input type="hidden" value="${prod.pid}" name="pid"/>
<input type="hidden" value="${prod.price }" name="pPrice"/>
<input type="hidden" value="${prod.pname }" name="pName"/>
<input type="hidden" value="${prod.imgName }" name="imgName"/>
<label>Oty</label><input type="number" class="form-control" name="pQty" required/><br><br>
<input class="btn btn-warning btn-lg" type="submit" value="Add To Cart"> 
<h6><span style="color:red;" class="glyphicon glyphicon-heart" style="cursor:pointer;"></span>Wish List</h6>
</form>
</div>
</div>
<hr>
<div class="col-sm-9">
<h3>Product Details</h3>
<ul class="menu-items">
<li>All Kinds of Shopping Items Available at our online store</li>
<li>Easy and Guaranteed mode of Online Shopping</li>
<li>Great Discounted Sale for Largest Shopping</li>
</ul>
</div>
<br><br>
<h6>Recognized By the Authorized Company of Indian Govt.</h6>
</div>
</div>
</body>
</html>