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

h3>Please login with your credentials</h3>  <br>

	${message}
	<form:form action="isValidUser" method="post">
		<table>
			<tr>
				<td><h4>User Name:</h4></td>
				<td><input type="text" name="name"></td>
			</tr>

			<tr>
				<td><h4>Password:</h4></td>
				<td><input type="password" name="password" /></td>
			</tr>
			<tr>
				<td><input type="submit" value="Login"></td>
			</tr>

		</table>



	</form:form>


</body>
</html>