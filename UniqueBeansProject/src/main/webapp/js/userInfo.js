$(function() {
	$('#userSetUp').css('display', 'block');
	$('#buyList').css('display', 'none');
	$('#userMilage').css('display', 'none');
	$('#userBoardView').css('display', 'none');
	$('#userCommenView').css('display', 'none');
	$('p').css('display', 'none').css('color','red');
	$('#userSetPanel').css('display','none');
	
	$('#a1').click(function() {
		$('#userSetUp').css('display', 'block');
		$('#buyList').css('display', 'none');
		$('#userMilage').css('display', 'none');
		$('#userBoardView').css('display', 'none');
		$('#userCommenView').css('display', 'none');
	});

	$('#a2').click(function() {
		$('#userSetUp').css('display', 'none');
		$('#buyList').css('display', 'block');
		$('#userMilage').css('display', 'none');
		$('#userBoardView').css('display', 'none');
		$('#userCommenView').css('display', 'none');
	});

	$('#a3').click(function() {
		$('#userSetUp').css('display', 'none');
		$('#buyList').css('display', 'none');
		$('#userMilage').css('display', 'block');
		$('#userBoardView').css('display', 'none');
		$('#userCommenView').css('display', 'none');
	});

	$('#a4').click(function() {
		$('#userSetUp').css('display', 'none');
		$('#buyList').css('display', 'none');
		$('#userMilage').css('display', 'none');
		$('#userBoardView').css('display', 'block');
		$('#userCommenView').css('display', 'none');
	});

	$('#a5').click(function() {
		$('#userSetUp').css('display', 'none');
		$('#buyList').css('display', 'none');
		$('#userMilage').css('display', 'none');
		$('#userBoardView').css('display', 'none');
		$('#userCommenView').css('display', 'block');
	});
});