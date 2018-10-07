<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* The Modal (background) */
.modal {
    display: none; /* Hidden by default */
    position: fixed; /* Stay in place */
    z-index: 1; /* Sit on top */
    padding-top: 100px; /* Location of the box */
    left: 25%;
    top: 0;
    
    width: 50%; /* Full width */
    height: 100%; /* Full height */
    overflow: auto; /* Enable scroll if needed */
/*  //  background-color: rgb(0,0,0); */ /* Fallback color */
   /*// /* background-color: rgba(0,0,0,0.4); */ /* Black w/ opacity */
}

/* Modal Content */
.modal-content {
    background-color: white;
    margin: auto;
    padding: 20px;
    border: 1px solid #888;
    width: 80%;
}

/* The Close Button */
/* .close {
    color: red;
    float: right;
    font-size: 20px;
    font-weight: bold;
    font: bold;
}
.close:hover,.close:focus {
    color: yellow;
    text-decoration: overline;
    cursor: pointer;
} */

</style>

</head>
<body>
<div>

				<% 

				String file = application.getRealPath("/TeamsFlag/Asia");				
				File f = new File(file);
				String [] fileNames = f.list();
				File [] fileObjects= f.listFiles();
				for (int i = 0; i < fileObjects.length-5; i++) {
					
					if(!fileObjects[i].isDirectory()) {
						//out.println(fileObjects[i].getName());
						//fileObjects.length;
					%>
					<%}%>
					
					<div id="div">
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">ASIA</h4>
					<table width="80%" >
					<tr>
					<td  style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img id="India" src="TeamsFlag/Asia/<%=fileObjects[0].getName()%>"style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">India</h4>
					</td>
					
					<td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(2);">
					 <img id="Iran" src="TeamsFlag/Asia/<%=fileObjects[1].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Iran</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(3);">
					<img id="Pakistan" src="TeamsFlag/Asia/<%=fileObjects[2].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Pakistan</h4></td>
					</tr>
					<tr style="line-height: 20px;"></tr>
					
			
					<tr>
					
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(4);">
					<img id="Srilanka" src="TeamsFlag/Asia/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Srilanka</h4></td>
					
					<%-- <td style="width:25%;height: 40%"><a href="javascript: changeText(4);">
					 <img id="Russia" src="TeamsFlag/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Russia</h4></td>
					 --%><td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(5);">
					 <img id="Thailand" src="TeamsFlag/Asia/<%=fileObjects[4].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Thailand</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(6);">
					<img id="UAE" src="TeamsFlag/Asia/<%=fileObjects[5].getName()%>" style="width:120%;height: 80%"></a>
					<h4 align="center" style="color: yellow">UAE</h4></td>
					</tr>
					
					</table></div>
					<span style="color: red; background-color: white" >Double click on images for details</span>
					</div>
					

<!-- The Modal -->
<form>
		<div id="myModal" class="modal">

  			 <!-- <button class="close" onclick="qwert()">Close</button> -->
    		<div class="modal-content" id="asdf">
    		<p id="para"></p>
    		</div>
    	</div>

	</form>

					
								
					<%
				}
				%>
</body>



<script>

var text = "";
 function changeText(value) {
    var div = document.getElementById("div");

 // Get the modal
    var modal = document.getElementById('myModal');
    
    if (value == 1) 
        {
    	// Get the button that opens the modal
        var btn = document.getElementById("India")
        document.getElementById("para").innerHTML="<center>India</center><br>India national football team represents India in men's international football competitions and is controlled by the All India Football Federation. Under the global jurisdiction of FIFA and governed in Asia by the AFC, the team is also part of the South Asian Football Federation and newly formed South-West Asian Football Federation";
        }
    if (value == 2) 
    {
    	// Get the button that opens the modal
        var btn = document.getElementById("Iran")
        document.getElementById("para").innerHTML="<center>Iran</center><br>The Iran national football team represents Iran in international football competitions and is governed by the Iran Football Federation. From December 2014 until May 2018, the national football team of Iran[8] remained the highest-ranked team in Asia, representing the longest continuous period of time a team has been top of the continent in the rankings.";
        }
    if (value == 3) 
    {
	// Get the button that opens the modal
    var btn = document.getElementById("Pakistan")
    document.getElementById("para").innerHTML="<center>Pakistan</center><br>The Pakistan national football team represents Pakistan association football in FIFA-authorised events and is controlled by the Pakistan Football Federation, the governing body for football in Pakistan. Pakistan's home ground is Punjab Stadium, Lahore";
    }
if (value == 4) 
{
	// Get the button that opens the modal
    var btn = document.getElementById("Srilanka")
    document.getElementById("para").innerHTML="<center>Srilanka</center><br>The Sri Lanka national football team represents Sri Lanka in association football and is controlled by the Football Federation of Sri Lanka, the governing body for football in Sri Lanka. Sri Lanka's home grounds are Sugathadasa Stadium and Kalutara Stadium.";
    }
if (value == 5) 
{
// Get the button that opens the modal
var btn = document.getElementById("Thailand")
document.getElementById("para").innerHTML="<center>Thailand</center><br>The Thailand national football team represents Thailand in international men's association football. Officially nicknamed the War Elephants, the team is controlled by the governing body for football in Thailand, Football Association of Thailand (FAT), which is a member of the Asian Football Confederation (AFC) and the regional ASEAN Football Federation (AFF). ";
}
if (value == 6) 
{
// Get the button that opens the modal
var btn = document.getElementById("UAE")
document.getElementById("para").innerHTML="<center>UAE</center><br>The United Arab Emirates national football team represents the United Arab Emirates in association football and is controlled by the United Arab Emirates Football Association, the governing body for football in United Arab Emirates and competes in AFC";
}
 

 




// When the user clicks the button, open the modal 
btn.onclick = function() {
    modal.style.display = "block";
}

/* // When the user clicks on <span> (x), close the modal
a.onclick = function() {
    modal.style.display = "none";
}
 */

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}



//Get the <a> element that closes the modal
//var a = document.getElementsByClassName("close");
//When the user clicks on <span> (x), close the modal
	/*function qwert() {
  document.getElementById("myModal").style.display="block";	 
	 document.getElementById("asdf").style.display="none";*/
	 //alert("oooooooooo"); 
/*     modal.style.display = "none"; */
 }
 
  
</script>
</html>
