package com.uniqueBeans.view;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;

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

		
		return "redirect:Free_board.do";
	}

	@RequestMapping(value = "insertReply.do")
	public String insertReply(Beans_BoardVO vo) throws IOException {

		
		boardservice.insertReply(vo);
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
		System.out.println(vo.getRe_content());
		boardservice.deleteReply(vo);
		
		return "Free_board_content.do?post_number=" + vo.getPost_number();
	}

	@RequestMapping(value = "deleteReply2.do")
	public String deleteReply2(Beans_BoardVO vo) {
		boardservice.deleteReply(vo);
		return "Contact_board_content.do?contact_seq=" + vo.getContact_seq();
	}
	
	/*
	 * 게시글 불러오기
	 */

	@RequestMapping(value = "/Free_board_content.do")
	public String Free_board_content(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO, Model model) {
		model.addAttribute("board", boardservice.Free_board_content(vo));
		return "redirect:Free_board_content.jsp";
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

	/*
	 * 내가 쓴 게시글 불러오기
	 */
	@RequestMapping("/myGetBoardList.go")
	@ResponseBody
	public List<Beans_BoardVO> dataTransform(HttpServletRequest request, Beans_BoardVO vo) {
		vo.setId(request.getParameter("id"));
		List<Beans_BoardVO> boardList = boardservice.get_myBoardList(vo);
		return boardList;
	}


	// 리플 불러오기
	@RequestMapping(value = "Reply_List.do")
	@ResponseBody
	public List<Beans_BoardVO> Reply_List(HttpServletRequest request, Model model) {
	
		Beans_BoardVO vo = new Beans_BoardVO();
		vo.setPost_number(Integer.parseInt(request.getParameter("number")));
		
		return boardservice.Reply_List(vo);
	}
	
	//문의 게시판 컨트롤러
	
	@RequestMapping(value = "insertContact.do")
	public String insertContact(Beans_BoardVO vo, Beans_BoardDAO beans_boardDAO) throws IOException {
		boardservice.insertContact(vo);
		return "redirect:Contact_board.do";
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
		System.out.println("id = " + vo.getId());
		return "Contact_board_content.do";
	}
	@RequestMapping(value = "Reply_List2.do")
	public String Reply_List2(Beans_BoardVO vo, Model model) {
		model.addAttribute("ReplyList2", boardservice.Reply_List2(vo));
		return "Reply_List2.jsp";
	}
}





