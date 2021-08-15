<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>

<html>

<head>

<title>Save Customer</title>

<link type="text/css"
		rel="stylesheet"
		href="${pageContext.request.contextPath}/resources/css/style.css">

</head>

<body>

<div id="wrapper">
<div id="header">

<h2>CRM - Customer Relationship Manager</h2>

</div>
</div>

<div id="container">
<h3>Save Customer</h3>

<form:form action="saveCustomer" modelAttribute="customer" method="POST">

<!-- Need associated FORM DATA's CUSTOMER ID (will call customer.getId() and then customer.setId()) -->
<form:hidden path="id"/>

<table>
	<tbody>

		<tr>
		<td><label>First Name: </label></td>
		<td><form:input path="firstName"/></td>
		</tr>
	
		<tr>
		<td><label>Last Name: </label></td>
		<td><form:input path="lastName"/></td>
		</tr>
	
		<tr>
		<td><label>Email: </label></td>
		<td><form:input path="email"/></td>
		</tr>
	
		<tr>
		<td><label></label></td>
		<td><input type="submit" value="SAVE" class="save"/></td>
		</tr>

	</tbody>

</table>

</form:form>

</div>

<div style="clear;both;"> 

<p>
<a href="${pageContext.request.contextPath}/customer/list">BACK TO LIST</a>
</p>

</div>


</body>

</html>