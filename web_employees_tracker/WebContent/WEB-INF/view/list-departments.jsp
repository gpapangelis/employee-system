<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
		
			<!-- put the add button -->
			
			<input type="button" value ="Add Department"  
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
			/>
		
		
		
			<!--  add a search box -->
            <form:form action="searchByDep" method="GET">
                Search employee by department: <input type="text" name="theDepartmentName" />
                
                <input type="submit" value="Search" class="add-button" />
            </form:form>
		
			<!-- add html table here -->
		
			<table>
				<tr>
					<th>Departments ID</th>
					<th>Department Name</th>
					<th>Location ID</th>
					<th>Action</th>
				</tr>
				
				<!-- Loop over and print table -->
				
				<c:forEach var="tempDepartment" items="${departments}">
				
				<!-- construct an update link with employee id -->
				<c:url var="updateLink" value="/department/showFormForUpdate">
					<c:param name="departmentId" value="${tempDepartment.deptid}" />
				</c:url>
				
				<!-- construct an delete link with employee id -->
				<c:url var="deleteLink" value="/department/delete">
					<c:param name="departmentId" value="${tempDepartment.deptid}" />
				</c:url>
				
					<tr>
						<td> ${tempDepartment.deptid} </td>
						<td> ${tempDepartment.dname} </td>
						<td> ${tempDepartment.locid} </td>
						
						<td>
							<!-- display the update link -->
							
						<a href="${updateLink}">Update</a>
						|
						<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this department?'))) return false">Delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
				
			</table>
			
		</div>
		
	</div>
	
	</body>

</html>