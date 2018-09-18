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

<h1>View Program Schedule By Date</h1>
<c:url var = "myAction" value="viewByDateProgramSchedule.obj"></c:url>

<form:form method="post" modelAttribute="programScheduledBean" action="${myAction}">

  Enter Schedule Start Date:<form:input type = "date" path="startDate" placeholder = "dd/mm/yyyy"/>
  <form:errors path="startDate" style="color:red"></form:errors><br/>
  
  Enter Schedule Start Date:<form:input type = "date"  path="endDate" placeholder = "dd/mm/yyyy"/>
  <form:errors path="endDate" style="color:red"></form:errors><br/><br/>
  
  <input type="submit" value="View Schedule"/> <br>
</form:form>
<c:if test="${message ne  null}">
	<h4 style="color :red">${message}</h4>

</c:if>
<c:if test="${programViewByDate ne null}">
	<div>
		<table border="2px">
			<tr>
				<th>Program Schedule Id</th>
				<th>Program Name</th>
				<th>Location</th>
				<th>Start Date (yyyy-MM-dd)</th>
				<th>end Date (yyyy-MM-dd)</th>
				<th>Sessions Per Week</th>
			</tr>
			<c:forEach items="${programViewByDate}" var="program">
				<tr>
					<td>${program.scheduledProgramID}</td>
					<td>${program.programName}</td>
					<td>${program.location}</td>
					<td>${program.startDate}</td>
					<td>${program.endDate}</td>
					<td>${program.sessionsPerWeek}</td>
				</tr>
			</c:forEach>

		</table>
	</div>
</c:if>
<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
</body>
</html>