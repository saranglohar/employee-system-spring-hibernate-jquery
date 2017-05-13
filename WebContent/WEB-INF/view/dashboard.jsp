<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>

  <title>Employee Web Project</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons"> 
  
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
 
  				      			
  
</head>
<body>
	<div class="jumbotron header">
		<div class="logo">		
			<div class="admin"><center><i class="glyphicon glyphicon-cog" style="font-size:50px"></i><div>${username}</div></center></div>
			<div class="login">Profile | <a href="logout" style="color: #DADADA;">Logout</a></div>
		</div>	
		<div class="vertical_line"></div>	
		<ul>
			<li><a href="mainboard">Dashboard</a></li>   <li><a href="page">pages</a></li>   <li><a href="content">Contents</a></li><li><a href="mainboard">Email Compaigns</a></li>  <li><a href="mainboard">Design</a></li> <li><a href="mainboard">Adminstration</a></li>
		</ul>			
        <h2>Employee Web Project</h2>
    </div>
	<div class="panel panel-default main-panel">
		 <div class="panel-body p-body">		 
			<button type="button" id="createButton" class="btn btn-default create"  data-toggle="modal" data-target="#myModal">
					<span class="glyphicon glyphicon-plus"></span>
					<b>Create New Record</b>
			</button>			
			<button type="button" id="deleteButton" class="btn btn-default  delete">Delete</button>	
			
			<div class="box">
				<div id="redButton" class="boxes" style="background-color:#F78888;"></div>	
				<div id="blueButton" Button" class="boxes" style="background-color:#0080ff;"></div>
				<div id="greenButton" class="boxes" style="background-color:#A7FFA7;"></div>	
				<div id="blackButton" class="boxes" style="background-color:#737373;"></div>
			</div>
			
									   
			<input type="text" class="form-control search" id="searchInput" placeholder="Search...." autofocus/>
		 </div>
	</div>
	<div class="back-panel">
	<div class="scrollbar" id="style-1">		
			<c:if  test="${!empty employeeList}">
				<table class="table table-hover tablesorter main-table" id="employeetable" >
					<thead>
				      <tr class="table-header">
				      	<th style="padding-left: 8px;">
				      		
				      		<input type="checkbox" class="check-icon-size" id="selectall" >
				      	</th>			      	
				        <th>Employee ID</th>
				        <th>Employee Name</th>	
				         <th>Employee Job</th>	  
				        <th>Employee Join_Date</th>
				        <th>Employee Mobile_No</th>
				        <th>Department-ID</th>
				        <th>Employee Location</th>
				       	<th></th>
				       	<th></th>				     
				      </tr>
			     	 </thead>
			      <tbody id="tbody">
					<c:forEach items="${employeeList}" var="emp">
					    <tr>
					    	<th><input type="checkbox" class="check-icon-size" id="checkbox"></th>
					        <td>${emp.employee_number}</td>
					        <td>${emp.employee_name} </td>
					        <td>${emp.employee_job}</td>
					        <td>${emp.employee_joindate}</td>
					        <td>${emp.employee_mobile}</td>
					        <td>${emp.employee_dno}</td>
					        <td>Pune</td>
					        <td><span id="update" class="glyphicon glyphicon-pencil update-delete"></span></td>
					        <td><span id="delete" class="glyphicon glyphicon-trash update-delete"></span></td>
					     </tr>
					</c:forEach>
					</tbody>
				</table>		
			</c:if>			
		
		</div>
		<div class="profile">
			
		</div>	
	</div>
	<div class="modal fade" id="myModal">                     <!--      Modal -->
			    <div class="modal-dialog" style="margin-top: 150px;">
				    
			      <!-- Modal content-->
			       <div class="modal-content">
			        <div class="modal-header">
				         <button type="button" class="close" data-dismiss="modal">&times;</button>
				         <h4 class="modal-title">Create New Employee Record</h4>
				    </div>
				         <div class="modal-body" id="modal_body">
				       <form>
						     <div class="form-group">
						      <label for="Employee No">Employee No:</label>
						      <input type="text" class="form-control input-box" id="empno" autofocus placeholder="Enter Employee Number">
						    </div>
						    
						    <div class="form-group">
						      <label >Employee Name:</label>
						      <input type="text" class="form-control input-box" id="ename" placeholder="Enter Employee Name">
						    </div>
						    
						    <div class="form-group">
						      <label >Employee Job:</label>
						      <input type="text" class="form-control input-box" id="job" required placeholder="Enter Employee Job">
						    </div>
						    
						    <div class="form-group">
						      <label >Employee Location:</label>
						      <input type="text" class="form-control input-box" id="location" required placeholder="Enter Location">
						    </div>
						    
						    <div class="form-group">
						      <label >Employee Mobile No:</label>
						      <input type="text" class="form-control input-box" id="mobile" required placeholder="Enter Mobile Number" maxlength="10">
						    </div>
						    
						    <div class="form-group">
						      <label >Employee Date:</label>
						      <input type="DATE" class="form-control input-box" id="date" required placeholder="Enter Join-date">
						    </div>
						    
						    <div class="form-group">
						      <label >Department Id:</label>
						      <input type="text" class="form-control input-box" id="deptno" required placeholder="Enter Department Id">
						    </div>
		
					  <input type="button" class="btn btn-primary" id="submit" value="Submit" data-dismiss="modal">
				  </form>
				         </div>
				   </div>
				</div>
			</div>
	</body>
</html>

