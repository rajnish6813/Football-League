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

				String file = application.getRealPath("/LeagueFlag/La-liga");				
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
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">La-Liga</h4>
					<table width="80%" >
					<tr>
					<td align="center" style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img id="Germany" src="LeagueFlag/La-liga/<%=fileObjects[0].getName()%>"style="width:50%;height: 80%" ></a>
					 <p style="background-color: white; color: blue; font-size: 17px;">The Primera Division, commonly known as La Liga and as La Liga Santander for sponsorship reasons with Santander, is the men's top professional football division of the Spanish football league system. <br>
Current champion: FC Barcelona (25th title)<br>
Most championships: Real Madrid (33 titles)<br>
Most appearances: Andoni Zubizarreta (622)<br>
CEO: Javier Gomez (2013–)<br>
Did you know: La Liga ranks seventh among domestic professional leagues in the world by total attendance (26,939).</p>
					</td>			
				
					
					</table></div>
					</div>
					

<!-- The Modal -->


					
								
					<%
				}
				%>
</body>

</html>
