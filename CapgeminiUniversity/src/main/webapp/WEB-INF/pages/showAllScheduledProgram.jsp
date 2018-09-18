<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Programs</title>
<style>

body{
	background-color: #323030;
	color: white;
		
}



</style>
</head>
<body>
<%@ include file = "Header.jsp" %>
<center>
<table border=1>
<tr>
		<th bgcolor="red">Program Id</th>
		<th bgcolor="red">Program Name</th>
		<th bgcolor="red">Location</th>
		<th bgcolor="red">Start Date</th>
		<th bgcolor="red">End Date</th>
		<th bgcolor="red">Sessions Per Week</th>
</tr>
<c:forEach var="scheduleList" items="${scheduleList}">
<tr>
			<td>${scheduleList.scheduledProgramID}</td>
			<td>${scheduleList.programName}</td>
		   <td>${scheduleList.location}</td>
		   <td>${scheduleList.startDate}</td>
		 <td>${scheduleList.endDate}</td>
			<td>${scheduleList.sessionsPerWeek}</td>
			
</tr>
</c:forEach>
</table>

 <br>
  <br>
  <br>
<a href="showApplyOnline.obj">Apply Online</a><br/>
</center>

<br>
  <br>
  <br>
  <br>
 <br>
 <br>
    <%@ include file = "Footer.jsp" %>
     <br>
  <br>
<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
</body>
</html>