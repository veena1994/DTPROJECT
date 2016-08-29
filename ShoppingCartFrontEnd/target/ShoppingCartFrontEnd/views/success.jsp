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
<title>Insert title here</title>
</head>
<style>
body{ 
	margin-left:400px; 
background: url ('E:\eclipse workspace\FirstWebApp\WebContent\first.gif');
    background-color: orange;
     } 
</style>
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
<body>

<div class="container">
  <h2>Hello......</h2>
  <p>THANKYOU USER :-)</p>                  
  <ul class="pager">
    <li><a href="Login.jsp">Previous</a></li><br>
    <li><a href="ourcollection.jsp">Next</a></li>
  </ul>
</div>

</body>

</body>
</html>