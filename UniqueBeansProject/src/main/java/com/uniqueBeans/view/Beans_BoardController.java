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

	@ModelAttribute("conditionMap")
	public Map<String, String> searchConditionMap() {
		Map<String, String> conditionMap = new HashMap<String, String>();
		conditionMap.put("제목", "POST_TITLE");
		conditionMap.put("내용", "POST_CONTENTS");
		return conditionMap;
	}

	@RequestMapping(value = "insertBoard.do")
	public String insertBoard(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) throws IOException {
		boardservice.insertBoard(vo);
		return "Free_board.do";
	}

	@RequestMapping(value = "insertReply.do")
	public String insertReply(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) throws IOException {

		boardservice.insertReply(vo);
		System.out.println(vo.getId());
		return "Free_board_content.do";
	}

	@RequestMapping(value = "updateBoard.do")
	public String updateBoard(@ModelAttribute("board") Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) {
		System.out.println("번호: " + vo.getPost_number());
		System.out.println("제목: " + vo.getPost_title());
		System.out.println("작성자: " + vo.getId());
		System.out.println("내용: " + vo.getPost_contents());
		System.out.println("등록일: " + vo.getPost_date());
		System.out.println("조회수: " + vo.getPost_views());
		boardservice.updateBoard(vo);
		return "Free_board.do";
	}

	@RequestMapping(value = "deleteBoard.do")
	public String deleteBoard(Beans_BoardVO vo) {
		boardservice.deleteBoard(vo);
		return "Free_board.do";
	}

	@RequestMapping(value = "deleteReply.do")
	public String deleteReply(Beans_BoardVO vo) {
		boardservice.deleteReply(vo);
		return "Free_board.do";
	}

	/*
	 * 게시글 불러오기
	 */

	@RequestMapping(value = "/Free_board_content.do")
	public String Free_board_content(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model) {
		model.addAttribute("board", boardservice.Free_board_content(vo));
		return "Free_board_content.jsp";
	}

	/*
	 * 게시판 불러오기
	 */

	@RequestMapping(value = "Free_board.do")
	public String Free_board(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model) {
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("POST_TITLE");
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		model.addAttribute("boardList", boardservice.Free_board(vo));
		return "Free_board.jsp";
	}

//	@RequestMapping("/dataTransform.do")
//	@ResponseBody
//	public List<Beans_BoardVO> dataTransform(Beans_BoardVO vo) {
//		vo.setSearchCondition("POST_TITLE");
//		vo.setSearchKeyword("");
//		List<Beans_BoardVO> boardList = boardservice.Free_board(vo);
//		return boardList;
//	}

	@RequestMapping(value = "Reply_List.do")
	public String Reply_List(Beans_BoardVO vo, Model model) {
		model.addAttribute("ReplyList", boardservice.Reply_List(vo));
		return "Reply_List.jsp";
	}
	
	//문의 게시판 컨트롤러
	
	@RequestMapping(value = "insertContact.do")
	public String insertContact(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) throws IOException {
		boardservice.insertContact(vo);
		return "Contact_board.do";
	}
	@RequestMapping(value = "updateContact.do")
	public String updateContact(@ModelAttribute("contact") Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) {
		System.out.println("번호: " + vo.getContact_seq());
		System.out.println("제목: " + vo.getContact_title());
		System.out.println("작성자: " + vo.getId());
		System.out.println("내용: " + vo.getContact_contents());
		System.out.println("등록일: " + vo.getContact_date());
		System.out.println("조회수: " + vo.getContact_views());
		boardservice.updateContact(vo);
		return "Contact_board.do";
	}
	@RequestMapping(value = "deleteContact.do")
	public String deleteContact(Beans_BoardVO vo) {
		boardservice.deleteContact(vo);
		return "Contact_board.do";
	}
	@RequestMapping(value = "/Contact_board_content.do")
	public String Contact_board_content(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model) {
		model.addAttribute("contact", boardservice.Contact_board_content(vo));
		return "Contact_board_content.jsp";
	}
	@RequestMapping(value = "Contact_board.do")
	public String Contact_board(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model) {
		if (vo.getSearchCondition() == null)
			vo.setSearchCondition("CONTACT_TITLE");
		if (vo.getSearchKeyword() == null)
			vo.setSearchKeyword("");
		model.addAttribute("contactList", boardservice.Contact_board(vo));
		return "Contact_board.jsp";
	}
	
	//문의 댓글
	
	@RequestMapping(value = "insertReply2.do")
	public String insertReply2(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) throws IOException {

		boardservice.insertReply2(vo);
		System.out.println(vo.getId());
		return "Contact_board_content.do";
	}
	@RequestMapping(value = "Reply_List2.do")
	public String Reply_List2(Beans_BoardVO vo, Model model) {
		model.addAttribute("ReplyList2", boardservice.Reply_List2(vo));
		return "Reply_List2.jsp";
	}
}


























