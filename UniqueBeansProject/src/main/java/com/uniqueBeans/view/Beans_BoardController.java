package com.uniqueBeans.view;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import com.uniqueBeans.biz.Beans_BoardService;
import com.uniqueBeans.biz.Beans_BoardVO;
import com.uniqueBeans.biz.impl.Beans_BoardDAO;

@Controller
@SessionAttributes("board")
public class Beans_BoardController {
	@Autowired
	private Beans_BoardService boardservice;
	
	@RequestMapping("/dataTransform.do")
	@ResponseBody
	public List<Beans_BoardVO> dataTransform(Beans_BoardVO vo){
		vo.setSearchCondition("POST_TITLE");
		vo.setSerachKeyword("");
		List<Beans_BoardVO> boardList=boardservice.getBoardList(vo);
		return boardList;
	}
	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap(){
		Map<String, String> conditionMap=new HashMap<String,String>();
		conditionMap.put("제목", "POST_TITLE"); 
		conditionMap.put("내용", "POST_CONTENTS");
		return conditionMap;
	}
	@RequestMapping(value="/insertBoard.do")
	public String insertBoard(Beans_BoardVO vo) throws IOException{
		boardservice.insertBoard(vo);
		return "Free_board.do";
	}
	@RequestMapping("/updateBoard.do")
	public String updateBoard(@ModelAttribute("board") Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO){
		System.out.println("번호: "+vo.getPost_number());
		System.out.println("제목: "+vo.getPost_title());
		System.out.println("작성자: "+vo.getId());
		System.out.println("내용: "+vo.getPost_contents());
		System.out.println("등록일: "+vo.getPost_date());
		System.out.println("조회수: "+vo.getPost_views());
		boardservice.updateBoard(vo);
		return "Free_board.do";
	}
	@RequestMapping("/deleteBoard.do")
	public String deleteBoard(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO){
		boardservice.deleteBoard(vo);
		return "Free_board.do";
	}
	@RequestMapping("/Free_board_content.do")
	public String getBoard(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model){
		model.addAttribute("board", boardservice.getBoard(vo));
		return "Free_board_content.jsp";
	}
	@RequestMapping("/Free_board.do")
	public String getBoardList(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model){
		if(vo.getSearchCondition()==null) vo.setSearchCondition("POST_TITLE");
		if(vo.getSerachKeyword()==null) vo.setSerachKeyword("");
		model.addAttribute("boardList", beans_boardDAO.getBoardList(vo));
		return "Free_board.jsp";
	}
}
































