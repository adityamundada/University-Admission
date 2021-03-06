<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>University Home</title>
</head>
<style>
body {
   background-color:NightRider;
    font-family: Verdana, sans-serif; margin:0;
    color: white;
    background-image: url("images/background2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
   
}
* {box-sizing: border-box}

.mySlides {display:bold;}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 600px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 0.6s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}
a.nounderline {
   text-decoration:none;
} 


/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 200px) {
  .prev, .next,.text {font-size: 11px}
}
* {
    box-sizing: border-box;
}


</style>

<body  >
 
 <%@ include file = "Header.jsp" %>
  <marquee behavior="alternate">Welcome To University Admission Portal</marquee>
 
<div class="slideshow-container">

<div class="mySlides fade">
  <div class="numbertext">1 / 3</div>
  <img src="images/s1.png" style="width:100%">
  <div class="text">Front</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">2 / 3</div>
  <img src="images/s2.png" style="width:100%">
  <div class="text">Scholars</div>
</div>

<div class="mySlides fade">
  <div class="numbertext">3 / 3</div>
  <img src="images/s3.jpg" style="width:100%">
  <div class="text">ClassRoom</div>
</div>

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
<script>
var slideIndex = 1;
var timer=null;
showSlides(slideIndex);

function plusSlides(n) {
	 clearTimeout(timer);
  showSlides(slideIndex += n);
}

 function currentSlide(n) {
	 clearTimeout(timer);
  showSlides(slideIndex = n);
} 

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
  if (n==undefined){n = ++slideIndex}
  if (n > slides.length) {slideIndex = 1}    
  if (n < 1) {slideIndex = slides.length}
  for (i = 0; i < slides.length; i++) {
      slides[i].style.display = "none";  
  }
  for (i = 0; i < dots.length; i++) {
      dots[i].className = dots[i].className.replace(" active", "");
  }
  slides[slideIndex-1].style.display = "block";  
  dots[slideIndex-1].className += " active";
  timer = setTimeout(showSlides, 2000);
}
</script>
 <center>


    <br>
  <a class="nounderline" href="showLogin.obj">Login</a><br/><br>
 
  <a href="showApplicant.obj">Applicant Home Page</a><br/>
 <p>
Our Vision: "We looks forward to becoming a global centre for technical and professional knowledge."
<br>
Our Mission: "To produce technical professionals abreast with competence,logical mindset,moral and ethical values and inner strength synchronous with the futuristic requirement of global business so as to strengthen the national economy"
</p>
</center>

 <br>
 <br>
 <br>
  <%@ include file = "Footer.jsp" %>
</body>
</html>