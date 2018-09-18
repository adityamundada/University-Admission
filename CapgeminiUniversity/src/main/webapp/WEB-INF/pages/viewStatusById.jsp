<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Status</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
.container {
	margin: 5% 0 0 8%;
}
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>

		
	<div class="container">
		<center>
		<c:set var="status1" value="Applied"/>
		<c:set var="status" value="Confirmed"/>
		<c:set var="status2" value="Accepted"/>
		<c:set var="status3" value="Rejected"/>
		<c:if test="${ applicant.status eq status }">
			  <h1>Application Confirmed!!</h1>
			</c:if>
		<c:if test="${ applicant.status eq status2 }">
			  <h1>Application Accepted!!</h1>
			  <br>
			  <h1>Interview Date : ${applicant.dateOfInterview} </h1>
			</c:if>	
			
		<c:if test="${applicant.status eq status1 }">
			  <h1>Application Applied!!</h1>
			</c:if>
			
			<c:if test="${applicant.status eq status3 }">
			  <h1>Application Rejected!!</h1>
			</c:if>
			
		
<br>
  <br>
  <br>
  <br>
  <a href="showApplicant.obj">Go to Applicant Home Page</a>
 <br>
 <br>
 </center>
  <%@ include file = "Footer.jsp" %>
</body>
</html>