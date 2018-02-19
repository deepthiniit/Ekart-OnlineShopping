
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=width-device,initial-scale=1">
<meta charset="utf-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>NewShop</title>
</head>
<body>
<jsp:include page="/WEB-INF/views/header.jsp"></jsp:include>

<div class="container">
<h2>Supplier List for Admin</h2>

<table class="table table-hover" id="ap1" class="display" border="2" width="80" align="center">
<tr>
<th>Sl No</th>
<th>SID</th>
<th>Supplier Name</th>
<th class="span2">Action</th>
</tr>

<c:if test="${empty satList }">
<tr>
<td colspan="10" align="center">No Record Exists</td>
</tr>
</c:if>

<c:forEach var="p" varstatus="st" items="${satList }">
<tr>

<td><c:out value="${st.count }"></c:out></td>
<td><c:out value="${p.sid }"></c:out></td>
<td><c:out value="${p.supplierName }"></c:out></td>
<td class="span4">
<c:set var="contextRoot" value="${pageContext.request.contextPath }"></c:set>
<a class="btn btn-info" role="button" href="${contextRoot }/admin/Edit">Edit</a>
<a class="btn btn-danger" role="button" href="${contextRoot }/admin/Delete">Delete</a>
</td>
</tr>
</c:forEach>

</table>
</div>

</body>
</html>