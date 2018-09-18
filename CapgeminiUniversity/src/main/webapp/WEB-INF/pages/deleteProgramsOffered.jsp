<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
              
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Programs Offered</title>
<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>

Enter the Program Name to delete:
<form:form modelAttribute="programOfferedBean" action="toDeleteProgramsOffered.obj" method="post">

	<form:input path="programName"/>
	<form:errors path="programName" style="color:red"/>
<input type="submit" value="delete Program"  />
</form:form>
<c:if test="${errorMessage ne null }">
<h3 style="color:red">	${errorMessage }</h3>

</c:if>


<a href="adminHome.obj">Go to home page</a>




</body>
</html>