var beanprice;
var roastprice;
var grindprice;

var param = new Array();
var index = 0;

$(function() {

	$(document).on('click','.btn-sm',function(){
		var select = $(this);
		var id = select.attr('id');
		var list = id.substr(6);
		var array = new Array();
		
		for(i = 0; i < index; i++) {
			if(i == list) {
				param.splice(i,1);
				deleteLine(select);
			}
		}
	});
	
	$('#orderCommand').click(function() {
	
	    $.ajax({
			url: 'orderDetailInput.do',
			method: 'post',
			contentType: 'application/json',
			type: 'text',
			data: JSON.stringify(param),
			
			success: function(data) {
				alert(data);
				$('#orderDetail').val(param).submit();
			}
		});
	});
	
	$('#showOrder').click(function() {
	   document.getElementById("mySidenav").style.width = "400px";
	   document.getElementById("main").style.marginLeft = "400px";
	    });
	   
	    $("#kd1").click(
	   function() {
	      console.log("아라비카 클릭");
	      // 현재 주문테이블 비우기
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
	               // 해당하는 국가 버튼 생성
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
	            // 해당 국가 차트 속성, 데이터 추가
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
	                     // 차트 불러오기
	                     $("#canvas_wrap").append("<canvas id='canvas'></canvas>");
	                     myRadar = new Chart(document.getElementById("canvas"),config);
	                     // json에 있는 나머지 데이터 불러오기
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
	            // 국가 버튼 클릭시 
	            $(".pro_country").click(function() {
	               // 해당 이미지 alt속성 값으로 json 데이터 찾아서 현재 주문테이블에 데이터 입력
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
	      // 현재 주문 테이블 비우기
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
	            //해당 국가 버튼 생성
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
	            // 이미지의 alt 값을 통해 json에서 데이터를 찾음
	            var mover_country = $(this).attr("alt");
	            for (var j = 0; j < data.length; j++) {
	               if (mover_country == data[j].id) {
	                  // 해당 국가 차트 속성 부여
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
	                  // 차트 생성
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
	            // alt값으로 이름, 가격 찾음
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
	   //현재 테이블의 값을 선택완료 테이블로 옮김
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
	                  + "<td>"+$("#sel_pr").text()+"</td>"
	                  + "<td><button id='delete"+ index + "' type='button' class='btn btn-danger btn-sm'>삭제</button>"
	                  + "</tr>");
	               
	               	var jsonObject = new Object();
	               	
	               	jsonObject.code = data[k].id;
	               	jsonObject.name = data[k].name;
	               	jsonObject.roasting = $("#sel_rt").text();
	               	jsonObject.grind = $("#sel_gd").text();
	               	jsonObject.price = $("#sel_pr").text();
	               	
	               	param.push(jsonObject);
	               	index++;
					
	            } else {
	               continue;
	            }
	         }
	      }
	   });
	   
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
	// 도구 주문완료 테이블에 생성
	$(".add-tpro").click(function(){
	   var sel_tpro_code;
	   sel_tpro_code = $(this).attr("id")
	   console.log(sel_tpro_code);
	   $.ajax({
	      url : 'ajax/product.json',
	      dataType : 'json',
	      success : function(data) {
	         console.log("연결성공!");
	         for(var i=0; i<data.length;i++){
	            if(sel_tpro_code==data[i].code){
	               $("#complpro_table").append(
	                     "<tr>"+ 
	                     "<td>"+ data[i].name +"</td>"
	                     +"<td>"+ data[i].price +"</td>"
	                     + "<td><button id='delete"+ index + "' type='button' class='btn btn-danger btn-sm'>삭제</button>"
	                     +"</tr>"
	               );
	               
	               	var jsonObject = new Object();
	              	
	              	jsonObject.code = data[i].code;
	              	jsonObject.name = data[i].name;
	              	jsonObject.roasting = "";
	              	jsonObject.grind = "";
	              	jsonObject.price = data[i].price;
	              	
	              	param.push(jsonObject);
	              	index++;
					
	            }else{
	               continue;
	            }
	         }
	      }
	   });
   
});
	function deleteLine(obj) {
	    var tr = $(obj).parent().parent();
	 
	    //라인 삭제
	    tr.remove();
	};
