<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>  </title>
<style type="text/css">


.tg {
  border-collapse: collapse;
  border-spacing: 0;
  border-color: #ccc;
}

.tg td {
 font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
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
  font-family: "Copperplate","Copperplate Gothic Light",fantasy;
      font-size: 15px;
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
 <body background = "C:\Users\veena1\Desktop\proj\Beautiful.jpg">

 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">CHAITANYA JEWELLERS</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="index.jsp">Home</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown" href="#">CHAITANYA <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">ABOUT</a></li>
            <li><a href="#">COLLECTION</a></li>
            <li><a href="#">SERVICES</a></li>
            <li><a href="#">OUR TEAM</a></li>
          </ul>
        </li>
        <li><a href="#">CONTACT</a></li>
        <li><a href="#">LOCATE US</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
        <li><a href="Register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
       <p>
    <button type="button" class="btn btn-info">
      <span class="glyphicon glyphicon-search"></span> Search
    </button>
  </p>

      </ul>
    </div>
  </div>
</nav>
 
 
 
 
<h3>CART LIST</h3>
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
				<th width="60">Edit</th>
				<th width="60">Delete</th>
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
  
  <div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style = "font-family: Copperplate,Copperplate Gothic Light,fantasy;font-size: 15px">Chaitanya Copyright ©2016</p>  
  <p style="color: #c19a6b">Online Store Copyright:</p>  
  <form action="success2.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="register.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
	
	</body>