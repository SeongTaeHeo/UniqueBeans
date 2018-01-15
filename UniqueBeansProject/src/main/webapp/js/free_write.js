function free_data(f) {
	if (f.post_title.value == "") {
		alert("제목을 입력해주세요.");
		return false;
	}
	if (f.post_contents.value == "") {
		alert("내용을 입력해주세요.");
		return false;
	}

	f.action = "Free_board.jsp";
	f.submit();
}
