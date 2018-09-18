<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Applicants based on schedule id</title>
<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>
<h2>Applicant Details</h2> 
		<table class="table">
    		<thead>
				<tr>
					<th bgcolor="#c2c2d6">Applicant Id</th>
					<th bgcolor="#c2c2d6">FullName</th>
					<th bgcolor="#c2c2d6">DateOfBirth</th>
					<th bgcolor="#c2c2d6">HighestQualification</th>
					<th bgcolor="#c2c2d6">MarksObtained</th>
					<th bgcolor="#c2c2d6">EmailId</th>
					<th bgcolor="#c2c2d6">Goals</th>
					<th bgcolor="#c2c2d6">Current status</th>
					<th bgcolor="#c2c2d6">Accept</th>
					<th bgcolor="#c2c2d6">Reject</th>
					<th bgcolor="#c2c2d6">Date Of Interview</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="applicantList" items="${applicantList}">
					<tr>
						<td>${applicantList.applicationId}</td>
						<td>${applicantList.fullName}</td>
						<td>${applicantList.dateOfBirth}</td>
						<td>${applicantList.highestQualification}</td>
						<td>${applicantList.marksObtained}</td>
						<td>${applicantList.emailID}</td>
						<td>${applicantList.goals}</td>
						<td>${applicantList.status}</td>
					</tr>
				</c:forEach>
			</tbody>
</table>

<a href="adminHome.obj">Go to Admin Homepage</a>



<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
</body>
</html>