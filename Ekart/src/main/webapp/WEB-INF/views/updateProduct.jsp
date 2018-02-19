<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>NewShop</title>
</head>
<body>

<div class="container">
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<!-- <c:url value="/productUpdate" var="pru"></c:url> -->
<form method="post" action="productUpdate" class="form-signin" enctype="multipart/form-data">
	<span id="reauth-email" class="reauth-email"></span>
	
	<input type="hidden" name="pid" value="${prod.pid }">
	
	<h4 class="input-tilte">Product Name</h4><br>
	<input value="${prod.pname }" type="text" name="pName" required/><br>
	<h4 class="input-tilte">Product Description</h4><br>
	<input value="${prod.description }" type="text" name="pDescription" required/><br>
	<h4 class="input-tilte">Product Price</h4><br>
	<input value="${prod.price }" type="number" name="pPrice" required/><br>
	<h4 class="input-tilte">Product Stock</h4><br>
	<input value="${prod.stock }" type="number" name="pStock" required/><br>
	
	<div class="form-group">
	<table>
	<tr>
		<td>Select Supplier</td>
		<td>
		<select class="form-control" name="pSupplier" required>
			<option value="">-----select Supplier----</option>
			<c:forEach items="${sList }" var="sat">
				<option value="${sat.sid }">${sat.supplierName }</option>
			</c:forEach>
	</select>
	</td>
	</tr>
</table>
</div>
<div class="form-group">
	<table>
	<tr>
		<td>Select Category</td>
		<td>
		<select class="form-control" name="pCategory" required>
			<option value="">-----select Category----</option>
			<c:forEach items="${cList }" var="cat">
				<option value="${cat.cid }">${cat.cname }</option>
			</c:forEach>
	</select>
	</td>
	</tr>
</table>
</div>
	<div class="fileinput fileinput-new" data-provides="fileinput">
	
	<td>Product Image</td>
	<td><input class="form-control" type="file" name="file" accept="image/*"></td><!-- browser & upload -->
	
		</div>


<br><br>
<button class="btn btn-lg btn-primary" type="submit">Save</button>
<button class="btn btn-lg btn-warning" type="reset">Cancel</button>

</form>





</div>

</body>
</html>