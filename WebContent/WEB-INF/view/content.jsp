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

   
  <link href="<c:url value="/resources/css/dashboard.css" />" rel="stylesheet"> 
  <script src="<c:url value="/resources/js/dashboard.js" />"></script>
 
  				      			
  
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
</body>
</html>