package com.uniqueBeans.biz;

import java.util.List;

public interface Beans_BoardService {
	void insertBoard(Beans_BoardVO vo);
	
	void updateBoard(Beans_BoardVO vo);
	
	void deleteBoard(Beans_BoardVO vo);
	
	Beans_BoardVO Free_board_content(Beans_BoardVO vo);
	
	List<Beans_BoardVO> Free_board(Beans_BoardVO vo);
	
	List<Beans_BoardVO> get_myBoardList(Beans_BoardVO vo);
	
	//댓글
	
	void insertReply(Beans_BoardVO vo);
	
	void deleteReply(Beans_BoardVO vo);

	List<Beans_BoardVO> Reply_List(Beans_BoardVO vo);
	
	
	//컨택

	void insertContact(Beans_BoardVO vo);
	
	void updateContact(Beans_BoardVO vo);
	
	void deleteContact(Beans_BoardVO vo);
	
	Beans_BoardVO Contact_board_content(Beans_BoardVO vo);
	
	List<Beans_BoardVO> Contact_board(Beans_BoardVO vo);
	
	//문의 댓글
	
	void insertReply2(Beans_BoardVO vo);
	
	List<Beans_BoardVO> Reply_List2(Beans_BoardVO vo);
}
