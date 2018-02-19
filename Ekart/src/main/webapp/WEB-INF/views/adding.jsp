<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>NewShop</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath }resources/nav.css">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>
<div class="container"><br>
<div class="page-header">

<div class="row">
<div class="col-md-6">
<div class="panel with-nav-tabs panel-primary">
	<ul class="nav nav-tabs">
	<li class="active"><a href="#tab1" data-toggle="tab">Category</a>
	<li><a href="#tab2" data--toggle="tab">Supplier</a>
	<li><a href="#tab3" data-toggle="tab">Product</a>
	</ul>
</div>
<div class="panel-body">
<div class="tab-content">
<div class="tab-pane fade in active" id="tab1">
<form method="post" action="<c:url value="/admin/saveSupp"/>" class="form-signin">
<span id="reauth-email" class="reauth-email"></span>
<h4>CategoryId</h4>
<input class="form-control" type="number" name="cid" required/>
<h4 class="input-title">CategoryName</h4><br>
<input class="form-control" type="text" name="cname" required/>
<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>
</form>
</div>
<div class="tab-pane fade in active" id="tab2">
<form method="post" action="<c:url value="/admin/saveCat"/>" class="form-signin">
<span id="reauth-email" class="reauth-email"></span>
<h4>SupplierId</h4>
<input class="form-control" type="number" name="sid" required/>
<h4 class="input-title">SupplierName</h4><br>
<input class="form-control" type="text" name="sname" required/>
<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>
</form>
</div>
<div class="tab-pane fade in active" id="tab3">
<form method="post" action="<c:url value="/admin/saveProduct"/>" class="form-signin" enctype="multipart/form-data">
<span id="reauth-email" class="reauth-email"></span>
<h4>ProductName</h4><br>
<input class="form-control" type="text" name="pName" required/>
<h4>ProductDescription</h4><br>
<input class="form-control" type="text" name="pDescription" required/>
<h4>ProductPrice</h4><br>
<input class="form-control" type="text" name="pPrice" required/>
<h4>ProductStock</h4><br>
<input class="form-control" type="text" name="pStock" required/>

<div class="form-group">
<table>
<tr>
	<td>Select Supplier</td>
	<td>
	<select class="form-control" name="pSupplier" required>
	<option>------Select Supplier</option>
	<c:forEach items="${satList}" var="sat">
	<option value="${sat.sid}">sat.SupplierName</option>
	</c:forEach>
	</select>
</table>
</div>
<div class="form-group">
<table>
<tr>
	<td>Select Category</td>
	<td>
	<select class="form-control" name="pCategory" required>
	<option>------Select Category</option>
	<c:forEach items="${catList}" var="cat">
	<option value="${cat.cid}">cat.cname</option>
	</c:forEach>
	</select>
</table>
</div>
	<div class="fileinput fileinput-new" data-provide="fileinput">
	<td>Product Image</td>
	<td><input class="form-control" type="file" accept="image/*"></td><!-- browser & upload -->
	</div>
<br><br>
<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>
</form>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</head>
<body>
</body>

</html>