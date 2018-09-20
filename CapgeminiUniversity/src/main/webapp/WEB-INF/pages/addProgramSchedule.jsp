<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Schedule the program</title>
<style>
body{
	background-color: #323030;
	color:white;
	 background-image: url("images/background2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>
<center>
<h3>Schedule the program</h3>
<c:url var = "myAction" value="addProgramSchedule.obj"></c:url>

<form:form method="post" modelAttribute="programScheduledBean" action="${myAction}">
<table>
	<tr>
  		<td>Enter Program Schedule ID </td>
  		<td><form:input path="scheduledProgramID"/>
  			<form:errors path="scheduledProgramID" style="color:red"> </form:errors>
  		</td>
  	</tr>
  	
  	<tr>
  		<td>  Enter Program Name </td>
  		<td><form:input path="programName" value="${programName}" readonly="true"/>
  			<form:errors path="programName" style="color:red"> </form:errors>
  		</td>
  	</tr>
	<tr>
  		<td>Enter Location </td>
  		<td><form:input path="location"/>
  			<form:errors path="location" style="color:red"> </form:errors>
  		</td>
  	</tr>
	<tr>
	<%-- <td><s:input path="dateOfBirth" type="date" /></td>
						<td style="color:red"><c:if test="${dob ne null}"> ${dob}  </c:if> <c:if
								test="${dob eq null}">
								<s:errors path="dateOfBirth"></s:errors>
							</c:if></td>
						<td></td>  --%>
  		<td>Enter Start date </td>
  		<td><form:input path="startDate" type = "date" />
  		<p style="color:red">
  		<c:if test="${dateError ne null}"> ${dateError }  </c:if><p> 
  		<c:if test="${dateError eq null}">
  			<form:errors path="startDate" style="color:red" ></form:errors>
  		</c:if>
  		</td>
  	</tr>
  	<tr>
  		<td> Enter End Date </td>
  		<td><form:input path="endDate" type = "date" />
  		<p style="color:red">
  		<c:if test="${dateError ne null}"> ${dateError }  </c:if><p> 
  		<c:if test="${dateError eq null}">
  			<form:errors path="endDate" style="color:red" ></form:errors>
  		</c:if>
  		</td>
  	</tr>
  	<tr>
  		<td>Enter Sessions Per Week </td>
  		<td><form:input path="sessionsPerWeek" placeholder = "i.e 1  2  3" pattern = "[1-6]" title ="Enter a valid session number (1-6)" />
  			<form:errors path="sessionsPerWeek" style="color:red"></form:errors>
  		</td>
  	</tr>
  	
  		
  
  </table>
  <br>
  
  <input type="submit" value="Add Schedule"/>
</form:form>

<c:if test="${programAdded ne null}" >
	<h2>Program schedule added successfully.</h2> <br>
</c:if>

<c:if test="${message ne null}" >
	<p style="color: red" >${message }</p> 
</c:if>

</center>
<br>
<br>
<br>
<a href="adminHome.obj">Go to Admin Home Pagee</a>
<br>
<br>
<br>
<br>
<br>

  <%@ include file = "Footer.jsp" %>
</body>
</html>