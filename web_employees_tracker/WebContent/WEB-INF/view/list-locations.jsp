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
		
			<!-- add html table here -->
		
			<table>
				<tr>
					<th>Location ID</th>
					<th>Location Name</th>
				</tr>
				
				<!-- Loop over and print table -->
				
				<c:forEach var="tempLocation" items="${locations}">
				
					<tr>
						<td> ${tempLocation.locid} </td>
						<td> ${tempLocation.locname} </td>
					</tr>
				
				</c:forEach>
				
			</table>
			
		</div>
		
	</div>
	
	</body>

</html>