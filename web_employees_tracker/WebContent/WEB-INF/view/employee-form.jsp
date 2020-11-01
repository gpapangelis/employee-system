<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>

<head>
	<title>Save Employee</title>

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
				<h2>Employee Manager System</h2>
			</div>
		</div>
		
		<div id="container">
			<h3>Save Employee</h3>
			
			
			<form:form action="saveEmployee" modelAttribute="employee" method="POST" >
			
			
			<form:hidden path="empid" />
			
			
				<table>
					<tbody>
						<tr>
							<td><label>Last name :</label></td>
							<td><form:input path="lastName" /></td>
						</tr>
						
						<tr>
							<td><label>First name :</label></td>
							<td><form:input path="firstName" /></td>
						</tr>
						
						<tr>
							<td><label>Job :</label></td>
							<td><form:input path="job" /></td>
						</tr>
						
						<tr>
							<td><label>Manager ID :</label></td>
							<td><form:input path="mngid" /></td>
						</tr>
						
						<tr>
							<td><label>Hiredate :</label></td>
							<td><form:input path="hiredate" /></td>
						</tr>
						
						<tr>
							<td><label>Salary :</label></td>
							<td><form:input path="salary" /></td>
						</tr>
						
						<tr>
							<td><label>Ethsies Promithies :</label></td>
							<td><form:input path="comm" /></td>
						</tr>
						
						<tr>
							<td><label>Department ID :</label></td>
							<td><form:input path="deptid" /></td>
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
			
				<a href="${pageContext.request.contextPath}/employee/list">Back to list</a>
			
			</p>
			
			
		</div>


</body>

</html>