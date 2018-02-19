<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container">
  <h2>product in the the showroom...</h2>
  <br>
  
<div class="row">
<c:if test="${!empty prodcatlist}">
<c:forEach items="${prodcatlist}" var="pd">
 <div class="col-md-4">
      <div class="thumbnail">
        <a href="" >
          <img src="resources/images/${pd.pid}.jpg" alt="Lights" style="width:50%">
          </a>
           <a href="checkout"><button type="button">Buy Now</button> </a>
           <a href="cartItems-${pd.pid}"><button type="button">Add To Cart</button> </a>
          <!-- <li class="active"><a href="payment">BUY Now</a> -->
          <div class="">
            <p></p>
            <p></p>
            
          </div>
        
      </div>
    </div>
</c:forEach>
</c:if>

<c:if test="${empty prodcatlist}">
<h1>No products available under this category</h1>
</c:if>
</div>
</div>
</body>
</html>