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
    float: center;
}
a:link, a:visited {
    background-color:grey;
    color: white;
    padding: 10px 10px;
    text-align: center;
    text-decoration: underline;
    display: inline-block;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>
 <br>
 <center><h3>Welcome MAC Portal</h3><br>
 <img src="images/mac.jpg"  style="width:170px;height:170px;"></center>
 
<br>
<br>
<center>

		<a href="showScheduledPrograms.obj">SHOW SCHEDULED PROGRAMS</a> 
		<br><br>    	
		<a href="viewAllApplicants.obj">UPDATE STATUS OF APPLICANT AFTER INTERVIEW</a>
		<br> <br>
		<a href="viewAllConfirmedApplicants.obj">VIEW ALL CONFIRMED APPLICANTS</a>
		<br> <br> 
		<a href="logout.obj">LOGOUT</a>
		<br>
  <br>
 </center>
<br>


  <a href="machome.obj">MAC Homepage</a><br>
  <%@ include file = "Footer.jsp" %>
	</body>
</html>