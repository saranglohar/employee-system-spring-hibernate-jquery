<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags"%>

<html >
<head>
    <meta charset="UTF-8">
    <title>Emplyoyee Web Project</title>    
    
    <link href="<c:url value="/resources/css/reset.css" />" rel="stylesheet">
    <link href="<c:url value="/resources/css/style.css" />" rel="stylesheet">  
    

    <link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Roboto:400,100,300,500,700,900'>
	<link rel='stylesheet prefetch' href='http://fonts.googleapis.com/css?family=Montserrat:400,700'>
	<link rel='stylesheet prefetch' href='https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css'>   
	
	 
</head>

<body>    
	
	  <div class="container">
 		 <div class="info">
   			 <h1>Employee Web Project</h1><br />
   			 <small>Employee Database System</small>
   		</div>
   	</div>

	<div class="form">
	  <div class="thumbnail"><img src="<c:url value="/resources/images/pawn.png" />"/></div>	  
	  <form class="register-form" action="register" method="post">
	    <input type="text" placeholder="User-name" name="username" required/>
	    <input type="password" placeholder="Password" name="password" required/>
	    <input type="email" placeholder="Email Address" name="email" required/>
	    <input type="text" placeholder="Mobile Number" maxlength="10" name="mobile" required/>
	     <input type="submit" class="button" value="Create" />
	    <p class="message">Already registered? <a href="#">Sign In</a></p>
	  </form>
	  
	  <form class="login-form" action="login" method="post">
	    <input type="text" placeholder="username" name="username" required autofocus/>
	    <input type="password" placeholder="password" name="password" required/>
	    <input type="submit" class="button" value="Login" />
	    <p class="message">Not registered? <a href="#">Create an account</a></p>	    
	  </form>
	</div>
  
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src="<c:url value="/resources/js/index.js" />"></script>
      
  </body>
</html>
