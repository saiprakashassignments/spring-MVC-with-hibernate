<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page import="trng.imcs.hib.pojo.Customers"%>  
<html lang="en">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.labelClass {
	float: left;
	width: 113px;
	margin-bottom: 10px;
}
</style>

</head>
<body>

	<form class="form-horizontal" action="findInformation" method="post">

		<div class="container" style="width: 800px; margin: 0 auto;">
			<div class="col-lg-12" style="margin-top: 10px; margin-bottom: 10px;">
				<span class="labelClass" for="firstname">First Name:</span> <input
					type="text" name="cust_id" />
			</div>
			<br> <br>
			<div class="col-lg-12">
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		<div>	<a id="red" href="<c:url value="redirection"/>">Landing</a></div>
		</div>
	</form>
<%-- 
	<table>
		<c:forEach items="${customers}" var="customers">
			<tr>
				<td>${customers.first_name}</td>
			</tr>
			<tr>
				<td>${customers.middle_name}</td>
			</tr>
			<tr>
				<td>${customers.last_name}</td>
			</tr><tr>
		
			<td>${customers.email}</td>
			</tr><tr>
			
			<td>${customers.cust_id_pk}</td>
			</tr><tr>
			
			<td>${customers.title}</td>
			</tr><tr>
			
			<td>${customers.suffix}</td>
			</tr><tr>
			
			<td>${customers.company}</td>
			</tr><tr>
			
			<td>${customers.print_on_check_as}</td>
			</tr><tr>
			
			<td>${customers.display_name}</td>
			</tr><tr>
			
			<td>${customers.billing_street}</td>
			</tr><tr>
			
			<td>${customers.billing_city}</td>
			</tr><tr>
			
			<td>${customers.billing_state}</td>
			</tr><tr>
			
			<td>${customers.billing_zip}</td>
			</tr><tr>
			
			<td>${customers.billing_country}</td>
			</tr><tr>
			
			<td>${customers.shipping_street}</td>
			</tr><tr>
			
			<td>${customers.shipping_city}</td>
			</tr><tr>
			
			<td>${customers.shipping_state}</td>
			</tr><tr>
			
			<td>${customers.shipping_zip}</td>
			</tr><tr>
			
			<td>${customers.shipping_country}</td>
			</tr><tr>
			
			<td>${customers.other_details}</td>
			</tr><tr>
			
			</tr></c:forEach>
	</table>
 --%>
 <jsp:useBean id="customer" class="trng.imcs.hib.pojo.Customers"/>
 <jsp:setProperty property="*" name="customers"/> 
 <table>
 
 <tr>
				<td>${customers.first_name}</td>
			</tr>
			<tr>
				<td>${customers.middle_name}</td>
			</tr>
			<tr>
				<td>${customers.last_name}</td>
			</tr><tr>
		
			<td>${customers.email}</td>
			</tr><tr>
			
			<td>${customers.cust_id_pk}</td>
			</tr><tr>
			
			<td>${customers.title}</td>
			</tr><tr>
			
			<td>${customers.suffix}</td>
			</tr><tr>
			
			<td>${customers.company}</td>
			</tr><tr>
			
			<td>${customers.print_on_check_as}</td>
			</tr><tr>
			
			<td>${customers.display_name}</td>
			</tr><tr>
			
			<td>${customers.billing_street}</td>
			</tr><tr>
			
			<td>${customers.billing_city}</td>
			</tr><tr>
			
			<td>${customers.billing_state}</td>
			</tr><tr>
			
			<td>${customers.billing_zip}</td>
			</tr><tr>
			
			<td>${customers.billing_country}</td>
			</tr><tr>
			
			<td>${customers.shipping_street}</td>
			</tr><tr>
			
			<td>${customers.shipping_city}</td>
			</tr><tr>
			
			<td>${customers.shipping_state}</td>
			</tr><tr>
			
			<td>${customers.shipping_zip}</td>
			</tr><tr>
			
			<td>${customers.shipping_country}</td>
			</tr><tr>
			
			<td>${customers.other_details}</td>
			</tr><tr>
 </table>
 
 
 </body>
</html>