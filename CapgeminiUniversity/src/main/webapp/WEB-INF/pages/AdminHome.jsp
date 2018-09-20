<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Admin operations</title>
<style type="text/css">
#footer{
	background-color:grey;
    padding:1px;
    color: white;
    bottom: 0;
  
}
body {
   background-color:NightRider;
    font-family: Verdana, sans-serif; margin:0;
    color: white;
    background-image: url("images/background2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
   
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
    background-color:aliceblue;
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
<center><h1 style="font-family:arial,serif; color:cyan;">University Admission Portal </h1></center>

</div>
<br>

<div>
  <nav>
    
        <ul>
         <li><a href="index.obj">Logout</a></li>
            
            <li><a href="viewApplicantsByScheduleId.obj">View Applicants</a></li>
            <li class="dropdown">
              <a href="javascript:void(0)" class="dropbtn">Programs Scheduled</a>
              <div class="dropdown-content">
                <a href="beforeAddSchedule.obj">Add Schedule</a>
                <a href="prepareDeleteProgramSchedule.obj">Delete Schedule</a>
                <a href="prepareViewByDateProgramSchedule.obj">view Scheduled Programs</a>
              </div>
            </li>
            <li class="dropdown">
                <a href="javascript:void(0)" class="dropbtn">Programs Offered</a>
                <div class="dropdown-content">
                  <a href="addProgramsOffered.obj">Add Program</a>
                  <a href="updateDelete.obj">Update/Delete Program</a>
                </div>
              </li>
          </ul>
    
  </nav>

</div>
<center>
<br>
<h3>Welcome to Admin Portal</h3>
<br>
<br>
<br>
 <img src="images/admin.jpg"  style="width:170px;height:170px;">
 <br>
 <br>
 <br>
 <br>
 </center>
<%-- <%@ include file = "Footer.jsp" %> --%>

<div id="footer">
<h3> Contact Us</h3>
Address: DivyaSree TechnoPark, EPIP Zone, Whitefield, Bengaluru, Karnataka 560066       <br>
Telephone: +91-9876543278, Fax: +91-755 2670562 <br>
 Email: enquiryhelp@university.com<br>
<center>
<p>© 2018 All Rights Reserved Terms of Use and Privacy Policy<p>
</center>
</div>

  
</body>
</html>