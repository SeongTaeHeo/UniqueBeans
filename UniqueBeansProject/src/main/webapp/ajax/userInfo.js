$(function(){
	var userId = $('#userInfo').attr('value');
	
	/*유저정보 수정전 비밀번호 입력 확인*/
	$('#enter_info').click(function(){
		var userPw = $('#pass').val();
		var param = {'id': userId, 'pw': userPw};
		
		console.log(param);
		$.ajax({
			url:'userGetUp.do',
			data: param,
			type: 'post',
			
			success: function(data) {
				if(data == 'true') {
					$('#passInput').css('display','none');
					$('#userSetPanel').css('display','block');
				} else {
					alert('비밀번호가 틀렸습니다.');
				}
			},
			error: function() {
				alert('현재 서버와의 통신이 불안정합니다.');
			}
		});
	});
	
	/*유저정보 수정 비밀번호 일치여부 확인*/
	$('#passCheck2').keyup(function() {
		var check1 = $('#passCheck1').val();
		var check2 = $('#passCheck2').val();
		
		if(check1 == check2) {
			$('p').css('display','block');
			$('p').text('비밀번호가 일치합니다.');
		} else {
			$('p').text('비밀번호가 일치하지 않습니다.')
		}
	});
	
	/*유저정보 수정하기*/
	$('#userSetCommit').click(function(){
		var id = $('#userInfo').attr('value');
		var pass = $('#passCheck2').val();
		var address = $('#address').val();
		var phone = $('#phone').val();
		var email = $('#email').val();
		var param = {
				'id': id,
				'pass': pass,
				'address': address,
				'phone': phone,
				'email': email
		};
		
		$.ajax({
			url: 'userSetUp.do',
			data: param,
			type: 'post',
			
			success: function() {
				alert('수정이 완료 되었습니다.');
			},
			
			error: function() {
				alert('현재 서버와의 통신이 불안정 합니다.');
			}
		});
	});
	
	/*내가 쓴 글 보기*/
	var userId = $('#userInfo').attr('value');
	$.getJSON('myGetBoardList.go?id=' + userId, function(data) {
		var html = '<h1>내가 쓴 글 보기</h1>' +
			'<table class="bg-light table'+ 
			'table-hover table-sm text-center'+ 
			'form-radius" style="margin-top: 150px">'+
			'<thead><tr>'+
			'<th class="board_no">글 번호</th>'+
			'<th class="board_opt">말머리</th>'+
			'<th class="board_title">제 목</th>'+
			'<th class="board_write">작성자</th>'+
			'<th class="board_date">작성일</th>'+
			'<th class="board_cnt">조회수</th>'+
			'</tr></thead><tbody>';
		$(data).each(function(index, board){
			html += '<tr>';
			html += '<td>' + board.post_number + '</td>';
			html += '<td>' + board.post_option + '</td>';
			html += '<td><a href="Free_board_content.do?post_number=' + board.post_number + '">' +
				board.post_title + '</a></td>';
			html += '<td>' + board.id + '</td>';
			html += '<td>' + board.post_date + '</td>';
			html += '<td>' + board.post_views + '</td>';
			html += '</tr>';
		});
		
		html += '</tbody></table>';
		$('#userBoardView').html(html);
	});
	
	/*
	 * (User)전체 주문 내역 보기
	 */
	$.getJSON('userBuyList.do?id=' + userId, function(data) {
		var html = '<h1>구매내역</h1>' +
			'<table class="table">'+ 
			'<thead style="text-align: center;">'+ 
			'<th>주문번호</th>'+
			'<th>상세주문번호</th>'+
			'<th>상품명</th>'+
			'<th>가격</th>'+
			'<th>수량</th>'+
			'<th>주문자</th>'+
			'<th>주문상태</th>'+
			'</thead><tbody style="text-align: center;">';
		$(data).each(function(index, orderList){
			html += '<tr>';
			html += '<td>' + orderList.order_code + '</td>';
			html += '<td>' + orderList.details_number + '</td>';
			html += '<td><a href="userOrderDetail.do?order_code=' + orderList.order_code + '&details_number=' + orderList.details_number + '">' + 
				orderList.product_name + '</a></td>';
			html += '<td>' + orderList.totalprice + '</td>';
			html += '<td>' + orderList.quantity + '</td>';
			html += '<td>' + orderList.id + '</td>';
			html += '<td>' + orderList.order_status + '</td>';
			html += '</tr>';
		});
		
		html += '</tbody></table>';
		$('#buyList').html(html);
	});
	
	/*
	 * (Admin)전체 주문 내역 보기
	 */
	$.getJSON('showOrderList.do', function(data) {
		var html = '<h1>판매내역</h1>' +
			'<table class="table">'+ 
			'<thead style="text-align: center;">'+ 
			'<th>주문번호</th>'+
			'<th>상세주문번호</th>'+
			'<th>상품명</th>'+
			'<th>가격</th>'+
			'<th>수량</th>'+
			'<th>주문자</th>'+
			'<th>주문상태</th>'+
			'</thead><tbody style="text-align: center;">';
		$(data).each(function(index, orderList){
			html += '<tr>';
			html += '<td>' + orderList.order_code + '</td>';
			html += '<td>' + orderList.details_number + '</td>';
			html += '<td><a href="userOrderDetail.do?order_code=' + orderList.order_code + '&details_number=' + orderList.details_number + '">' + 
				orderList.product_name + '</a></td>';
			html += '<td>' + orderList.totalprice + '</td>';
			html += '<td>' + orderList.quantity + '</td>';
			html += '<td>' + orderList.id + '</td>';
			html += '<td>' + orderList.order_status + '</td>';
			html += '</tr>';
		});
		
		html += '</tbody></table>';
		$('#orderList').html(html);
	});
	
});














