$(function() {
	// 유저정보 수정 비밀번호 일치여부 확인
	$('#passCheck2').keyup(function() {
		var check1 = $('#passCheck1').val();
		var check2 = $('#passCheck2').val();

		if (check1 == check2) {
			$('p').css('display', 'block');
			$('p').text('비밀번호가 일치합니다.');
		} else {
			$('p').text('비밀번호가 일치하지 않습니다.')
		}
	});

	// 생년월일 포맷으로 강제 입력
	$('#inputBirth').keyup(function() {
		var check = $('#inputBirth').val();

		this.value = autoHypenBirth(check);
	});

	// 아이디 중복검사
	$('#overrap').click(function() {
		var userID = $('#userID').val();
		var param = {
			'id' : userID
		};

		console.log(param);
		$.ajax({
			url : 'overrap.go',
			type : 'post',
			data : param,

			success : function(data) {
				alert(data);
			}
		});
	});
});

function autoHypenBirth(str) {
	str = str.replace(/[^0-9]/g, '');
	var tmp = '';

	if (str.length < 5) {
		return str;
	} else if (str.length < 7) {
		tmp += str.substr(0, 4);
		tmp += '-';
		tmp += str.substr(4, 2);
		return tmp;
	} else {
		tmp += str.substr(0, 4);
		tmp += '-';
		tmp += str.substr(4, 2);
		tmp += '-';
		tmp += str.substr(6);
		return tmp;
	}
}