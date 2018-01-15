function free_data(f) {
	if (f.board_title.value == "") {
		alert("제목을 입력해주세요.");
		return false;
	}
	if (f.board_content.value == "") {
		alert("내용을 입력해주세요.");
		return false;
	}

	f.action = "Free_board.jsp";
	f.submit();
}
