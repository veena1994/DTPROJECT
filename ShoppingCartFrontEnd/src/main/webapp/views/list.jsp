<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Cart</title>
<style type="text/css">


.tg {
	border-collapse: collapse;
	border-spacing: 0;
	border-color: #ccc;
}

.tg td {
	font-family: Arial, sans-serif;
	font-size: 14px;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #fff;
}

.tg th {
	font-family: Arial, sans-serif;
	font-size: 14px;
	font-weight: normal;
	padding: 10px 5px;
	border-style: solid;
	border-width: 1px;
	overflow: hidden;
	word-break: normal;
	border-color: #ccc;
	color: #333;
	background-color: #f0f0f0;
}

.tg .tg-4eph {
	background-color: #f9f9f9
}
#bg {
  position: fixed; 
  top: -50%; 
  left: -50%; 
  width: 200%; 
  height: 200%;
}
#bg img {
  position: absolute; 
  top: 0; 
  left: 0; 
  right: 0; 
  bottom: 0; 
  margin: auto; 
  min-width: 50%;
  min-height: 50%;
}
</style>
</head>
<%-- <%@include file="Header.jsp" %> 
 --%> 
 <body background = "C:\Users\veena1\Desktop\proj\bad.jpg">
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="NewFile.html" style="color: #c19a6b " >THE JEWELLERY STORE</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="index.jsp" style="color:#c19a6b " >HOME</p></a></li>
        <li><a href="register.jsp" style="color: #c19a6b ">REGISTER WIITH US!</p></a></li>
        
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp" style="color: #c19a6b;"><span class="glyphicon glyphicon-user" class="text-danger"></span>Login</a></li>
        <li><a href="cart" style="color: #c19a6b;"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      </ul>
    </div>
  </div>
</nav>



 
 
 </div>	<br>
	<h3>Cart List</h3>
	<c:if test="${!empty cartList}">
		<table class="tg">
			<tr>
				<th width="80">Cart ID</th>
				<th width="120">Product Name</th>
				<th width="120">Price</th>
				<th width="60">Quantity</th>
				
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					<td>${cart.id}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
					
					<td><a href="<c:url value='cart/edit/${cart.id}' />"></a></td>
					<td><a href="<c:url value='cart/remove/${cart.id}' />"></a></td>
				</tr>
			</c:forEach>
		</table>
	</c:if>
	<a href="onLoad3"><h4 tyle="color: #c19a6b ">CONTINUE SHOPPING.
	</h4></a>
	
	
	<br>
	<br>
	<a href="checkout"><h4 tyle="color: #c19a6b ">CHECK OUT AND PAY.
	</h4></a>
	<div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:<h3>CHAITANYA JEWELLERS</h3></p>  
  <form action="success2.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="register.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>