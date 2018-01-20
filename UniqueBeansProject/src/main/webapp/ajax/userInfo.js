$(function(){
	
	/*유저정보 수정전 비밀번호 입력 확인*/
	$('#enter_info').click(function(){
		var userId = $('#userInfo').attr('value');
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
	
	/* 로그인한 아이디의 마일리지 정보 확인 */
	$('#enter_info').click(function(){
		var userId = $('#userInfo').attr('value');
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
	
});














