<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<style>
body {
  margin: 0;
}

/* Style the header */
.header img {
  float: left;
  width: 60px;
  height: 60px;
  background: #555;
}

.header h1 {
  position: relative;
  top: 18px;
  left: 10px;
  color: white;
  
}
ul {
    text-align: right;
    list-style: none;
    margin-top: -35px;
}

ul li {
    display: inline-block;
    padding-left: 10px;
}

ul li:last-child{
    padding-right: 10px;
}
#home{
	background-color: grey;
    color: black;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
   
}

a{
	
	color:white;
}
a:hover, a:active {
    background-color: green;
    color:white;
} 
</style>
</head>
<body>
<div class="header">
<img src="images/logo.png" alt="logo">
<h1>University Admission Portal </h1>
<ul>
        <li id="home"> <a href="index.obj"> Home</a></li> 
       
     </ul>

</div>
</body>
</html>