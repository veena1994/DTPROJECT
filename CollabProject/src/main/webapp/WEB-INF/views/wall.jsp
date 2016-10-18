<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@include file="header.jsp"%>
    <%@page import="com.collab.model.User" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="1222.jpg">
<div class="collapse navbar-collapse navbar-right navbar-main-collapse">
                <ul class="nav navbar-nav">
                    
                    <!-- Hidden li included to remove active class from about link when scrolled up past about section -->
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                    
                    
                   
                <li><a href="<c:url value="/forum" />">FORUM</a></li>
				<li><a href="<c:url value="/blog" />">BLOG</a></li>
				<li><a href="<c:url value="/chatPage" />">CHAT</a></li>
				<%--  <li><a href="<c:url value="/wall" />">WALL</a></li>  --%>
                <li>
                <a href="home1">
          <span class="glyphicon glyphicon-log-out">LOGOUT</span>
        </a></li>
                
                </ul>
                </div>
             
           
             
             

                    
                    <li>
                        <a href="home" data-toggle="tooltip" data-placement="left" title="GO TO HOME!"><span class="glyphicon glyphicon-home"></span></a>
                    </li>
                </ul>
</div>

<br><br><br><br><br><br><br>

	<%User user=(User)request.getAttribute("user"); %>

<div class="section" >
      <div class="container" align="center">
        <div class="row" align="center">
          <div class="col-md-3">
           <div class="span3">
		<img src="<c:url value="/resources/img/${user.userId}.jpg" /> " alt="image" class="center-block img-square img-responsive"/>
	</div>
	</div>

<!-- 		<div> -->
<%--             <h3 class="text-center"><%=user.getUsername()%></h3> --%>
<%--             <p class="text-center"><%=user.getAdress()%></p> --%>
          
<!--           <div class="col-md-8"> -->
			<div class="col-md-5">
          <div class="span3">
            <ul class="list-group">
              <li style="font-size: 20px; color:purple;" class="list-group-item">USER: <%=user.getUsername()%></li>
               <li style="font-size: 20px; color:purple;" class="list-group-item">Email: <%=user.getEmail()%></li>
                <li style="font-size: 20px; color:purple;" class="list-group-item">ADRESS: <%=user.getAdress()%></li>
            </ul>
          </div>
        
      </div>
    </div>
    </div>
    </div>
    <!-- Footer -->
    <footer>
        <div class="container text-center">
            <p>Copyright &copy; COLLABORATIVE 2016</p>
      
         <section id="contact" class="container content-section text-center">
        <div class="row">
            <div class="col-lg-8 col-lg-offset-2">
            <ul class="list-inline banner-social-buttons">
                    <li>
                        <a href="https://twitter.com/NIITMTS" class="btn btn-default btn-lg"><i class="fa fa-twitter fa-fw"></i> <span class="network-name">Twitter</span></a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/niitels" class="btn btn-default btn-lg"><i class="fa fa-facebook fa-fw"></i> <span class="network-name">facebook</span></a>
                    </li>
                    <li>
                        <a href="https://www.linkedin.com/company/1029832" class="btn btn-default btn-lg"><i class="fa fa-linkedin fa-fw"></i> <span class="network-name">LinkedIn</span></a>
                    </li>
                </ul>
            </div>
        </div>
    </section>
    </div>
    </footer>
</body>
</html>