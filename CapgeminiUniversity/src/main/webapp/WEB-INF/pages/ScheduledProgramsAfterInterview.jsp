<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
				<c:forEach var="programScheduledList" items="${programScheduledList}">
					<tr>
						<td>${programScheduledList.scheduledProgramID}</td>
						<td>${programScheduledList.programName}</td>
						<td>
							<a href="afterInterview.obj?programId=${programScheduledList.scheduledProgramID}">View Applicants</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table> 
		 <a href="machome.obj">MAC Homepage</a>
		 <br>
  <br>
<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
	</body>
</html>