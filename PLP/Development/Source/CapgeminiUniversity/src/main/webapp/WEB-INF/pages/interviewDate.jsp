<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<!-- <script src="checkEnteredDate.js"> </script> -->
		<script type = "text/JavaScript">
			function checkEnteredDate() {
				var tempSystemDate = new Date();
				var getFromFormStartDate = document.getElementById("startDate").value;
				var getFromFormEnteredDate = document.getElementById("enteredDate").value;
			
				var startDateInDateType = new Date(getFromFormStartDate);
				var enteredDateInDateType = new Date(getFromFormEnteredDate);
			
				var formattedSystemDate = new Date(tempSystemDate.getFullYear(), tempSystemDate.getMonth() + 1, tempSystemDate.getDate());
				var formattedStartDate = new Date(startDateInDateType.getFullYear(), startDateInDateType.getMonth() + 1, startDateInDateType.getDate());
				var formattedEnteredDate = new Date(enteredDateInDateType.getFullYear(), enteredDateInDateType.getMonth() + 1, enteredDateInDateType.getDate());
			
				if(formattedEnteredDate >= formattedSystemDate && formattedEnteredDate < formattedStartDate) {
					return true;
				}
				else {
					alert("Please enter interview date between today's date and start date of program");
					return false;
				}
			}
      	</script>
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
<%-- <center> --%>

		

		<div align="center">
			<c:url var = "myAction" value="interview.obj"></c:url>
			<form:form method="post" modelAttribute="applicationBean" action="${myAction}" onSubmit="return checkEnteredDate();">
				
				<h2>Confirm Interview </h2>
		
				<td>Application ID:</td>
  				<td>
  					<form:input path="applicationId" readonly="true" value="${applicationBean.applicationId}"/>
  					<form:errors path="applicationId" style="color:red"> </form:errors>
  				</td>
  				<td>Interview date:</td>
  				<td>
  					<form:input type="date" id="enteredDate" path="dateOfInterview"/>
  					<form:errors path="dateOfInterview" style="color:red"> </form:errors>
  				</td>
  				
  				<td><input type="hidden" id="startDate" value="${startDate}"/></td>
  				
  				<h5><input type="submit" value="Set interview date"></h5>
  				
			</form:form>
        </div>

<%-- </center> --%>
		 <a href="machome.obj">MAC Homepage</a>
		 <br>
  <br>
<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
	</body>
</html>