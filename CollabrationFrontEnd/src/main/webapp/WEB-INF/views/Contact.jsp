<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE HTML>

<html>
	<head>
		<title>Eventually by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="<c:url value="/resources/assets1/css/main.css"/>"/>
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<!-- Header -->
			<header id="header">
				<center><h1>CONTACT US</h1></center>
				
			</header>

		<!-- Signup Form -->
			<form id="signup-form" method="post" action="#">
			
				<input type="text" name="xyz" id="xyz" placeholder="Name" /><br>
				<input type="email" name="email" id="email" placeholder="Email Address" /><br>
				<input type="textarea"  rows="5" name="area" id="area" placeholder="Enter Message" /><br>
				<input type="submit" value="submit" />
				
			</form>

		<!-- Footer -->
		
			<footer id="footer">
					<center><ul class="icons">
						<li><a href="#" class="icon alt fa-twitter"><span class="label">Twitter</span></a></li>
						<li><a href="#" class="icon alt fa-facebook"><span class="label">Facebook</span></a></li>
						<li><a href="#" class="icon alt fa-linkedin"><span class="label">LinkedIn</span></a></li>
						<li><a href="#" class="icon alt fa-instagram"><span class="label">Instagram</span></a></li>
						<li><a href="#" class="icon alt fa-github"><span class="label">GitHub</span></a></li>
						<li><a href="#" class="icon alt fa-envelope"><span class="label">Email</span></a></li>
					</ul></center>
					<ul class="copyright">
					<center>
						<li>&copy;2016 All Rights Reserved. </li><li>WebSite:<a href="http://html5up.net">www.Collaboration.com
						 </a></li></center>
					</ul>
				</footer>
		<!-- Scripts -->
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="<c:url value="/resources/assets1/js/main.js"/>"></script>

	</body>
</html>