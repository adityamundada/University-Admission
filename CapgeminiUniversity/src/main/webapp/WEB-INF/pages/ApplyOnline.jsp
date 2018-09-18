<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<style>
.error {
color: red;
font-style: italic;
}


body{
	background-color: #323030;
	color: white;
}



</style>
</head>
<body>

<%@ include file = "Header.jsp" %>
 <br>
<center>
<h1>Register Page</h1>

<c:url var="myAction" value="checkRegister.obj" />

<form:form method="post" modelAttribute="applicant" action="${myAction}">
<table>
<tr><td>
  Enter Full Name:</td><td>
  <form:input path="fullName" placeholder = "Enter your Full Name"/>
  <form:errors path="fullName" cssClass="error"></form:errors></td></tr>

  <tr><td> Enter Date Of Birth:</td><td>
  <form:input    path="dateOfBirth" type = "date"/><br/>
  <form:errors path="dateOfBirth" cssClass="error"></form:errors>
</td></tr>

  <tr><td> Enter your highest qualification:</td><td>
  <form:input path="highestQualification" placeholder = "Enter your Highest Qualifications"/>
  <form:errors path="highestQualification" cssClass="error"></form:errors>
</td></tr>

 <tr><td> Enter your marks obtained:</td><td>
  <form:input path="marksObtained" pattern = "^([0]?[1-9])|([0-9][0-9])|([1][0][0])$" title = "Enter a number between 1-100" placeholder = "Enter your marks obtained"/>
  <form:errors path="marksObtained" cssClass="error"></form:errors>
 <br>
 
  <tr><td> Enter your goals:</td><td>
  <form:input path="goals" placeholder = "Enter your goals"/>
  <form:errors path="goals" cssClass="error"></form:errors>
 </td></tr>
 
  <tr><td> Enter your Email Id:</td><td>
  <form:input path="emailID" placeholder = "Enter your Email Id"/>
  <form:errors path="emailID" cssClass="error"></form:errors>
 </td></tr>
  
<tr><td> Select Your Scheduled Id:</td><td>
  
  <form:select path="scheduledProgramID"> 
	<form:option value="" label="Please Select"/>
	<form:options items="${ids}" />
  </form:select></td></tr>
  <form:errors path="scheduledProgramID" cssClass="error"></form:errors>
 </table>
  <input type="submit" value="Add"/>
  
</form:form>

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