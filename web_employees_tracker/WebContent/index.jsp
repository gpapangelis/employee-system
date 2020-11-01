<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>

<html>

<c:url value="employee/list" var="employeeUrl"/>
<c:url value="department/list" var="departmentUrl"/>
<c:url value="location/list" var="locationUrl"/>

<head>

<title>List of Actions</title>

<!-- reference style sheet -->
<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />


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
						
							
						  		<li class="list-group-item "><a href="${employeeUrl}">Employee's List</a></li>
						  		
						  	
						  		<li class="list-group-item"><a href="${departmentUrl}">Department's List</a></li>
						
						  		<li class="list-group-item"><a href="${locationUrl}">Location's List</a></li>							
										
															
								
						</ul>
				
    
	
		
	</div>
	
	</body>

</html>