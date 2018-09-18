<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>View applicants</title>
	<style>
body{
	background-color: #323030;
	color:white;
}

</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>
		<h2>Applicant Details</h2> 
		<table class="table">
    		<thead>
				<tr>
					<th bgcolor="#c2c2d6">Applicant Id</th>
					<th bgcolor="#c2c2d6">FullName</th>
					<th bgcolor="#c2c2d6">DateOfBirth</th>
					<th bgcolor="#c2c2d6">HighestQualification</th>
					<th bgcolor="#c2c2d6">MarksObtained</th>
					<th bgcolor="#c2c2d6">EmailId</th>
					<th bgcolor="#c2c2d6">Goals</th>
					<th bgcolor="#c2c2d6">Current status</th>
					<th bgcolor="#c2c2d6">Accept</th>
					<th bgcolor="#c2c2d6">Reject</th>
					<th bgcolor="#c2c2d6">Date Of Interview</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="applicantList" items="${applicantList}">
					<tr>
						<td>${applicantList.applicationId}</td>
						<td>${applicantList.fullName}</td>
						<td>${applicantList.dateOfBirth}</td>
						<td>${applicantList.highestQualification}</td>
						<td>${applicantList.marksObtained}</td>
						<td>${applicantList.emailID}</td>
						<td>${applicantList.goals}</td>
						<td>${applicantList.status}</td>
						<c:set var="status" value="APPLIED"/>
						<c:set var="status1" value="CONFIRMED"/>
						<c:set var="status2" value="REJECTED"/>
						<c:set var="status3" value="ACCEPTED"/>
			 		
			 		
			 		<!------------------------  FOR ACCEPT COLUMN (third last td) --------------------->
			 			<c:if test= "${applicantList.status eq status}">  
							<td>
								<a href="accept.obj?appId=${applicantList.applicationId}">Accept</a>
							</td>
			 			</c:if>
			 			<c:if test="${applicantList.status eq status1}">
			  				<td>${applicantList.status}</td>
			  				<!-- <td>Interview already conducted</td> -->
			  			</c:if> 
			  			<c:if test="${applicantList.status eq status3}">
			  				<td>${applicantList.status}</td>
			  				<!-- <td>NA</td> -->
			  			</c:if> 
			  
			  
			  <!------------------------  FOR REJECT COLUMN (second last td) --------------------->
			  			<c:if test= "${applicantList.status eq status}">
							<td>
								<a href="reject.obj?appId=${applicantList.applicationId}">Reject</a>
							</td>
						</c:if>
						<c:if test="${ applicantList.status eq status1}">
			  				<!-- <td>NA</td> -->
			  				<td>NA</td>
			  			</c:if> 
						<c:if test="${ applicantList.status eq status2}">
			  				<!-- <td>NA</td> -->
			  				<td>${applicantList.status}</td>
			  			</c:if> 
						<c:if test="${ applicantList.status eq status3}">
			  				<!-- <td>NA</td> -->
			  				<td>NA</td>
			  			</c:if> 
			  			
			  			
			  <!------------------------  FOR DOI COLUMN (last td) --------------------->
						<c:if test="${applicantList.status eq status}">
			  				<td>NA</td>
						</c:if>
						<c:if test="${applicantList.status eq status1}">
			  				<td>Already conducted</td>
						</c:if>
						<c:if test="${applicantList.status eq status2}">
			  				<td>NA</td>
						</c:if>
						<c:if test="${applicantList.status eq status3}">
			  				<td>${applicantList.dateOfInterview}</td>
						</c:if>
					</tr>
				</c:forEach>
			</tbody>
		</table>
		
		 <a href="machome.obj">MAC Homepage</a>
		<br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
	</body>
</html>