package com.uniqueBeans.biz;

import java.util.List;

public interface Beans_BoardService {
	void insertBoard(Beans_BoardVO vo);
	
	void updateBoard(Beans_BoardVO vo);
	
	void deleteBoard(Beans_BoardVO vo);
	
	Beans_BoardVO Free_board_content(Beans_BoardVO vo);
	
	List<Beans_BoardVO> Free_board(Beans_BoardVO vo);
}
