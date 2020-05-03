<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Remedy Creation</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

<%
RequestDispatcher rd=request.getRequestDispatcher("UserHome.jsp");
rd.include(request,response);
%>





<div class="row mainsection">
 <div class="col-sm">
 <span class="text-success">${message}</span>
<div align="center">   
<div class="card" style="width: 29rem;margin-top: 30px;border-radius: 10px;">
  
  <div class="card-body">
    <h5 class="card-title">User Remedy Creation</h5>
   <form:form action="userrem" method="post" modelAttribute="userremedy" onsubmit="return validate()">
   <div class="form-row">
   <div class="form-group col-md-6">
   <form:label path="user" id="userId">UserId:</form:label>
  

   <form:input path="user" class="form-control input-sm" name="UserId" id="UserId"/>
   
   </div>
   
   
   <div class="form-group col-md-6">
   
   <form:label path="PcNumber">PcNumber :</form:label>
   
   <form:input path="PcNumber" class="form-control input-sm" name="PcNumber" id="PcNumber"/>
 
   </div>
   </div>
   
   <div class="form-row">
   
   <div class="form-group col-md-6">
   
   <form:label path="contactNumber">ContactNumber :</form:label>
   
   <form:password path="contactNumber" class="form-control input-sm" id="contactNumber" name="contactNumber"/>
   
   </div>
   <div class="form-group col-md-6">
   
   
   <form:label path="category">Category</form:label>
 
   <form:select  path="category" class="form-control">
   
   <option>Select</option>
  <option value="network issues">Network Issue</option>
  <option value="Leave management portal">Leave managementportal</option>
  <option value="Desktop issues">Desktop Issues</option>
  <option value="Laptop issues">Laptop Issues</option>
  <option value="Admin travel">Admin Travel</option>
  
   </form:select>
 
   </div>
   
   
   </div>
 
     <div class="form-row">
   
   <div class="form-group col-md-6">
   <form:label path="statement">Statement :</form:label>
   
   <form:input path="statement" class="form-control input-sm" id="statement" name="statement"/>
   
   </div>
   </div>
   
     <div class='<form:button></form:button>'>

   <button class="btn btn-primary btn-lg">submit</button><br><br>
</div>
   <a href="/" class="a1">Logout</a>
   </form:form> 
</div>



 </div>
</div>
</div>


</div>
</div>


<script src="validators.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>
    