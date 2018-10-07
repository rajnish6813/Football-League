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
}
 */
</style>

</head>
<body>
<div>

				<% 

				String file = application.getRealPath("/TeamsFlag/Europe");				
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
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">EUROPE</h4>
					<table width="80%" >
					<tr>
					<td  style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img id="Germany" src="TeamsFlag/Europe/<%=fileObjects[0].getName()%>"style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Germany</h4>
					</td>
					
					<td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(2);">
					 <img id="Italy" src="TeamsFlag/Europe/<%=fileObjects[1].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Italy</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(3);">
					<img id="Portugal" src="TeamsFlag/Europe/<%=fileObjects[2].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Portugal</h4></td>
					</tr>
					<tr style="line-height: 20px;"></tr>
					
			
					<tr>
					
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(4);">
					<img id="Russia" src="TeamsFlag/Europe/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Russia</h4></td>
					
					<%-- <td style="width:25%;height: 40%"><a href="javascript: changeText(4);">
					 <img id="Russia" src="TeamsFlag/<%=fileObjects[3].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Russia</h4></td>
					 --%><td></td>
					<td style="width:25%;height: 40%"><a href="javascript: changeText(5);">
					 <img id="Spain" src="TeamsFlag/Europe/<%=fileObjects[4].getName()%>" style="width:120%;height: 80%" ></a>
					<h4 align="center" style="color: yellow">Spain</h4></td>
					<td></td>
					<td style="width:25%;height: 40%"> <a href="javascript: changeText(6);">
					<img id="Ukraine" src="TeamsFlag/Europe/<%=fileObjects[5].getName()%>" style="width:120%;height: 80%"></a>
					<h4 align="center" style="color: yellow">Ukraine</h4></td>
					</tr>
					
					</table></div>
					<span style="color: red; background-color: white" >Double click on images for details</span>
					</div>
					

<!-- The Modal -->
<form>
		<div id="myModal" class="modal">

  			<!--  <span class="close">&times;</span> -->
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
        var btn = document.getElementById("Germany")
        document.getElementById("para").innerHTML="<center>Germany</center><br>The Germany national football team is the men's football team that has represented Germany in international competition since 1908. It is governed by the German Football Association, founded in 1900. Ever since the DFB was reinaugurated in 1949 the team has represented the Federal Republic of Germany";
        }
    if (value == 2) 
    {
    	// Get the button that opens the modal
        var btn = document.getElementById("Italy")
        document.getElementById("para").innerHTML="<center>Italy</center><br>The Italy national football team represents Italy in association football and is controlled by the Italian Football Federation, the governing body for football in Italy.";
        }
    if (value == 3) 
    {
	// Get the button that opens the modal
    var btn = document.getElementById("Portugal")
    document.getElementById("para").innerHTML="<center>Portugal</center><br>The Portugal national football team represents Portugal in international men's association football competition since 1921. It is controlled by the Portuguese Football Federation, the governing body for football in Portugal.";
    }
if (value == 4) 
{
	// Get the button that opens the modal
    var btn = document.getElementById("Russia")
    document.getElementById("para").innerHTML="<center>Russia</center><br>The Russia national football team represents Russia in association football and is controlled by the Russian Football Union, the governing body for football in Russia. Russia is a member of UEFA, they won the first edition of the respective continental competition in 1960 as the Soviet Union.";
    }
if (value == 5) 
{
// Get the button that opens the modal
var btn = document.getElementById("Spain")
document.getElementById("para").innerHTML="<center>Spain</center><br>The Spain national football team represents Spain in international men's association football and is controlled by the Royal Spanish Football Federation, the governing body for football in Spain.";
}
if (value == 6) 
{
// Get the button that opens the modal
var btn = document.getElementById("Ukraine")
document.getElementById("para").innerHTML="<center>Ukraine</center><br>The Ukraine national football team is the national football team of Ukraine and is controlled by the Football Federation of Ukraine. After Ukrainian Independence and the country's breakaway from the Soviet Union, they played their first match against Hungary on 29 April 1992.";
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
	 alert("oooooooooo")
     modal.style.display = "none";
 } */
  
</script>
</html>
