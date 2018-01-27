$(function() {
	
	$('#phone').keyup(function() {
		var check = $('#phone').val();

		this.value = autoHypenPhone(check);
	});

	function autoHypenPhone(str) {
		str = str.replace(/[^0-9]/g, '');
		var tmp = '';

		if (str.length < 4) {
			return str;
		} else if (str.length < 8) {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			return tmp;
		} else {
			tmp += str.substr(0, 3);
			tmp += '-';
			tmp += str.substr(3, 4);
			tmp += '-';
			tmp += str.substr(7);
			return tmp;
		}
	}
})