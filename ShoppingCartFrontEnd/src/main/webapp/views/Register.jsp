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
	margin-left:400px; 
background: url ('E:\eclipse workspace\FirstWebApp\WebContent\first.gif');
    background-color: orange;
     } 
</style>
<form action="Success.jsp" method="post">
<b>REGISTER</b><br>
First Name:<input type="text" name="name"><br>
Last Name:<input type="text" name="lastname"><br>
Password:<input type="password" name="name"><br>
Gender:<input type="radio" name="sex" value="male">Male
    <input type="radio" name="sex" value="female">Female<br>
Address:<input type="text" name="address"><br>
<input type="submit" name="submit" value="Submit" />
<input type="reset" name="reset"  value="Reset" />

</form>

</body>
</html>