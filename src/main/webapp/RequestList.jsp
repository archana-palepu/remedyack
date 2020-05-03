<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>SupportAnalystRegistrations</title>
<link rel="stylesheet" type="text/css" href="/style.css"/>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">

</head>
<body>
<div class="container-fluid">
<div class="row mainheader">
<div class="col-sm text-nowrap">

<span class="logo">Remedy Acknowledgement</span>
</div>
<c:forEach items="${list}" var="admin"> 
<h2>SARegistrationRequests</h2>

<div class="container">
<table class="table table-dark">
<thead>

<tr>
<th>AdminId</th>
<th>FirstName</th>
<th>LastName</th>
<th>Age</th>
<th>Gender</th>
<th>ContactNumber</th>
<th>SupportLevel</th>
<th>Status</th>
</tr>
<tr>
<td>${admin.getAnalystId()}</td>
<td>${admin.getFirstName()}</td>
<td>${admin.getLastName()}</td>
<td>${admin.getAge()}</td>
<td>${admin.getGender()}</td>
<td>${admin.getContactNumber()}</td>
<td>${admin.getSupportLevel()}</td>
<td>${admin.getStatus()}</td>
</tr>
<tr>
<td colspan="7" align="center">
<a href="accept?name=${admin.getAnalystId()}"><button>Accept</button></a>
<a href="reject?name=${admin.getAnalystId()}"><button>Reject</button></a>

</td>
</tr>

</thead>
</table>
</c:forEach>
${message}
</div>
<%
RequestDispatcher rd=request.getRequestDispatcher("AdminHome.jsp");
rd.include(request,response);
%>

</div>
<script src="validators.js"></script>
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js" integrity="sha384-b/U6ypiBEHpOf/4+1nzFpr53nxSS+GLCkfwBdFNTxtclqqenISfwAzpKaMNFNmj4" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" integrity="sha384-h0AbiXch4ZDo7tp9hKZ4TsHbi047NrKGLO3SEJAg45jXxnGIfYzk4Si90RDIqNm1" crossorigin="anonymous"></script>

</body>
</html>