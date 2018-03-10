<!DOCTYPE html>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<html lang="en">
<head>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
   <style>
  .labelClass{
    float: left;
    width: 113px;
	margin-bottom: 10px;
  }
</style>
  
</head>
<body>

<form:form class="form-horizontal" action="processInformation" method="post" modelAttribute="customer">

<div class="container" style="width:800px; margin:0 auto;">

<h1> Customer Information</h1>
<div class="col-lg-12">
 <span class="labelClass"> Customer Id:</span>
  <form:input type="text" path="cust_id_pk"/>
</div>
  <br>
<div class="col-lg-12">
 <span class="labelClass"> First name:</span>
  <form:input type="text" path="first_name"/>
</div>
  <br>
  <div class="col-lg-12">
 <span class="labelClass"> Last Name:</span>
  <form:input type="text" path="last_name"/><br>
  </div>
  <br>
<div class="col-lg-12">
 <span class="labelClass"> Company:</span>
   <form:input type="text" path="company"/><br>
</div>  
<br>
<div class="col-lg-12">
 <span class=""labelClass"> Email:</span>
  <form:input type="text" path="email"/>
</div> 
<div class="col-lg-12">
 <span class=""labelClass"> Title:</span>
  <form:input type="text" path="title"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Address:</span>
  <form:input type="text" path="Address"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> City:</span>
  <form:input type="text" path="billing_city"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Country:</span>
  <form:input type="text" path="billing_country"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> State:</span>
  <form:input type="text" path="billing_state"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Street:</span>
  <form:input type="text" path="billing_street"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> zip:</span>
  <form:input type="text" path="billing_zip"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Display name:</span>
  <form:input type="text" path="display_name"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Middle name:</span>
  <form:input type="text" path="middle_name"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Other Details:</span>
  <form:input type="text" path="other_details"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Print on cheque as:</span>
  <form:input type="text" path="print_on_check_as"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Shipping City:</span>
  <form:input type="text" path="shipping_city"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Shipping Country:</span>
  <form:input type="text" path="shipping_country"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Shipping State:</span>
  <form:input type="text" path="shipping_state"/>
</div> <div class="col-lg-12">
 <span class=""labelClass"> Shipping Street:</span>
  <form:input type="text" path="shipping_street"/>
</div> 

</div> <div class="col-lg-12">
 <span class=""labelClass"> Shipping Zip:</span>
  <form:input type="text" path="shipping_zip"/>
</div> 
<br>
  <br>
  <div class="col-lg-12">
  <br>
  <button type="submit" class="btn btn-default">Submit</button>
  
</div>
</div>
  </form:form>


</body>
</html>