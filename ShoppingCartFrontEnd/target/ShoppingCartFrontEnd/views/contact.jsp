<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page session="false"%>
<link rel="stylesheet"  href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<html>
<body>
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
 <body background = "C:\Users\veena1\Desktop\proj\1-gram-gold-jewellery.png">


<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="index.jsp">CHAITANYA JEWELLARS</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="index.jsp">Home</a></li>
      </div>
      <ul class="nav navbar-nav navbar-right">
				
              <li><a href="register"><span class="glyphicon glyphicon-user"></span> REGISTER</a></li>
					<li><a href="login"><span 
					class="glyphicon glyphicon-log-in"></span> LOGIN</a></li>
					
</ul>
</nav>
<form:form action="contact" method="post">
				<div class="row">
		<label for="name">Your name:</label><br />
		<input id="name" class="input" name="name" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="email">Your email:</label><br />
		<input id="email" class="input" name="email" type="text" value="" size="30" /><br />
	</div>
	<div class="row">
		<label for="message">Your message:</label><br />
		<textarea id="message" class="input" name="message" rows="7" cols="30"></textarea><br />
	</div>
	<input id="submit_button" type="submit" value="Send email" />
 </form:form>
 
 <footer class="container-fluid bg-4 text-center">
<center><form class="form-inline"><b>SUBSCRIBE HERE:</b>
    <input type="email" class="form-control" size="30" placeholder="Email Address">
    <button type="button" class="btn btn-danger">GO</button></center>
  </form>                 <tr>
						<td align="center" width="100%"><b>Copyright ©2016
								Chaitanya Jewellers.com.</b><br> <b>All Rights Reserved.</b><br>
							<b> If you have any Questions don't hesitate to contact us.</b><br>
							
							<p><b> contact us :</b>
        <a href="#"> <span class="glyphicon glyphicon-earphone"></span>+91-8897256086
        </a>
      </p><br>
							<b> Chaitanya India Private
								Ltd.Jayanagar,500032,Bangalor,India.</b></td>
								<p> <a href="http://www.w3schools.com">www.Chaitanya.com</a></p> 
  
					</tr>
  
  
</footer>
 
</body>
</html>