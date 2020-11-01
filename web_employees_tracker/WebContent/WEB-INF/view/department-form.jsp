<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
	<title>Save Department</title>

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
				<h2>Department Manager System</h2>
			</div>
		</div>
		
		<div id="container">
			<h3>Save Department</h3>
			
			
			<form:form action="saveDepartment" modelAttribute="department" method="POST" >
			
				<table>
					<tbody>
						<tr>
							<td><label>Department name :</label></td>
							<td><form:input path="dname" /></td>
						</tr>
						
						<tr>
							<td><label>Location ID :</label></td>
							<td><form:input path="locid" /></td>
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
			
				<a href="${pageContext.request.contextPath}/department/list">Back to list</a>
			
			</p>
			
			
		</div>


</body>

</html>