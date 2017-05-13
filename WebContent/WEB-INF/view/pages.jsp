<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Employee Web Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
  <script src="http://bootboxjs.com/bootbox.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> 
  <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.9.1/jquery.tablesorter.min.js"></script>
  
  <link id="dash-red" href="<c:url value="/resources/css/dashboardred.css" />" rel="stylesheet"> 
  <link id="dash-blue" href="<c:url value="/resources/css/dashboardblue.css" />" rel="stylesheet">
  <link id="dash-green" href="<c:url value="/resources/css/dashboardgreen.css" />" rel="stylesheet">
  <link id="dash-black" href="<c:url value="/resources/css/dashboardblack.css" />" rel="stylesheet">
  <script src="<c:url value="/resources/js/dashboard.js" />"></script>
  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      height:80vh;
      margin:0px;
  }
  </style>
</head>

<body>
	<div class="jumbotron header">
		<div class="logo">		
			<div class="admin">Admin User ${username}</div>
			<div class="login">Profile | <a href="logout" style="color: #DADADA;">Logout</a></div>
		</div>	
		<div class="vertical_line"></div>	
		<ul>
			<li><a href="mainboard">Dashboard</a></li>   <li><a href="page">pages</a></li>   <li><a href="content">Contents</a></li>	  <li><a href="mainboard">Email Compaigns</a></li>  <li><a href="mainboard">Design</a></li> <li><a href="mainboard">Adminstration</a></li>
		</ul>			
        <h2>Employee Web Project</h2>
    </div>
	<div class="container">
	  <br>
	  <div id="myCarousel" class="carousel slide" data-ride="carousel">
	    <!-- Indicators -->
	    <ol class="carousel-indicators">
	      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	      <li data-target="#myCarousel" data-slide-to="1"></li>
	      <li data-target="#myCarousel" data-slide-to="2"></li>
	      <li data-target="#myCarousel" data-slide-to="3"></li>
	    </ol>	
	    <!-- Wrapper for slides -->
	    <div class="carousel-inner" role="listbox">
	      <div class="item active">
	        <img src="<c:url value="/resources/images/dash.png" />" alt="Chania" width="460" height="345">
	      </div>
	
	      <div class="item">
	        <img src="<c:url value="/resources/images/login.png" />" alt="Chania" width="460" height="345">
	      </div>
	    
	      <div class="item">
	        <img src="<c:url value="/resources/images/dash.png" />" alt="Flower" width="460" height="345">
	      </div>
	
	      <div class="item">
	        <img ssrc="<c:url value="/resources/images/login.png" />" alt="Flower" width="460" height="345">
	      </div>
	    </div>
	
	    <!-- Left and right controls -->
	    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
	      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
	      <span class="sr-only">Previous</span>
	    </a>
	    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
	      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	      <span class="sr-only">Next</span>
	    </a>
	  </div>
	</div>

</body>
</html>
