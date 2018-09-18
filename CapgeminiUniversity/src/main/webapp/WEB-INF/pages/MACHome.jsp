<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>MACHome</title>
	<style>
body{
	background-color: #323030;
	color:white;
}
img {
    float: right;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>

		<a href="showScheduledPrograms.obj">SHOW SCHEDULED PROGRAMS</a> 
		<br>    	
		<a href="viewAllApplicants.obj">UPDATE STATUS OF APPLICANT AFTER INTERVIEW</a>
		<br>  
		<a href="viewAllConfirmedApplicants.obj">VIEW ALL CONFIRMED APPLICANTS</a>
		<br>  
		<a href="logout.obj">LOGOUT</a>
		<br>
  <br>
<br>
<h3>MAC</h3><br>
 <img src="images/mac.jpg"  style="width:170px;height:170px;margin-left:15px;">
 <ul type="square">
 <li>Login into the system using his/her credentials.<br></li>
 <li>
 View applications for a specific program.<br></li>
 <li>Accept/Reject an application on the basis of details of the applicant. If
 accepted, fill in the scheduled date for an interview of the applicant before confirming the
 applicant to take the program.<br></li>
 
<li>After the interview, update the status of the application to Confirmed/Rejected.</li>
</ul>
 
<br>
 <br>
 <br>
  <a href="machome.obj">MAC Homepage</a>
	</body>
</html>