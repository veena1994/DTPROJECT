<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

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
      
      </ul>
     
    </div>
  </div>
</nav>


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
<%-- <%@include file="Header.jsp" %> 
 --%> 
 <body background = "file:///C:\Users\veena1\Desktop\proj\accessories.jpg">

  </body>


<title>Shopping cart</title>
</head>
<body>

	
	<h1>Successfully Registered</h1>
	LOGIN WITH YOUR DETAILS
	<br> ${message}
	<c:url var="action" value="/isValidUser"></c:url>

	<form:form action="${action}" method="post">
		<table>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="name" required/></td>
			</tr>

			<tr>
				<td>Password:</td>
				<td><input type="password" name="password" required /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>

		</table>



	</form:form>
	


</body>
<div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:</p>  
  <tr>
			           <td align="center" width="100%"><b>Copyright �2016
								Chaitanya Jewellers.com.</b><br> <b>All Rights Reserved.</b><br>
							<b> If you have any Questions don't hesitate to contact us.</b><br>
							
							<p><b> contact us :</b>
        <a href="#"> <span class="glyphicon glyphicon-earphone"></span>+91-8897256086
        </a>
      </p><br>
							<b> Chaitanya India Private
								Ltd.Jayanagar,500032,Bangalor,India.</b></td>
					</tr>
			
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>

</html>