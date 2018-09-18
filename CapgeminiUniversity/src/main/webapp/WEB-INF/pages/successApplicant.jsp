<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Success</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 

<style>
body{
	background-color: #323030;
	color:white;
}
.linkalign{
float: right;}
</style>
</head>
<body>
 
 <%@ include file = "Header.jsp" %>
 <br>
 <br>
 <br>
  <a class="linkalign" href="showApplyOnline.obj">Back</a>
  <br>
  <br>
  <br>

<h2>Congratulations. You are Successfully Registered!!!!</h2>
  <h2>Your Details</h2>  
                                                                       
         
  <table border=1>
    <thead>
      <tr>
      		<th bgcolor="#c2c2d6">Application Id</th>
			<th bgcolor="#c2c2d6">Full Name</th>
			
			<th bgcolor="#c2c2d6">Status</th>
      </tr>
      </thead>
      <tbody>	
		<tr>
			<td> ${applicant.applicationId}</td>
			<td> ${applicant.fullName}</td>
			
			<td> ${applicant.status}</td>
		</tr>
		</tbody>
		
      </table>
   <br>
  <br>
  <center>
  <br>
  <br>
  <br>
  <br>
  <a href="showApplicant.obj">Go to Applicant Home Page</a>
 <br>
 <br>
 </center>
<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
      
</body>
</html>

<%-- <h1> your details </h1>
<h1><c:out value="${applicant.applicationId }"></c:out></h1>
<h2><c:out value="${applicant.fullName }"></c:out></h2>
<h3><c:out value="${applicant.dateOfBirth }"></c:out></h3>
<h3><c:out value="${ applicant.status}"></c:out></h3>
<a href="showHomePage.obj">GO BACK</a> --%>