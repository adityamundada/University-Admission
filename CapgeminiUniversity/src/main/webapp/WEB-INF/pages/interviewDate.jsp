<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<script src="checkEnteredDate.js"> </script>
		<title>Interview</title>
	<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>

		<div>
		
		<c:url var = "myAction" value="interview.obj"></c:url>
		<form:form method="post" modelAttribute="applicationBean" action="${myAction} onSubmit="return checkEnteredDate()">
		<h2>Confirm Interview </h2>
		
		<td>Application ID:</td>
  		<td><form:input path="applicationId" id="enteredDate" value="${applicationBean.applicationId}"/>
  			<form:errors path="applicationId" style="color:red"> </form:errors>
  		</td>
  		<td>Interview date:</td>
  		<td><form:input type="date" path="dateOfInterview"/>
  			<form:errors path="dateOfInterview" style="color:red"> </form:errors>
  		</td>
  		<h5><input type="submit" value="Set interview date"></h5>
		</form:form>
		
		
		
		
		
			<%-- <form action="interview.obj" method="post">
				<h2>Confirm Interview </h2>
				Application ID: <input type="text" name="appId" value="${applicant}">    
				Interview date: <input type="text" name="dateOfInterview">    
				<h5><input type="submit" value="Interview"></h5>
			</form> --%>
        </div>
		 <a href="machome.obj">MAC Homepage</a>
		 <br>
  <br>
<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
	</body>
</html>