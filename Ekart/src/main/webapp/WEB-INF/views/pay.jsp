<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="springForm"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <link href="https://maxcdn.bootstrapcdn.com/font-awesome/3.3.7/css/font-awesome.min.css" rel="stylesheet"> 
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>NewShop</title>
</head>
<body>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
	<div class="navbar-header">
	<a class="navbar-brand" href="#">Payment Details</a>
	</div>
<ul class="nav navbar-nav">
<li class="active"><a href="index">Home</a></li>
<li class="active"><a href="login">Save</a></li>
<li class="active"><a href="User">Cancel</a></li>
</ul>
</div>
</nav>	
<%-- <springForm:form action="paymentform" method="post" modelAttribute="obpymtjsp" />
  --%>
<div class="conatiner">
<h2>Pay Here......</h2>

            <springForm:form class="form" action="addpayment" method="post" modelAttribute="addtopymt" >
            <fieldset>
        <ol>
            <li class="form-group"> 
                <label class="form-control" for="name">Name</label>
                <springForm:input class="form-control" id="name" path="pymtname" name="name"  type="text" placeholder="First and last name" required="true" />
            </li>
            <li class="form-group">
                <label class="form-control" for=email>Email</label>
                <springForm:input class="form-control" id="email" path="pymtemail" name="email" type="email" placeholder="example@gmail.com" required="true" />
            </li>
            <li class="form-group">
                <label class="form-control" for="phone">Phone</label>
                <springForm:input class="form-control" id="phone" path="pymtphone" name="phone" type="tel/mob" placeholder="+91 enter 10 digits number" required="true" />
            </li>
        </ol>
    </fieldset>
    <fieldset>
        <legend>Delivery address</legend>
        <ol>
            <li class="form-group">
                <label class="form-control" for="address">Address</label>
                <springForm:input class="form-control" id="address" path="pymtdeliveryaddress" name="address" rows="5" required="true" />
                
            </li>
            <li class="form-group">
                <label class="form-control" for="postcode">Post Code</label>
                <springForm:input class="form-control" id="postcode" path="pymtpostcode" name="postcode" type="text" required="true"/>
            </li>
            <li class="form-group">
                <label class="form-control" for="country">Country</label>
                <springForm:input class="form-control" id="country" path="pymtcountry" name="country" type="text" required="true" />
            </li>
        </ol>
    </fieldset>
    <fieldset>
     <legend>Card Details</legend>
           <ol>
            <li class="form-group">
                <label class="form-control" for="cardnumber">Card Number</label>
                <springForm:input class="form-control" id="cardnumber" path="pymtcardnumber" name="cardnumber" type="text" placeholder="16xxxxx" required="true" />
            </li>
            <li class="form-group">
                <label class="form-control" for="secure">Security Code</label>
                <springForm:input class="form-control" id="secure" path="pymtsecuritycode" name="secure" type="number" required="true" />
            </li>
            <li class="form-group">
                <label class="form-control" for="namecard">Name on Card</label>
                <springForm:input class="form-control" id="namecard" path="pymtnameoncard" name="namecard" type="text" placeholder="Exact name as on the card" required="true" />
            </li>
        </ol>
    </fieldset><br>
    <br>
    <fieldset>
      <button class="btn btn-primary" type="submit">Pay</button>
        
    </fieldset>
    
</springForm:form></div>
</body>
</html>