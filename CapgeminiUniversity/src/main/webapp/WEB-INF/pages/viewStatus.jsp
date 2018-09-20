<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <meta name="viewport" content="width=device-width, initial-scale=1">


<title>View Status</title>
<style>

 h2 {color: white}
body{
	background-color: #323030;
	
}



</style>

</head>
<body>
 <%@ include file = "Header.jsp" %>
 <center>

 
       



  <h2>Enter Application Id</h2>  
  
    
<c:url var="myAction" value="/viewStatusById.obj" ></c:url> 
<form:form  action="${myAction}" method="get"  >
<input type="number" name="applicationId" required >
<input type="submit">
</form:form> 
<br>
  <br>

  <br>
  <a href="showApplicant.obj">Back to Applicant Page</a>
     </center> 
  <br>
  <br>
  <br>
  <br>
 <br>
 <br>
    <%@ include file = "Footer.jsp" %>
</body>
</html>