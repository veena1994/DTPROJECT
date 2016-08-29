<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<link rel="stylesheet"	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">CHAITANYA JEWELLARS</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      <ul class="nav navbar-nav navbar-right">
				
              <li><a href="register"><span class="glyphicon glyphicon-user"></span> REGISTER</a></li>
					<li><a href="login"><span 
					class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
					
</ul>
      
  </div>
</nav>

</body>
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Throttle inc</title>
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
 <body background = "C:\Users\veena1\Desktop\proj\accessories.jpg">

<form:form action="mychaitanya"  method="post">

<div class="container">
<center><h2><b>ABOUT MY CHAITANYA JEWELLERS</b></h2></center>  
  
  <p class="bg-primary">we provide new jewellery to our costumers</p>
  <p class="bg-success">Unique jewellery is our speciality.</p>
  <p class="bg-info">Our branches is available all over india.</p>
  <p class="bg-warning">customer is first person we serve.</p>
  <p class="bg-danger">All type of jewellars are available here.</p>
</div>

<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Where To Find CHAITANYA ?</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      <img src="C:\Users\veena1\Desktop\proj\45.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      <img src="C:\Users\veena1\Desktop\proj\73.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
      <img src="C:\Users\veena1\Desktop\proj\2.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
  </div>
</div>

</form:form>
<footer class="art-footer clearfix">
<div class="art-nostyle">
<div class="custom"  >
	<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tbody>
<tr>
<td align="center" width="100%"><b>Copyright © 2003-2016 Chaitanya Jewellers.com.</b><br>
 <b>All Rights Reserved.</b><br>
 <b> If you have any Questions don't hesitate to contact us.</b><br>
<b> Chaitanya India Private Ltd.Jayanagar,680020,Bangalor,India.</b>
 </td>

<td align="right" width="50%">
</tr>
</tbody>
</table></div>



</footer>


</body>
</html>
