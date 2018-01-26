				var beanprice;
				var roastprice;
				var grindprice;
				var totalprice = beanprice + roastprice + grindprice;
				$(function() {

				var param = '[';
				
				$('#showOrder').click(function() {
					document.getElementById("mySidenav").style.width = "400px";
					document.getElementById("main").style.marginLeft = "400px";

					param = param.substr(0, param.length - 1);

					param += ']';
					console.log(param);

					$.ajax({
						url : 'orderDetailInput.do',
						method : 'post',
						contentType : 'application/json',
						data : param,
						type : 'text',
						success : function() {
							alert('test');
						}
					});
				});

				$("#kd1").click(
					function() {
						console.log("아라비카 클릭");
						$("#sel_kd").empty();
						$("#sel_ct").empty();
						$("#sel_rt").empty();
						$("#sel_gd").empty();
						$("#sel_pr").empty();
						$("#sel_kd").append("아라비카");
						$.ajax({
							url : 'ajax/country.json',
							dataType : 'json',
							success : function(data) {
								console.log("ajax 연결 성공");
								$('#btn_wrap').empty();
								for (var i = 0; i < data.length; i++) {
									if (data[i].kd == "Arabica") {
										$('#btn_wrap').append(
											"<a class='carousel-control-next'"+
											"href='#myCarousel' data-slide='next'>"
											+ "<img id='shop-option-img2' class='pro_country'"
											+"src='img/country_img/" + data[i].id + ".jpg' alt ='"
											+ data[i].id + "'></a>");
									} else {
										continue;
									}
								}
								var moveLeft = 10;
								var moveDown = 20;

								$(".pro_country").mouseenter(function(e) {
									var mover_country = $(this).attr("alt");
									for (var j = 0; j < data.length; j++) {
										if (mover_country == data[j].id) {
											var color = Chart.helpers.color;
											var config = {
												type : 'radar',
												data : {
												labels : ["Aroma", "Bitters", "Acidity", "Balance", "Body","Sweet" ],
												datasets : [ {
													label : data[j].name,
													borderColor : window.chartColors.yellow,
													backgroundColor : color(window.chartColors.yellow).alpha(0.7).rgbString(),
													pointBackgroundColor : window.chartColors.yellow,
													data : [
														data[j].ar,data[j].bi,data[j].ac,data[j].ba,data[j].bo,data[j].sw ]
													} ]
												}
											};
											$('#canvas').remove();
											$("#canvas_wrap").append("<canvas id='canvas'></canvas>");
											myRadar = new Chart(document.getElementById("canvas"),config);
											$("#info_name").empty();
											$("#info_name").append(data[j].name);
											$("#info_kind").empty();
											$("#info_kind").append(data[j].kind);
											$("#info_price").empty();
											$("#info_price").append(data[j].price);
											$("#info_rt").empty();
											$("#info_rt").append(data[j].price);
											$("#sel_kt").empty();
											$("#sel_kt").append(data[j].kind + data[j].name);

											/* 팝업 생성 시작 */
											$('.pro_country').hover(function(e) {
											$('div#pop-up').show();
											$('div#pop-up').css('top',e.pageY+ moveDown);
											$('div#pop-up').css('left',e.pageX+ moveLeft);
											$('div#pop-up').appendTo('body');
										},
										function() {
											$('div#pop-up').hide();
										});
										$('.pro_country').mousemove(function(e) {
											$("div#pop-up").css('top',e.pageY+ moveDown).css('left',e.pageX+ moveLeft);
										});

										/* 팝업생성 끝 */
									} else {
										continue;
									}
								}
								$(".pro_country").click(function() {
									var selected_ct = $(this).attr("alt");
									for(var k=0; k<data.length;k++){
										if(selected_ct==data[k].id){
											$("#sel_ct").empty();
											$("#sel_ct").append(data[k].name);
											$("#sel_pr").empty();
											beanprice = parseInt(data[k].price);
											$("#sel_pr").append(beanprice);
										}else{
											continue;
										}
									}											
								});
							});
						}
					});
				});

				$("#kd2").click(
					function() {
						console.log("로부스타 클릭");
						$("#sel_kd").empty();
						$("#sel_ct").empty();
						$("#sel_rt").empty();
						$("#sel_gd").empty();
						$("#sel_pr").empty();
						$("#sel_kd").append("로부스타");
						$.ajax({
							url : 'ajax/country.json',
							dataType : 'json',
							success : function(data) {
							console.log("ajax 연결 성공");
							$('#btn_wrap').empty();
							for (var i = 0; i < data.length; i++) {
								if (data[i].kd == "Robusta") {
									$('#btn_wrap').append(
										"<a class='carousel-control-next'"+
										"href='#myCarousel' data-slide='next'>"
										+ "<img id='shop-option-img2' class='pro_country'"
										+"src='img/country_img/" + data[i].id + ".jpg' alt ='"
										+ data[i].id + "'></a>");
								} else {
									continue;
								}
							}
							var moveLeft = 10;
							var moveDown = 20;

							$(".pro_country").mouseenter(function(e) {
								var mover_country = $(this).attr("alt");
								for (var j = 0; j < data.length; j++) {
									if (mover_country == data[j].id) {
										var color = Chart.helpers.color;
										var config = {
											type : 'radar',
											data : {
												labels : ["Aroma","Bitters","Acidity","Balance","Body","Sweet" ],
												datasets : [ {
													label : data[j].name,
													borderColor : window.chartColors.yellow,
													backgroundColor : color(window.chartColors.yellow).alpha(0.7).rgbString(),
													pointBackgroundColor : window.chartColors.yellow,
													data : [
													        data[j].ar,data[j].bi,data[j].ac,data[j].ba,data[j].bo,data[j].sw ]
												} ]
											}
										};

										$('#canvas').remove();
										$("#canvas_wrap").append("<canvas id='canvas'></canvas>");
										myRadar = new Chart(document.getElementById("canvas"),config);
										$("#info_name").empty();
										$("#info_name").append(data[j].name);
										$("#info_kind").empty();
										$("#info_kind").append(data[j].kind);
										$("#info_price").empty();
										$("#info_price").append(data[j].price);
										$("#info_rt").empty();
										$("#info_rt").append(data[j].price);

										$("#sel_kt").empty();
										$("#sel_kt").append(data[j].kind+ data[j].name);

										/* 팝업 생성 시작 */
										$('.pro_country').hover(function(e) {
											$('div#pop-up').show();
											$('div#pop-up').css('top',e.pageY+ moveDown);
											$('div#pop-up').css('left',e.pageX+ moveLeft);
											$('div#pop-up').appendTo('body');
										},function() {
											$('div#pop-up').hide();
										});
										$('.pro_country').mousemove(function(e) {
											$("div#pop-up").css('top',e.pageY+ moveDown).css('left',e.pageX+ moveLeft);
										});

										/* 팝업생성 끝 */
									} else {
										continue;
									}
								}

								$(".pro_country").click(function() {
									var selected_ct = $(this).attr("alt");
									for(var k=0; k<data.length;k++){
										if(selected_ct==data[k].id){
											$("#sel_ct").empty();
											$("#sel_ct").append(data[k].name);
											$("#sel_pr").empty();
											beanprice =parseInt(data[k].price);
											$("#sel_pr").append(beanprice);
										}else{
											continue;
										}
									}
																							
								});
							});
						}
					});
				});

				$("#rt0").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("라이트 로스팅");
				});
				$("#rt1").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("시나몬 로스팅");
				});
				$("#rt2").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("미디엄 로스팅");
				});
				$("#rt3").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("하이 로스팅");
				});
				$("#rt4").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("시티 로스팅");
				});
				$("#rt5").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("풀시티 로스팅");
				});
				$("#rt6").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("프렌치 로스팅");
				});
				$("#rt7").click(function() {
					$("#sel_rt").empty();
					$("#sel_rt").append("이탈리안 로스팅");
				});

				$("#gd0").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("Whole Bean");
				});
				$("#gd1").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("Coarse Grind");
				});
				$("#gd2").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("Medium Coarse Grind");
				});
				$("#gd3").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("Medium Grind");
				});
				$("#gd4").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("Medium Fine Grind");
				});
				$("#gd5").click(function() {
					$("#sel_gd").empty();
					$("#sel_gd").append("Fine Grind");
				});
				$(".bpro_finish").click(function() {
					console.log("선택 완료");
					$.ajax({
						url : 'ajax/country.json',
						dataType : 'json',
						success : function(data) {
							for (var k = 0; k < data.length; k++) {
									
								if ($("#sel_ct").text() == data[k].name) {
									if($("#sel_rt").text())
									$("#complpro_table").append(
										"<tr>"+ "<td>"
										+ $("#sel_kd").text()+ "/"
										+ $("#sel_ct").text()+ "/"
										+ $("#sel_rt").text()+ "/"
										+ $("#sel_gd").text()+ "</td>"
										+ "<td>1</td>"
										+ "<td>"+$("#sel_pr").text()+"</td>"
										+ "</tr>");
								} else {
									continue;
								}
							}
						}
					});

					// JSON list 타입 생성
					param += '{"item1":' + '"'+ $("#sel_kd").text() + '",';
					param += '"item2":' + '"'+ $("#sel_ct").text() + '",';
					param += '"item3":' + '"'+ $("#sel_rt").text() + '",';
					param += '"item4":' + '"'+ $("#sel_gd").text() + '",';
					param += '"item5":' + '"'+ $("#sel_kd").text() + '"';
					param += '},';
					
				});

				$("아직 못정함").click(
					function() {
						console.log("주문 완료");
						var sel_tpro;
						sel_tpro = $(this).attr("id");
						console.log(sel_tpro);
						/*sel_tpro= $(".btn-default")this.attr("id");*/
						$("#complpro_table").append(
							"<tr>" + "<td>" + $("#tsel_name").text()
							+ "</td>" + "<td>"
							+ $("#tsel_price").text() + "</td>"
							+ "</tr>");
						});

				});
				$(".roast_hovereffect").click(function() {
					if($(this).attr("id")!="rt0"){
						roastprice = 1000;
					} else{
						roastprice = 0;
					}
					$("#sel_pr").empty();
					$("#sel_pr").append(beanprice+roastprice);
					
				});
				$(".grind_hovereffect").click(function() {
					if($(this).attr("id")!="gd0"){
						grindprice = 1000;
					} else{
						grindprice = 0;
					}
					$("#sel_pr").empty();
					$("#sel_pr").append(beanprice+roastprice+grindprice);
					
				});

					