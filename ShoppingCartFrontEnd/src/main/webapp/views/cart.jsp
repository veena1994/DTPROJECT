<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">CHAITANYA JEWELLERY</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">HOME</a></li>
      <li><a href="register.jsp">REGISTER</a></li> 
       <li><a href="contact.html">CONTACT US</a></li> 
  <ul class="nav navbar-nav navbar-right">
        <li><a href="login.jsp" style="color: #c19a6b;"><span class="glyphicon glyphicon-user" class="text-danger"></span>Login</a></li>
        <li><a href="shoppingcart.html" style="color: #c19a6b;"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
      </ul>
    </div>
  </div>
</nav>
    </ul>
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
				<th width="60">Status</th>
				<th width="60">Total</th>
				<th width="60">UserID</th>
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					<td>${cart.id}</td>
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
					<td>${cart.status}</td>
					<td>${cart.total}</td>
					<td>${cart.userID}</td>
					<td><a href="<c:url value='cart/edit/${cart.id}' />">Edit</a></td>
					<td><a href="<c:url value='cart/remove/${cart.id}' />">Delete</a></td>
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
	
<footer class="art-footer clearfix">
<div class="art-nostyle">
<div class="custom"  >
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:<h3>CHAITANYA JEWELLERS</h3></p>  
  <form action="success.jsp" class="form-inline" style="color: #c19a6b">SUBSCRIBE WITH US:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
<td align="center" width="100%"><b>Copyright © 2003-2016 Chaitanya Jewellers.com.</b><br>
 <b>All Rights Reserved.</b><br>
 <b> If you have any Questions don't hesitate to contact us.</b><br>
<b> Chaitanya India Private Ltd.Jayanagar,680020,Bangalor,India.</b>
 </td>

</tr>
</tbody>
</table></div>



</footer>

</body>
</html>