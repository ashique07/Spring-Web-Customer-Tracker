<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>

<html>

<head>

<title>List Customers</title>

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
<div id="content">

<!-- PUT BUTTON: ADD CUSTOMER -->
<input type="button" value="Add Customer" onClick="window.location.href='showFormForAdd'; return false;"
class = "add-button" />

<!-- ADD HTML TABLE HERE -->

<table>
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Action</th>
	</tr>
	
	<!-- LOOP OVER EACH AND PRINT CUSTOMER -->
	<c:forEach var="tempCustomer" items="${customers}">
	
	<!-- Construct update link with CustomerID -->
	<c:url var="updateLink" value="/customer/showFormForUpdate">
	
	<c:param name="customerId" value="${tempCustomer.id}"/>
	
	</c:url>
	
	<!-- Construct delete link with CustomerID -->
	<c:url var="deleteLink" value="/customer/delete">
	
	<c:param name="customerId" value="${tempCustomer.id}"/>
	
	</c:url>
	
	<tr>
		<td>${tempCustomer.firstName}</td>
		<td>${tempCustomer.lastName}</td>
		<td>${tempCustomer.email}</td>
		<td>
			<a href="${updateLink}">UPDATE</a>
			|
			<a href="${deleteLink}"
			onClick="if(!(confirm('Are you sure you want to delete ?')))return false">DELETE</a>
		</td>
	</tr>

	</c:forEach>
	
</table>

</div>
</div>

</body>

</html>