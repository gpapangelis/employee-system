<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>

<html>

<head>

<title>List Employees</title>

<!-- reference style sheet -->
<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />


</head>
	<body>
	
	<div id="wrapper">
	
		<div id="header">
			<h2>Employees List</h2>
		</div>
	
	</div>
	
	<div id="container">
		
		<div id="content">
		
			<!-- add html table here -->
		
			<table>
				<tr>
					<th>Id</th>
					<th>Last Name</th>
					<th>First Name</th>
					<th>Job</th>
					<th>Manager Code</th>
					<th>Hire Date</th>
					<th>Salary</th>
					<th>Ethsies Promhthies</th>
					<th>Department ID</th>
				</tr>
				
				<!-- Loop over and print table -->
				
				<c:forEach var="tempEmployee" items="${employees}">
				
					<tr>
						<td> ${tempEmployee.empid} </td>
						<td> ${tempEmployee.lastName} </td>
						<td> ${tempEmployee.firstName} </td>
						<td> ${tempEmployee.job} </td>
						<td> ${tempEmployee.mngid} </td>
						<td> ${tempEmployee.hiredate} </td>
						<td> ${tempEmployee.salary} </td>
						<td> ${tempEmployee.comm} </td>
						<td> ${tempEmployee.deptid} </td>
					</tr>
				
				</c:forEach>
				
			</table>
			
		</div>
		
	</div>
	
	</body>

</html>