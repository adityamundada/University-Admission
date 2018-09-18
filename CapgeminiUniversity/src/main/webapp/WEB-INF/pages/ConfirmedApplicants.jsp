<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>View confirmed applicants</title>
	<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>

		<table class="table">
    		<thead>
				<tr>
					<th bgcolor="#c2c2d6">Roll number</th>
					<th bgcolor="#c2c2d6">Email ID</th>
					<th bgcolor="#c2c2d6">Application ID</th>
					<th bgcolor="#c2c2d6">Scheduled Program ID</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="confirmedList" items="${confirmedList}">
					<tr>
						<td>${confirmedList.rollNumber}</td>
						<td>${confirmedList.emailId}</td>
						<td>${confirmedList.applicationId}</td>
						<td>${confirmedList.programId}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		 <a href="machome.obj">MAC Homepage</a>
	</body>
</html>