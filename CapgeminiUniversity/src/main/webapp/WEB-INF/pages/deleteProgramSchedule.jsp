<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>


<h1>Delete Program Schedule</h1>
<c:if test="${programScheduledBean ne null}">
	<div>
		<table border="2px">
			<tr>
				<th>Program Schedule Id</th>
				<th>Program Name</th>
				<th>Location</th>
				<th>Start Date</th>
				<th>end Date</th>
				<th>Sessions Per Week</th>
			</tr>
			<c:forEach items="${programScheduledBean}" var="program">
				<tr>
					<td>${program.scheduledProgramID}</td>
					<td>${program.programName}</td>
					<td>${program.location}</td>
					<td>${program.startDate}</td>
					<td>${program.endDate}</td>
					<td>${program.sessionsPerWeek}</td>
					<td><a href="deleteProgramSchedule.obj?scheduledProgramID=${program.scheduledProgramID }">delete</a></td>
				</tr>
			</c:forEach>

		</table>
	</div>
</c:if>

<c:if test="${errorMsg ne null }">
	<p style="color:red">${errorMsg}</p>
</c:if>

 <a href="adminHome.obj">Go to home page</a>
 
</body>
</html>