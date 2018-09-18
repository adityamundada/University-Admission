<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>View applicants</title>
	<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>
		<h2>Update status</h2> 
		<c:set var="status" value="confirmed"></c:set>
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
					<th bgcolor="#c2c2d6">Confirm</th>
					<th bgcolor="#c2c2d6">Reject</th>
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
						<td>
							<a href="confirm.obj?appId=${applicantList.applicationId}">Confirm</a>
						</td>
						<td>
							<a href="reject.obj?appId=${applicantList.applicationId }">Reject</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		 <a href="machome.obj">MAC Homepage</a>
		<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
	</body>
</html>