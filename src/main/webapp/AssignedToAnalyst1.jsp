<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>RemedyInformation</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>

 <c:forEach items="${list}" var="userremedy">


<div class="container-fluid">
<div class="row mainheader">
<div class="col-sm text-nowrap">

<span class="logo">Remedy Acknowledgement</span>
</div>

<span class="userloginmessage">Welcome</span>
<div align="right">
 <div class="btn-group dropright" style="margin-left: 10px;">
  <button type="button" class="btn  dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
    <span style="color: white;"><img  class="rounded-circle" alt="profile" src="/images/profile.png" width="30" height="30"></span>
  </button>
  <div class="dropdown-menu">
     <a class="dropdown-item" href="remedyinfo">Remedy Information</a>
    <a class="dropdown-item" href="#">AssignToAnalyst</a>
    <a class="dropdown-item" href="#">Help</a>
    <a class="dropdown-item" href="adminLogout">Logout</a>
    <a class="dropdown-item" href="/">Home</a>
    
  </div>
</div>
 </div>
 
</div>
</div>



</div>
<div class="row mainsection">
 <div class="col-sm">
 <div align="center">
 
 
 <span class="text-info" style="font-size: 1.5rem;">${title}</span>
 
 <table class="table table-striped table-hover">
  <thead class="thead-dark">
 <tr>
 <c:forEach items="${headersList}" var="t">
 <th>${t}</th>
 </c:forEach>
 
  </tr>
 </thead>
 

 <c:choose>
  <c:when test="${income==1}">
   <c:forEach items="${list}" var="admin"> 
 
 
 <tr>
 
 <tr>
<th>UserId</th>

<th>PcNumber</th>
<th>ContactNumber</th>
<th>Category</th>
<th>Statement</th>
</tr>
<tr>
<td>${userremedy.getUserId()}</td>
<td>${userremedy.getPcNumber()}</td>
<td>${userremedy.getContactNumber()}</td>
<td>${userremedy.getCategory()}</td>
<td>${userremedy.getStatement()}</td>
</tr>
<tr>
 
 

  

<td>
<a href="assignedtoanotheranalyst2?name=${userremedy.getUserId()}"><button>AssignedToAnotherAnalyst2</button></a>
<a href="assignedtoanotheranalyst3?name=${userremedy.getUserId()}"><button>AssignedToAnotherAnalyst3</button></a>
</td>

</tr>
 </c:forEach>
 
  </c:when>
  <c:when test="${income==2}">
   <c:forEach items="${list}" var="userremedy"> 
<tr>
<td>${userremedy.remedyId}</td>
<td>${userremedy.user.id}</td>
<td>${userremedy.pcNumber}</td>
<td>${userremedy.contactNumber}</td>
<td>${userremedy.category}</td>
<td>${userremedy. statement}</td>
<td>

<select>
 <c:forEach items="${salist}" var="sa">
 
 <option>${sa.analystId}-${sa.supportLevel}</option>
 
 </c:forEach>

</select>

<a href="#">Assign to Self</a>
</td>
</tr>
</c:forEach>
   
  </c:when>
  <c:otherwise>
   
  </c:otherwise>
</c:choose>
 
 
 
 </table>
 
 
 </div>
</div>
</div>






</c:forEach>
${message}
<%
RequestDispatcher rd=request.getRequestDispatcher("SupportAnalystHome.jsp");
rd.include(request,response);
%>

<script src="validators.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>