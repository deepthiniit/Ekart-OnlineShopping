<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<!-- Latest compiled and minified css -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jquery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- Latest compiled javascript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/3.3.7/css/font-awesome.min.css" rel="stylesheet"> 
<title>NewShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
	<a class="navbar-brand" href="#">Jaguar Online Bussiness...</a>
</div>


<ul class="nav navbar-nav">
<li class="active"><a href="index">Home</a></li>
<li><a href="contact"><i class="fa fa-address-book" aria-hidden="true"></i></a></li>
<li><a href="productList">ProductList</a></li>
<li><a href="adminpage">Admin</a></li>

<!-- <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin List</a></li>
<ul class="dropdown-menu">
<li><a href="${pageContext.request.contextPath }/admin/productlist">Product</a></li>
<li><a href="${pageContext.request.contextPath }/admin/supplierlist">Supplier</a></li>
<li><a href="${pageContext.request.contextPath }/admin/categorylist">Category</a></li>
<li><a href="${pageContext.request.contextPath }/admin/paymentList">Payment</a></li>
</ul> -->

<!-- <li><a href="goToregister">Register</a></li>
<li><a href="goToLogin">Sign In</a></li>  
</ul> -->

<li class="dropdown">
<a class="dropdown-toggle" data-toggle="dropdown" href="#">
Category Choice<span class="caret"></span></a>
<ul class="dropdown-menu">
<c:forEach var="catVal" items="${catList }">
<li><a href="productCustList-${catVal.cid}">${catVal.cname }</a></li>
</c:forEach>
</ul>
</li>
</ul>

<ul class="nav navbar-nav navbar right">

<c:if test="${pageContext.request.userPrincipal.name==null }">
<li><a href="${pageContext.request.contextPath }/goToRegister">Register</a></li>
<li><a href="${pageContext.request.contextPath }/goToLogin">Login</a></li>
</c:if>
<c:if test="${pageContext.request.userPrincipal.name!=null }">
<li><a> Welcome:${pageContext.request.userPrincipal.name}</a></li>
<li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>
</c:if>
<li><a href="cartList"><img src="resources/images/images22.jpg" width="15%"></a>
</ul>
</div>

</nav>
</body>
</html>