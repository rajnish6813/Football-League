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
   // background-color: rgb(0,0,0); /* Fallback color */
    //background-color: rgba(0,0,0,0.4); /* Black w/ opacity */ 
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

				String file = application.getRealPath("/TeamsFlag/Africa");				
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
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">AFRICA</h4>
					<table width="80%" >
					<tr>
					<td  style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img id="Egypt" src="TeamsFlag/Africa/<%=fileObjects[0].getName()%>"style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Egypt</h4>
					</td>
					
					<td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(2);">
					 <img id="Ghana" src="TeamsFlag/Africa/<%=fileObjects[1].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Ghana</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(3);">
					<img id="Libia" src="TeamsFlag/Africa/<%=fileObjects[2].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Libia</h4></td>
					</tr>
					<tr style="line-height: 20px;"></tr>
					
			
					<tr>
					
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(4);">
					<img id="Namibia" src="TeamsFlag/Africa/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Namibia</h4></td>
					
					<%-- <td style="width:25%;height: 40%"><a href="javascript: changeText(4);">
					 <img id="Russia" src="TeamsFlag/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Russia</h4></td>
					 --%><td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(5);">
					 <img id="SA" src="TeamsFlag/Africa/<%=fileObjects[4].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">SA</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(6);">
					<img id="Tunisia" src="TeamsFlag/Africa/<%=fileObjects[5].getName()%>" style="width:120%;height: 80%"></a>
					<h4 align="center" style="color: yellow">Tunisia</h4></td>
					</tr>
					
					</table></div>
					<span style="color: red; background-color: white" >Double click on images for details</span>
					</div>
					

<!-- The Modal -->
<form>
		<div id="myModal" class="modal">

  			 <!-- <span id="gridoff" class="close">&times;</span> -->
    		<div class="modal-content">
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
        var btn = document.getElementById("Egypt")
        document.getElementById("para").innerHTML="<center>Egypt</center><br>The Egypt national football team, known colloquially as The Pharaohs, represents Egypt in men's International association football and is governed by the Egyptian Football Association founded in 1921, the governing body for football in Egypt.";
        }
    if (value == 2) 
    {
    	// Get the button that opens the modal
        var btn = document.getElementById("Ghana")
        document.getElementById("para").innerHTML="<center>Ghana</center><br>The Ghana national football team represents Ghana in international association football and has done so since the 1950s. The team is nicknamed the Black Stars after the Black Star of Africa in the flag of Ghana.";
        }
    if (value == 3) 
    {
	// Get the button that opens the modal
    var btn = document.getElementById("Libia")
    document.getElementById("para").innerHTML="<center>Libya</center><br>The Libya national football team is the national association football team of Libya and is controlled by the Libyan Football Federation. As of 2017, Libya has never qualified for the FIFA World Cup, the only team in North Africa that has failed to do so.";
    }
if (value == 4) 
{
	// Get the button that opens the modal
    var btn = document.getElementById("Namibia")
    document.getElementById("para").innerHTML="<center>Namibia</center><br>The Namibia national football team, nicknamed the Brave Warriors, is the national association football team of Namibia and is controlled by the Namibia Football Association. They have never qualified for the World Cup but have made two appearances in the Africa Cup of Nations.";
    }
if (value == 5) 
{
// Get the button that opens the modal
var btn = document.getElementById("SA")
document.getElementById("para").innerHTML="<center>South Africa</center><br>The South Africa men's national football team represents South Africa in association football and is controlled by the South African Football Association, the governing body for football in South Africa. South Africa's home ground is FNB Stadium, so named due to a naming rights deal, in Johannesburg";
}
if (value == 6) 
{
// Get the button that opens the modal
var btn = document.getElementById("Tunisia")
document.getElementById("para").innerHTML="<center>Tunisia</center><br>The Tunisia national football team, nicknamed Les Aigles de Carthage, is the national team of Tunisia and is controlled by the Tunisian Football Federation. They have qualified for five FIFA World Cups, the first one in 1978, but have yet to make it out of the first round.";
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
 }


//Get the <a> element that closes the modal
//var a = document.getElementsByClassName("close");
//When the user clicks on <span> (x), close the modal
/*  span.onclick = function() {
	// alert("oooooooooo")
     modal.style.display = "none";
	 $('#gridoff').dialog('close');
	 
 } */

  
</script>
</html>
