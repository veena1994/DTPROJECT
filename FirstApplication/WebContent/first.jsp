<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
body{ 
	margin-left:80px; 
background: url ('E:\eclipse workspace\FirstWebApp\WebContent\first.gif');
    background-color: grey;
     } 
</style>
<body>
<h1>Welcome to this page</h1>
<hr/>
<form action="FirstServelet" method="post">
NAME &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" size="20"><br>
PHONE&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value=" " size="20"><br>
SEX &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" value="M">MALE &nbsp;  &nbsp;<input type="radio" name="sex" value="F">Female<br>
EMail&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value=" " size="20"><br>
PASSWORD<input type="password" name="password" size="20"><br>
LANG&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" name="english" value="e">ENGLISH
&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" name="hindi" value="h">HINDI
&nbsp; &nbsp;&nbsp; &nbsp;<input type="checkbox" name="telugu" value="t">TELUGU<br>
ADDRESS&nbsp;<input type="text" value="  " size="20"><br>
DOB&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<select name="DD"><option value="1">01</option><option value="31">31</option>
</select>
<select name="yyyy"><option value="1994">1994</option><option value="2016">2016</option>
</select>
<select name="MM"><option value="January">January</option><option value="December">December</option>
</select><br>
<input type="submit" value="send"> &nbsp;
<input type="reset" value="clear">
</form>

</body>
</html>