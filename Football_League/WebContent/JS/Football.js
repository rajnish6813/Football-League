$(document).ready(function() {
	/*$('#Germany,#Spain,#ukraine,#Russia,#Portugal,#Italy,#ireland,#Contact,#euro').click(function() {
		$('#aboutTeam').show();
		$('#aboutTopLeague,#chartContainer,#Contact,#Play').hide();
		getTeamNews(this.id);
	});
	
	getTeamNews = function(id) {
		$.get('/FL/MessageServlet',{
			id : id
		},function(data){
			try {
					var resData1  = eval("("+data+")");
					$('#aboutTeam').text(resData1.detail).css({"color":	"white"})			
			} catch (e) {
				// TODO: handle exception
				alert('Exceptin')
			}
		})
	}
	
	$('#la-liga,#uefa,#bundesliga').click(function() {
		$('#aboutTeam,#chartContainer,#Contact,#Play,#euro').hide();
		$('#aboutTopLeague').show();
		getTopLeague(this.id);
	});
	
	getTopLeague = function(id) {
		$.get('/FL/TopLeague',{
			id : id
		},function(data){
			try {
					var resData1  = eval("("+data+")");
					$('#aboutTopLeague').text(resData1.detail).css({"color":	"white"})			
			} catch (e) {
				// TODO: handle exception
				alert('Exceptin')
			}
		})
	}
*/

	$('#Cont').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Play,#euro,#Gall,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();
	$('#Contact').show();
$('#Contact').load("JSP/Contact.jsp");
	//alert("done");
})


	$('#Player').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#euro,#Gall,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();
	$('#Play').show();
$('#Play').load("JSP/Player.jsp");
	//alert("done");
})

		$('#Gal').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#euro,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();
	$('#Gall').show();
$('#Gall').load("JSP/Gallery.jsp");
	})



	$('#Europe').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#Gall,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();
	$('#euro').show();
$('#euro').load("JSP/Europe.jsp");
	})
	
		$('#Asiaa').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#Gall,#euro,#usa,#africa,#laliga,#uefa,#bund').hide();
	$('#asia').show();
$('#asia').load("JSP/Asia.jsp");
	})
	
			$('#Amer').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#Gall,#euro,#asia,#africa,#laliga,#uefa,#bund').hide();
	$('#usa').show();
$('#usa').load("JSP/America.jsp");
	})
	
	
	  $('#Africa').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#Gall,#euro,#asia,#usa,#laliga,#uefa,#bund').hide();
	$('#africa').show();
$('#africa').load("JSP/Africa.jsp");
	})
	
	
		$('#la-liga').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#euro,#asia,#usa,#africa,#Gall,#uefa,#bund').hide();
	$('#laliga').show();
$('#laliga').load("JSP/La-liga.jsp");
	})
	
			$('#uefaa').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#euro,#asia,#usa,#africa,#Gall,#laliga,#bund').hide();
	$('#uefa').show();
$('#uefa').load("JSP/Uefa.jsp");
	})
	
				$('#bundesliga').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#euro,#asia,#usa,#africa,#Gall,#laliga,#uefa').hide();
	$('#bund').show();
$('#bund').load("JSP/Bundesliga.jsp");
	})
	
		  $('#home').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#Gall,#euro,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();
	})
	
	$('#Gal').click(function() {
	$('#aboutTeam,#chartContainer,#aboutTopLeague,#Contact,#Play,#euro,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();
	$('#Gall').show();
$('#Gall').load("JSP/Gallery.jsp");
	})

			$('#Home').click(function() {
	$('#aboutTeam,#chartContainer,aboutTopLeague,#Contact,#Play,#euro,#Gall,#asia,#usa,#africa,#laliga,#uefa,#bund').hide();

})
		
});

$(document).ready(function(){
	 $(document).bind("contextmenu",function(e){
	   return false;
	 });
	});

// for pie chart
function Statistics() {
	$('#aboutTeam,#aboutTopLeague,#Contact,#Play,#euro,#Gall,#asia,#usa,#africa,#laliga,#uefa,#bund ').hide();
	$('#chartContainer').show();
	var chart = new CanvasJS.Chart("chartContainer",
			{
				theme: "theme5",
				title:{
					text: "Football League Consoles      " +
							"           Matches Win % "
				},		
				data: [
				{       
					type: "pie",
					showInLegend: true,
					toolTipContent: "{y} - #percent %",
					yValueFormatString: "#,## matches",
				//	yValueFormatString: "#,##0,,.## million",
					legendText: "{indexLabel}",
					dataPoints: [
						{  y: 82, indexLabel: "Eorope" },
						{  y: 20, indexLabel: "Asia" },
						{  y: 85, indexLabel: "America" },
						{  y: 76, indexLabel: "Africa" },
						{  y: 45, indexLabel: "Others"},
					]
				}
				]
			});
			chart.render();
}
