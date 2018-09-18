<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
body {font-family: Arial, Helvetica, sans-serif;
	background-color: #323030;
	color: white;
	
}
}
form {border: 3px solid #f1f1f1;}



a:link, a:visited {
    background-color: #f44336;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
   
}


</style>
</head>
<body>
 <%@ include file = "Header.jsp" %>
  <center>
<h2>LOGIN PAGE</h2>

<c:url var="myAction" value="checkLogin.obj" />

<form:form method="post" modelAttribute="login" action="${myAction}">

    <img src="images/login1.jpg" style="length:20%" style="width:20%">
  
<br>
<br>
<br>


 <table>
 <tr><td> Enter Login Id:</td><td> <form:input path="userName"/></td></tr>
<tr><td>  Enter Password:</td><td> <form:password path="password"/><br/></td></tr>
</table>
  <input type="submit" value="Login"/>
   
</form:form>
 </center>
<br>
 <br>
 <br>
 <br>
 <br>
 
  <%@ include file = "Footer.jsp" %>

</body>
</html>