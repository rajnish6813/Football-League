<%@ page import="java.io.*" %>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
* {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 750px;
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
  color: blue;
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
  color: maroon;
  font-size: 20px;
  font-family:Algerian;
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
  top: 10;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #0000ff;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
/* .fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.s;
  animation-name: fade;
  animation-duration: 1.5s;
}

@-webkit-keyframes fade {
  from {opacity: 50} 
  to {opacity: 10}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}
 */
/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}
</style>
</head>
	<div>

				<% 

				String file = application.getRealPath("/Top10Players");				
				File f = new File(file);
				String [] fileNames = f.list();
				File [] fileObjects= f.listFiles();
				for (int i = 0; i < fileObjects.length; i++) {
					
					if(!fileObjects[i].isDirectory()) {
						//out.println(fileObjects[i].getName());
						//fileObjects.length;
					%>
					<%
					}%>
										<%
				}
				%>
					 <!-- Slideshow container -->
<div class="slideshow-container" style=" color: blue;">
<h4 style="background-color:white; font-family: Algerian; font-size: 150%;" align="center">TOP 10 PLAYERS</h4>
<div class="mySlides ">
  <div class="numbertext">1 / 10</div>
  <img src="Top10Players/<%=fileObjects[0].getName()%>" style="width:100%">
  <div class="text">Cristiano Ronaldo</div>
</div>

<div class="mySlides ">
  <div class="numbertext">2 / 10</div>
   <img src="Top10Players/<%=fileObjects[1].getName()%>" style="width:100%">
  <div class="text">Lionel Messi</div>
</div>

<div class="mySlides ">
  <div class="numbertext">3 / 10</div>
   <img src="Top10Players/<%=fileObjects[2].getName()%>" style="width:100%">
  <div class="text">Jr. Neymar</div>
</div>

<div class="mySlides ">
  <div class="numbertext">4 / 10</div>
   <img src="Top10Players/<%=fileObjects[3].getName()%>" style="width:100%">
  <div class="text">Zinedine Zidane</div>
</div>

<div class="mySlides ">
  <div class="numbertext">5 / 10</div>
   <img src="Top10Players/<%=fileObjects[4].getName()%>" style="width:100%">
  <div class="text">Eden Hazard</div>
</div>

<div class="mySlides ">
  <div class="numbertext">6 / 10</div>
   <img src="Top10Players/<%=fileObjects[5].getName()%>" style="width:100%">
  <div class="text">Antoine Griezmann</div>
</div>

<div class="mySlides ">
  <div class="numbertext">7 / 10</div>
   <img src="Top10Players/<%=fileObjects[6].getName()%>" style="width:100%">
  <div class="text">Paul Pogba</div>
</div>

<div class="mySlides ">
  <div class="numbertext">8 / 10</div>
   <img src="Top10Players/<%=fileObjects[7].getName()%>" style="width:100%">
  <div class="text">Luis Suárez</div>
</div>

<div class="mySlides ">
  <div class="numbertext">9 / 10</div>
   <img src="Top10Players/<%=fileObjects[8].getName()%>" style="width:100%">
  <div class="text">Pelé</div>
</div>

<div class="mySlides ">
  <div class="numbertext">10 / 10</div>
   <img src="Top10Players/<%=fileObjects[9].getName()%>" style="width:100%">
  <div class="text">Luka Modric</div>
</div> 

<a class="prev" onclick="plusSlides(-1)">&#10094;</a>
<a class="next" onclick="plusSlides(1)">&#10095;</a>

</div>
<br>

<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
    <span class="dot" onclick="currentSlide(4)"></span> 
  <span class="dot" onclick="currentSlide(5)"></span> 
    <span class="dot" onclick="currentSlide(6)"></span> 
  <span class="dot" onclick="currentSlide(7)"></span> 
    <span class="dot" onclick="currentSlide(8)"></span> 
  <span class="dot" onclick="currentSlide(9)"></span> 
    <span class="dot" onclick="currentSlide(10)"></span> 
</div>
					
					
					
					
					


	</div>
</html>

<script>

var slideIndex = 1;
showSlides(slideIndex);

// Next/previous controls
function plusSlides(n) {
  showSlides(slideIndex += n);
}

// Thumbnail image controls
function currentSlide(n) {
  showSlides(slideIndex = n);
}

function showSlides(n) {
  var i;
  var slides = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("dot");
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
} 

</script>