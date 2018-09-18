<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Admin operations</title>
<style type="text/css">

body{
	background-color: #323030;
	color: white;
}

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    /* position: fixed;  */
    top: 100px;
    left:8px;
    right: 30px;
    overflow: hidden;
    background-color:beige;
    color: brown
}

li {
    float: right;
}

li a, .dropbtn {
    display: inline-block;
    color: black;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover, .dropdown:hover .dropbtn {
    background-color:black;
    color: white;
}

li.dropdown {
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}
.header img {
  float: left;
  width: 60px;
  height: 60px;
  background: #555;
}
.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    text-align: left;
}

.dropdown-content a:hover {
    background-color: bisque;
    color:brown;
    text-decoration-color: black;
}

.dropdown:hover .dropdown-content {
    display: block;
}

</style>
</head>
<body>
<div class="header">
<img src="images/logo.png" alt="logo">
<h1>University Admission Portal </h1>
</div>
<br>

<div>
  <nav>
    
        <ul>
         <li><a href="index.obj">Home</a></li>
            <li><a href="default.asp">Logout</a></li>
            
            <li><a href="viewApplicantsByScheduleId.obj">View Applicants</a></li>
            <li class="dropdown">
              <a href="javascript:void(0)" class="dropbtn">Programs Scheduled</a>
              <div class="dropdown-content">
                <a href="beforeAddSchedule.obj">Add Schedule</a>
                <!-- go to beforeAddSchedule.jsp Page -->
                <a href="prepareDeleteProgramSchedule.obj">Delete Schedule</a>
                <a href="prepareViewByDateProgramSchedule.obj">view Scheduled Programs</a>
              </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programs Offered</a>
                <div class="dropdown-content">
                  <a href="addProgramsOffered.obj">Add Program</a>
                  <a href="updateDelete.obj">Update/Delete Program</a>
                  <!-- <a href="updateDelete.obj">Delete Program</a> --> 
                </div>
              </li>
          </ul>
    
  </nav>

</div>




<br>
<br>
<br>
<a href="adminHome.obj">Go to Admin Home Page</a>


</body>
</html>