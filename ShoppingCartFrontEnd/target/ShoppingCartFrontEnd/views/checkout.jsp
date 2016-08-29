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
 <body background = "C:\Users\veena1\Desktop\proj\1.jpg">
 
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
    

      </ul>
    </div>
  </div>
</nav>
 
 
 
	<br>
	<h3>Your purchase order</h3>
	
	<form action="" id="id">
		<table class="tg">
			<tr>
				
				<th width="120">Product Name</th>
				<th width="120">Price</th>
				<th width="60">Quantity</th>
				
				<th width="60">Total</th>
				
			</tr>
			<c:forEach items="${cartList}" var="cart">
				<tr>
					
					<td>${cart.productName}</td>
					<td>${cart.price}</td>
					<td>${cart.quantity}</td>
				
					<td>${cart.total}</td>
					
                                      
                                    
				<td></td>
					
				</tr>
			</c:forEach>
		</table>
		  <h4><strong>Grand Total(in Rs.) </strong></h4>
                                    
                                    
       <h4><strong>${sum}</strong></h4>
		</form>
		
		
	<br>
	<br>
	<a href="logout2"><h4>PAY NOW AND ENTER SHIPPING DETAILS.
	</h4></a>
	
	<h5><ul>
	<a href=""><li> CREDIT CARD</li></a>
	<a href=""><li> DEBIT CARD</li></a>
	<a href=""><li> CASH ON DELIVERY</li></a>
	
	<br>
	
	
	<a href=""><li> CANCEL TRANSACTION</li></a>
	</ul>
	</h3>
	<div>
<a href="index.jsp"><li> LOG OUT</li></a>
 
 
 </div>
 
	<div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:<h3>CHAITANYA JEWELLERS</h3></p>  
  <form action="thankyou.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="thankyou.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
  

<p id="demo"></p>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>