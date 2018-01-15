function contact_data(f) {
	if (f.contact_title.value == "") {
		alert("제목을 입력해주세요.");
		return false;
	}
//	if (f.) {
//		alert("문의 유형을 선택해주세요.");
//		return false;
//	}
	if (f.contact_content.value == "") {
		alert("내용을 입력해주세요.");
		return false;
	}

	f.action = "Contact_board.jsp";
	f.submit();
}
