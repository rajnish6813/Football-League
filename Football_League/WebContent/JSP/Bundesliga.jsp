<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


</head>
<body>
<div>

				<% 

				String file = application.getRealPath("/LeagueFlag/Bundesliga");				
				File f = new File(file);
				String [] fileNames = f.list();
				File [] fileObjects= f.listFiles();
				for (int i = 0; i < fileObjects.length; i++) {
					
					if(!fileObjects[i].isDirectory()) {
						//out.println(fileObjects[i].getName());
						//fileObjects.length;
					%>
					<%}%>
					
					<div id="div">
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">BUNDESLIGA</h4>
					<table width="80%" >
					<tr>
					<td align="center" style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img  src="LeagueFlag/Bundesliga/<%=fileObjects[0].getName()%>"style="width:50%;height: 80%" ></a>
					 <p style="background-color: white; color: blue; font-size: 17px">The Bundesliga is a professional association football league in Germany and the football league with the highest average stadium attendance worldwide. At the top of the German football league system, the Bundesliga is Germany's primary football competition.<br>
Current champion: FC Bayern Munich (27th title)<br>
Most championships: Bayern Munich (27 titles)<br>
Most appearances: Karl-Heinz Körbel (602)<br>
Top goalscorer: Gerd Müller (365 goals)<br>
Headquarters: Frankfurt, Germany</p>
					</td>			
				
					
					</table></div>
					</div>
					

<!-- The Modal -->


					
								
					<%
				}
				%>
</body>

</html>
