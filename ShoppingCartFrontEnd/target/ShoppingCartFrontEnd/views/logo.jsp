<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="http://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  .bg-2 { 
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 { 
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 { 
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">CHAITANYA</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="#">WHO</a></li>
        <li><a href="#">WHAT</a></li>
        <li><a href="#">WHERE</a></li>
      </ul>
    </div>
  </div>
</nav>
<form:form action="logo"  method="post">
<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin">..CHAITANYA..</h3>
  <img src="C:\Users\veena1\Desktop\proj\photo.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350">
  <h3>World Largest Jewellers.</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">CHAITANYA JEWELLERS ?</h3>
  <p>The group derives its origins from textile retailing and wholesaling and has experience of over 100 years in the trade. Chaitanya branched out into the field of jewellery retailing in the year 1998 by opening its first store in Thrissur.

The reason behind the Chaitanya group's foray into business itself is quite unique and makes it interesting to read. The ancestors of the current management come from a pious background that comprised of priests, saints and advisor to kings. Hailing from the Tanjavur district of Tamilnadu, these ancestors had migrated to Kerala.

The decision to start business was taken in response to the call of one of the senior relatives of the clan, who was a Dewan to the Maharaja of Kochi, who believed 'Enterprise and business was necessary to create job opportunities and to make India self dependent'. He also belived that 'business should be fair with a social objective and not just for self motives'. The group still adheres to the founding principles of its forefathers and this explains the group's firm grounding in fair business practices and ethics. 
 </p>
  <a href="#" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Search
  </a>
</div>



<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Where To Find CHAITANYA ?</h3><br>
  <div class="row">
    <div class="col-sm-4">
      <p>My husband gave me a necklace.  It's fake.  I requested fake.  Maybe I'm paranoid, but in this day and age, I don't want something around my neck that's worth more than my head.  </p>
      <img src="C:\Users\veena1\Desktop\proj\45.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>As though pure white snow flashed and sparkled with the color of bright ruddy wine, and was overcome by this radiance.</p>
      <img src="C:\Users\veena1\Desktop\proj\73.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
    <div class="col-sm-4"> 
      <p>I really think that American gentlemen are the best after all, because kissing your hand may make you feel very very good but a diamond and a sapphire bracelet lasts forever.</p>
      <img src="C:\Users\veena1\Desktop\proj\2.jpg" class="img-responsive margin" style="width:100%" alt="Image">
    </div>
  </div>
</div>
</form:form>

<!-- Footer -->
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