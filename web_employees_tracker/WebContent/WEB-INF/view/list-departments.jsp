<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>

<html>

<head>

<title>List Departments</title>

<!-- reference style sheet -->
<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />


</head>
	<body>
	
	<div id="wrapper">
	
		<div id="header">
			<h2>Departments List</h2>
		</div>
	
	</div>
	
	<div id="container">
		
		<div id="content">
		
			<!-- add html table here -->
		
			<table>
				<tr>
					<th>Departments ID</th>
					<th>Department Name</th>
					<th>Location ID</th>
				</tr>
				
				<!-- Loop over and print table -->
				
				<c:forEach var="tempDepartment" items="${departments}">
				
					<tr>
						<td> ${tempDepartment.deptid} </td>
						<td> ${tempDepartment.dname} </td>
						<td> ${tempDepartment.locid} </td>
					</tr>
				
				</c:forEach>
				
			</table>
			
		</div>
		
	</div>
	
	</body>

</html>