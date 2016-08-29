<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>CHAITANYA</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
	  <style>
    
    .navbar {
      margin-bottom: 50px;
      border-radius: 10px;
      border-width:   5px;
      border-color: #cdae88;
      background-color: ;
      font-style: normal;
     	font-weight: 10;
      
      
    }
    
   
     .jumbotron {
      margin-bottom: 20px;
    }
   
   
 .footer.transparent.footer-inverse .footer {
    border-width: 0px;
    -webkit-box-shadow: 0px 0px;
    box-shadow: 0px 0px;
    background-color: rgba(0,0,0,0.0);
    background-image: -webkit-gradient(linear, 50.00% 0.00%, 50.00% 100.00%, color-stop( 0% , rgba(0,0,0,0.00)),color-stop( 100% , rgba(0,0,0,0.00)));
    background-image: -webkit-linear-gradient(270deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
    background-image: linear-gradient(180deg,rgba(0,0,0,0.00) 0%,rgba(0,0,0,0.00) 100%);
}
   table {
    font-family: arial, sans-serif;
    border-collapse: collapse;
    width: 100%;
}

td, th {
    border: 1px solid #dddddd;
    text-align: left;
    padding: 8px;
}

tr:nth-child(even) {
    background-color: #dddddd;
} 
  </style>


</head>
<body>
<body background = "C:\Users\veena1\Desktop\proj\Gold-Jewellery.jpg">
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
 
 





<h4>Please enter your Shipping details </h4> <br><br>

<form:form action="ship"  method="post">
		<table>
			<tr>
				<td>name</td>
				<td><input type="text" name="name" required>
			
				</td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>contact number</td>
				<td><input type="text" name="contact" required></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>address line 1</td>
				<td><input type="text" name="ad1" required></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>address line 2</td>
				<td><input type="text" name="ad2" required></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="mail" required></td>
			</tr>
			<br>
			<tr>
				<td>city</td>
				<td><input type="text" width="20" height="10" name="city" required></td>
			</tr>
			
			<tr>
				<td>state</td>
				<td><input type="text" width="20" height="10" name="state" required></td>
			</tr>
			<tr>
				<td>zip code</td>
				<td><input type="text" width="20" height="10" name="zip" required></td>
			</tr>
			
			

			<tr>
				<td><input type="submit" value="Register">
				</td></br>
				<td><input type="reset" value="Reset">
				</td>
				<br>
			</tr>
			
		</table>

	</form:form>  
<div class="footer transparent footer-inverse">
<footer class="container-fluid text-center">
  <p style="color: #c19a6b">Online Store Copyright:</p>  
  <form action="success2.jsp" class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="100" placeholder=" Enter you Email Address">
    <a href="register.jsp" style="color: #000000 "><h3>REGISTER WITH US TODAY!!</h3></a>
       
    
  </form>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>
</body>
</html>