<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		
		
			<!-- put the add button -->
			
			<input type="button" value ="Add Employee"  
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
			/>
			
			<!-- add the search box -->
			
			<form:form action="search" method="GET">
				Search employee: <input type="text" name="theSearchName" />
				
				<input type="submit" value="Search" class="add-button" />
				</form:form>
			
			
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
					<th>Action</th>
				</tr>
				
				<!-- Loop over and print table -->
				
				<c:forEach var="tempEmployee" items="${employees}">
				
				<!-- construct an update link with employee id -->
				<c:url var="updateLink" value="/employee/showFormForUpdate">
					<c:param name="employeeId" value="${tempEmployee.empid}" />
				</c:url>
				
				<!-- construct an delete link with employee id -->
				<c:url var="deleteLink" value="/employee/delete">
					<c:param name="employeeId" value="${tempEmployee.empid}" />
				</c:url>
				
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
						
						<td>
							<!-- display the update link -->
							
						<a href="${updateLink}">Update</a>
						|
						<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this employee?'))) return false">Delete</a>
						</td>
					</tr>
				
				</c:forEach>
				
			</table>
			
		</div>
		
	</div>
	
	</body>

</html>