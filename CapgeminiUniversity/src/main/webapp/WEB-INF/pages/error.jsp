<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>error page</title>

  
  
  <style>

body{
	background-color: #323030;
	color: white;
	
}

</style>
</head>
 
<body>
 <%@ include file = "Header.jsp" %>
<center><h2>
${message}
</h2>

 <img src="images/oops.jpg" style="width:50%">
</center>


  <br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
           
</body>
</html>
