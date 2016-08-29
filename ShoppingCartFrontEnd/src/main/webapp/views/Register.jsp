<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>register</title>
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
    
  </style>

<title>Register User</title>
</head>
<body>
<body background = "C:\Users\veena1\Desktop\proj\untitled.png">
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





	<h2>Please fill the details</h2>

	<form:form action="reg"  method="post">
		<table>
			<tr>
				<td>User ID:</td>
				<td><input type="text" name="id" required>
			
				</td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>User Name:</td>
				<td><input type="text" name="name"  required="true" title="name is required"></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type="text" name="password"  required></td>
			</tr>
			<tr>
			
			</tr>
			<tr>
				<td>Mobile No:</td>
				<td><input type="text" name="contactNumber"  required></td>
			</tr>
			
			<tr>
				<td>Email:</td>
				<td><input type="email" name="mailID"  required></td>
			</tr>
			<br>
			<tr>
				<td>Addres:</td>
				<td><input type="texta" width="20" height="10" name="address"  required></td>
			</tr>
			<tr>
			
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
  <p style="color: #c19a6b">Online Store Copyright</p>  
  <form class="form-inline" style="color: #c19a6b">Get deals:
    <input type="email" class="form-control" size="50" placeholder="Email Address">
    <button type="button" class="btn btn-danger" >Subscribe</button>
  </form>
</footer>
<div class="row"><div class="container-fluid"> <br></div></div>
<div class="row"><div class="container-fluid"> <br></div></div>

	

</body>
</html>