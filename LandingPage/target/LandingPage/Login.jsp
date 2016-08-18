<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<style>
body{ 
	margin-left:80px; 
background: url ('E:\eclipse workspace\FirstWebApp\WebContent\first.gif');
    background-color: grey;
     } 
</style>

&nbsp;&nbsp;&nbsp;<b>LOGIN</b>
<form action="success.jsp"  method="post">
  First name:<br>
  <input type="text" name="firstname">
  <br>
  Last name:<br>
  <input type="text" name="lastname">
  <br>
  Password:<br>
  <input type="password" name="password">
 <br>
  <input type="submit" value="submit" >&nbsp;&nbsp;&nbsp;<input type="reset" value="clear"><br>
  <a class='w3schools-logo' href='#'>Forgot<span class='dotcom'>Password</span></a>
  
</form>


</body>
</html>