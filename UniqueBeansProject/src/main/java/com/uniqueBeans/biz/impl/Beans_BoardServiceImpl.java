package com.uniqueBeans.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniqueBeans.biz.Beans_BoardService;
import com.uniqueBeans.biz.Beans_BoardVO;

@Service("beans_boardService")
public class Beans_BoardServiceImpl implements Beans_BoardService{
	
	@Autowired
	private Beans_BoardDAO beans_boardDAO;
	
	@Override
	public void insertBoard(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		beans_boardDAO.insertBoard(vo);
	}

	@Override
	public void updateBoard(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		beans_boardDAO.updateBoard(vo);
	}

	@Override
	public void deleteBoard(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		beans_boardDAO.deleteBoard(vo);
	}

	@Override
	public Beans_BoardVO Free_board_content(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		return beans_boardDAO.Free_board_content(vo);
	}

	@Override
	public List<Beans_BoardVO> Free_board(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		return beans_boardDAO.Free_board(vo);
	}

	@Override
	public void insertReply(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		beans_boardDAO.insertReply(vo);
	}

	@Override
	public void deleteReply(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		beans_boardDAO.deleteReply(vo);
	}

	@Override
	public List<Beans_BoardVO> Reply_List(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		return beans_boardDAO.Reply_List(vo);
	}

	@Override
	public List<Beans_BoardVO> get_myBoardList(Beans_BoardVO vo) {
		// TODO Auto-generated method stub
		return beans_boardDAO.myBoardList(vo);
	}

}
