<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>

<html>

<c:url value="employee/list" var="employeeUrl"/>
<c:url value="department/list" var="departmentUrl"/>
<c:url value="location/list" var="locationUrl"/>
<c:url value="employee/listByDep" var="locationUrl"/>


<head>

<title>List of Actions</title>

<!-- reference style sheet -->
<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />


<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

</head>
	<body>
	
	<div id="wrapper">
	
		<div id="header">
			<h2>List of Actions</h2>
		</div>
	
	</div>
	
		<table id="actionsTable" class="table table-striped table-bordered">
				<thead>
				
						<ul class="list-group">
						
								<li class="list-group-item"><a href="${locationUrl}">Location's List</a></li>
								
							
						  		
						  		
						  	
						  	<!-- 	<li class="list-group-item"><a href="${departmentUrl}">Department's List</a></li>    -->
						
						  									
								
															
								
								<div class="dropdown">
  								<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Employees by Department
  								<span class="caret"></span></button>
  									<ul class="dropdown-menu">
									    <li><a href="employee/listByDep/1"> Department 1 </a></li>
									    <li><a href="employee/listByDep/2"> Department 2 </a></li>
									    <li><a href="employee/listByDep/3"> Department 3 </a></li>
  									</ul>
								</div>
								
								
								
								<div class="dropdown">
  								<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">Departments by Location
  								<span class="caret"></span></button>
  									<ul class="dropdown-menu">
									    <li><a href="department/listByLoc/1"> Location 1 </a></li>
									    <li><a href="department/listByLoc/2"> Location 2 </a></li>
									    <li><a href="department/listByLoc/3"> Location 3 </a></li>
									    <li><a href="department/listByLoc/4"> Location 4 </a></li>
									    <li><a href="department/listByLoc/5"> Location 5 </a></li>
  									</ul>
								</div>
								
								<li class="list-group-item "><a href="${employeeUrl}">Employee's List</a></li>
								
								
						</ul>
				
    
	
		
	</div>
	
	</body>

</html>