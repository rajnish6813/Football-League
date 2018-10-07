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

				String file = application.getRealPath("/LeagueFlag/uefa");				
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
					 	
					<h4 style="font-family: Algerian; font-size: 20px; color: white"align="center">UEFA</h4>
					<table width="80%" >
					<tr>
					<td align="center" style="width:25%;height: 40%"><a href="javascript: changeText(1);">
					 <img  src="LeagueFlag/uefa/<%=fileObjects[0].getName()%>"style="width:50%;height: 80%" ></a>
					 <p style="background-color: white; color: blue; font-size: 17px">The UEFA Champions League is an annual continental club football competition organised by the Union of European Football Associations and contested by top-division European clubs.<br>
Current champion: Real Madrid C.F. (13th title)<br>
Dates: Qualifying: 26June – 29 August 2018; Competition proper: 18 September 2018 – 1 June 2019Date founded: 1955<br>
Instances: 2019–20 UEFA Champions League, MORE<br>
Current champion: FC Barcelona (25th title)<br>
Most championships: Real Madrid (33 titles)<br>
Most appearances: Andoni Zubizarreta (622)<br>
CEO: Javier Gomez (2013–)<br>
					</td>			
				
					
					</table></div>
					</div>
					

<!-- The Modal -->


					
								
					<%
				}
				%>
</body>

</html>
