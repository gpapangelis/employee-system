<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>

<html>

<head>

<title>List Locations</title>

<!-- reference style sheet -->
<link type="text/css"
	rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/style.css" />


</head>
	<body>
	
	<div id="wrapper">
	
		<div id="header">
			<h2>Locations List</h2>
		</div>
	
	</div>
	
	<div id="container">
		
		<div id="content">
		
			<!-- put the add button -->
			
			<input type="button" value ="Add Location"  
					onclick="window.location.href='showFormForAdd'; return false;"
					class="add-button"
			/>
		
		
			<!-- add html table here -->
		
			<table>
				<tr>
					<th>Location ID</th>
					<th>Location Name</th>
					<th>Action</th>
				</tr>
				
				<!-- Loop over and print table -->
				
				<c:forEach var="tempLocation" items="${locations}">
				
				<!-- construct an update link with location id -->
				<c:url var="updateLink" value="/location/showFormForUpdate">
					<c:param name="locationId" value="${tempLocation.locid}" />
				</c:url>
				
				<!-- construct an delete link with location id -->
				<c:url var="deleteLink" value="/location/delete">
					<c:param name="locationId" value="${tempLocation.locid}" />
				</c:url>
				
					<tr>
						<td> ${tempLocation.locid} </td>
						<td> ${tempLocation.locname} </td>
						
						<td>
							<!-- display the update link -->
							
						<a href="${updateLink}">Update</a>
						|
						<a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this location?'))) return false">Delete</a>
						</td>
						
					</tr>
				
				</c:forEach>
				
			</table>
			
		</div>
		
	</div>
	
	</body>

</html>