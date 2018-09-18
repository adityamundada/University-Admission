<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
              
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Programs Offered</title>
<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>

<form:form modelAttribute="programOfferedBean" action="toUpdateProgramsOffered.obj" method="post">
<table>
<tr>
	<td>Enter the Program Name to update:</td>
	<td><form:input path="programName"/>
		<form:errors path="programName" style="color:red"/>
	</td>
</tr>
<tr>
	<td>Enter the new description of program:</td>
	<td><form:input path="description"/>
		<form:errors path="description" style="color:red"/>
	</td>
</tr>
<tr>
	<td><input type="submit" value="update Program"  /></td>
</tr>
</table>
</form:form>
<c:if test="${errorMessage ne null }">
<h3 style="color:red">	${errorMessage }</h3>

</c:if>


<a href="adminHome.obj">Go to Admin Home</a>


<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>

</body>
</html>