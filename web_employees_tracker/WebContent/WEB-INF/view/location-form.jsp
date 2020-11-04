<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
	<title>Save Location</title>

	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/style.css">
			
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath}/resources/css/add-employee-style.css">
	
</head>

<body>

		<div id="wrapper">
			<div id="header">
				<h2>Location Manager System</h2>
			</div>
		</div>
		
		<div id="container">
			<h3>Save Location</h3>
			
			
			<form:form action="saveLocation" modelAttribute="location" method="POST" >
			
			<!-- need to associate this data with employee id -->
			
			<form:hidden path="locid"/>
			
				<table>
					<tbody>
						<tr>
							<td><label>Location ID :</label></td>
							<td><form:input path="locid" /></td>
						</tr>
						<tr>
							<td><label>Location Name :</label></td>
							<td><form:input path="locname" /></td>
						</tr>
						
						<tr>
							<td><label></label></td>
							<td><input type="submit" value="Save" class="save" /></td>
						</tr>
						
						
						
						
					
					</tbody>
				
				
				</table>
				
			</form:form>
		
		
			<div style="clear; both;"></div>
			
			<p>
			
				<a href="${pageContext.request.contextPath}/location/list">Back to list</a>
			
			</p>
			
			
		</div>


</body>

</html>