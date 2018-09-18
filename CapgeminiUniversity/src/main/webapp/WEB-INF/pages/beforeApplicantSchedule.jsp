<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Before Applicant schedule</title>
<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>


<h2>View Applicants</h2>
		<table class="table">
			<thead>
				<tr>
					<th bgcolor="#c2c2d6">Program Id</th>
					<th bgcolor="#c2c2d6">Program Name</th>
					<th bgcolor="#c2c2d6">Action</th>
				</tr>
			</thead> 
			<tbody>
				<c:forEach var="scheduleList" items="${programScheduledList}">
					<tr>
						<td>${scheduleList.scheduledProgramID}</td>
						<td>${scheduleList.programName}</td>
						<td>
							<a href="searchApplicants.obj?scheduledProgramID=${scheduleList.scheduledProgramID}">View Applicants</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table> 
		<a href="adminHome.obj">Go to Admin Homepage</a>



</body>
</html>