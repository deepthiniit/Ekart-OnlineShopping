<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
    
    <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
  <title>EKART</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<%@ include file="header.jsp"%>

<body>
 
 

<div class="container">
<h2>   EKART EASE SHOPPING    </h2>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">

      <div class="item active">
        <img src="resources/images/download.jpg" alt="Bangalore" style="width:100%;">
        <div class="carousel-caption">
       <h3>cloth shopping</h3>
        </div>
      </div>
      
       <div class="item">
      <img src="resources/images/download1.jpg" alt="RAMANAGARA" style="width:100%;">
        <div class="carousel-caption">
        <h3>Accessories</h3>
        </div>
      </div>
      
      
       <div class="item">
      <img src="resources/images/download2.jpg" alt="MYSORE" style="width:100%;">
        <div class="carousel-caption">
        <h3>Electronic Gadgets</h3>
          </div>
      </div>

      <div class="item">
      <img src="resources/images/download3.jpg" alt="Chennai" style="width:100%;">
        <div class="carousel-caption">
        <h3>Home Decor</h3>
        </div>
      </div>
    
      <div class="item">
      <img src="resources/images/download4.jpg" alt="Chennai" style="width:100%;">
         <div class="carousel-caption">
          <h3>Gardening</h3>
        </div>
      </div>
  
       <div class="item">
       <img src="resources/images/download5.jpg" alt="hyderabad" style="width:100%;">
         <div class="carousel-caption">
         <h3>Grocessories</h3>
        </div>
      </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
</div>



<div class="container">
  <h2>product in the the shopping list...</h2>
  <br>
  
<div class="row">
<c:forEach items="${Listofproduct}" var="pd">
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
</div>
</div>
</body>
 <%@ include file="footer.jsp" %>
</html>