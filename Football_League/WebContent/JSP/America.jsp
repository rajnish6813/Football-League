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
    //background-color: rgb(0,0,0); /* Fallback color */
   // background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
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

				String file = application.getRealPath("/TeamsFlag/America");				
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
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">AMERICA</h4>
					<table width="80%" >
					<tr>
					<td  style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img id="Argentina" src="TeamsFlag/America/<%=fileObjects[0].getName()%>"style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Argentina</h4>
					</td>
					
					<td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(2);">
					 <img id="Brazil" src="TeamsFlag/America/<%=fileObjects[1].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Brazil</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(3);">
					<img id="Chile" src="TeamsFlag/America/<%=fileObjects[2].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Chile</h4></td>
					</tr>
					<tr style="line-height: 20px;"></tr>
					
			
					<tr>
					
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(4);">
					<img id="Colombia" src="TeamsFlag/America/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Colombia</h4></td>
					
					<%-- <td style="width:25%;height: 40%"><a href="javascript: changeText(4);">
					 <img id="Russia" src="TeamsFlag/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Russia</h4></td>
					 --%><td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(5);">
					 <img id="Mexico" src="TeamsFlag/America/<%=fileObjects[4].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Mexico</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(6);">
					<img id="Urugway" src="TeamsFlag/America/<%=fileObjects[5].getName()%>" style="width:120%;height: 80%"></a>
					<h4 align="center" style="color: yellow">Urugway</h4></td>
					</tr>
					
					</table></div>
					<span style="color: red; background-color: white" >Double click on images for details</span>
					</div>
					

<!-- The Modal -->
<form>
		<div id="myModal" class="modal">

  			 <!-- <span class="close">&times;</span> -->
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
        var btn = document.getElementById("Argentina")
        document.getElementById("para").innerHTML="<center>Argentina</center><br>The Argentina national football team represents Argentina in football and is controlled by the Argentine Football Association, the governing body for football in Argentina. Argentina's home stadium is Estadio Monumental Antonio Vespucio Liberti in Buenos Aires.";
        }
    if (value == 2) 
    {
    	// Get the button that opens the modal
        var btn = document.getElementById("Brazil")
        document.getElementById("para").innerHTML="<center>Brazil</center><br>The Brazil national football team represents Brazil in international men's association football. Brazil is administered by the Brazilian Football Confederation, the governing body for football in Brazil. They have been a member of FIFA since 1923 and member of CONMEBOL since 1916.";
        }
    if (value == 3) 
    {
	// Get the button that opens the modal
    var btn = document.getElementById("Chile")
    document.getElementById("para").innerHTML="<center>Chile</center><br>The Chile national football team represents Chile in major international football competitions and is controlled by the Federación de Fútbol de Chile which was established in 1895. The team is commonly referred to as La Roja";
    }
if (value == 4) 
{
	// Get the button that opens the modal
    var btn = document.getElementById("Colombia")
    document.getElementById("para").innerHTML="<center>Colombia</center><br>The Colombia national football team represents Colombia in international football competitions and is overseen by the Colombian Football Federation. It is a member of the CONMEBOL and is currently ranked 16th in the FIFA World Rankings";
    }
if (value == 5) 
{
// Get the button that opens the modal
var btn = document.getElementById("Mexico")
document.getElementById("para").innerHTML="<center>Mexico</center><br>The Mexico national football team represents Mexico in international football and is governed by the Mexican Football Federation. It competes as a member of CONCACAF, which encompasses the countries of North and Central America, and the Caribbean. The team plays its home games at the Estadio Azteca";
}
if (value == 6) 
{
// Get the button that opens the modal
var btn = document.getElementById("Urugway")
document.getElementById("para").innerHTML="<center>Uruguay</center><br>The Uruguay national football team represents Uruguay in international association football and is controlled by the Uruguayan Football Association, the governing body for football in Uruguay. The current head coach is Óscar Tabárez. The Uruguayan team is commonly referred to as La Celeste";
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
 /* span.onclick = function() {
	 //alert("oooooooooo")
     modal.style.display = "none";
 } */
  
</script>
</html>
