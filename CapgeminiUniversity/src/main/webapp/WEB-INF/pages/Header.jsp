<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Header</title>
<style>
body {
   background-color:NightRider;
    font-family: Verdana, sans-serif; margin:0;
    color: white;
    background-image: url("images/background2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
   
}

/* Style the header */
.header img {
  float: left;
  width: 60px;
  height: 60px;
  background: #555; 
}

.header h1 {
float: center;
  position:relative;
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
a{
	padding: 0px;
}
.header .homeLogo{
	width: 30px;
	height: 30px;
}

 
</style>
</head>
<body>
<div class="header">

<img src="images/logo.png" alt="logo">
<center><h1 style="font-family:arial,serif; color:cyan;">University Admission Portal </h1></center>
<ul>

       <li> <a href="index.obj"><img class ="homeLogo" src="images/homeimage.png" ></img></a></li>  
       
</ul>

</div>
</body>
</html>