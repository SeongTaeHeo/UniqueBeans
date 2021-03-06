		window.onload = function() {
	    	window.myRadar = new Chart(document.getElementById("canvas"), defaultchart);
		};
		var color = Chart.helpers.color;
	    var defaultchart = {
	        type: 'radar',
	        data: {
	            labels: ["Aroma", "Bitters", "Acidity", "Balance", "Body", "Sweet"],
	            datasets: [{
	                label: "Skip first dataset",
	                borderColor: window.chartColors.yellow,
	                backgroundColor: color(window.chartColors.yellow).alpha(0.7).rgbString(),
	                pointBackgroundColor: window.chartColors.yellow,
	                data: [
	                 	0,0,0,0,0,0
	                ]
	            }]
	        }
	
	    };
	    

		jQuery(document).ready(function() {
			
			jQuery('#vmap').vectorMap({
				map: 'world_en',
				backgroundColor: '#ffffff',
				borderColor: '#818181',
				borderOpacity: 0.25,
				borderWidth: 1,
				color: '#aaaaaa',
				enableZoom: true,
				hoverColor: '#fed136',
				hoverOpacity: null,
				normalizeFunction: 'linear',
				values: allkind,
				scaleColors: ['#dbcdad', '#7f6854'],
				selectedColor: '#fed136',
				selectedRegions: null,
			    showTooltip: true,
				onRegionClick: function(element, code, region){
					$.ajax({
						url:'ajax/country.json',
						dataType: 'json',
						success: function(data){
							for(var i = 0; i<data.length; i++){
								if(data[i].id != code){
									continue;
								}else{
									var config = {
									        type: 'radar',
									        data: {
									            labels: ["Aroma", "Bitters", "Acidity", "Balance", "Body", "Sweet"],
									            datasets: [{
									                label: data[i].name,
									                borderColor: window.chartColors.yellow,
									                backgroundColor: color(window.chartColors.yellow).alpha(0.7).rgbString(),
									                pointBackgroundColor: window.chartColors.yellow,
									                data: [
									                	data[i].ar,data[i].bi,data[i].ac,data[i].ba,data[i].bo,data[i].sw
									                ]
									            }]
									        },
									        options :{
									        	ticks:{
					                        		beginAtZero: true,
					                        		min: 0,
					                        		max: 10,
					                        		stepSize: 2
					                        	}
									        }
									
									 };
									$('#canvas').remove();
									$("#rd_chart_wrapper").append("<canvas id='canvas'></canvas>");
									myRadar = new Chart(document.getElementById("canvas"), config);
									$("#info_name").empty();
									$("#info_name").append(data[i].name);
									$("#info_kind").empty();
									$("#info_kind").append(data[i].kind);
									$("#info_price").empty();
									$("#info_price").append(data[i].price);
									$("#info_rt").empty();
									$("#info_rt").append(data[i].price);
									
								}
							}
						}
					});
				}
			});
		});
