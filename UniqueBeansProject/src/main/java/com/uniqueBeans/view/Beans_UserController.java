package com.uniqueBeans.view;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.uniqueBeans.biz.Beans_UserService;
import com.uniqueBeans.biz.Beans_UserVO;

@Controller
public class Beans_UserController {
	
	@Autowired
	private Beans_UserService userService;
	
	/*
	 * 회원가입 insertUser.do 메서드
	 */
	@RequestMapping("/insertUser.do")
	public String insertUser(Beans_UserVO vo) {
		System.out.println("회원가입 메서드 실행");
		userService.insertUser(vo);
		
		return "index.jsp";
	}

	/*
	 * 로그인을 위한 getUser.do 메서드
	 */
	@RequestMapping("/getUser.go")
	public String getUser(Beans_UserVO vo, HttpSession session) {
		System.out.println("로그인 메서드 실행");
		String userInfo = userService.getUser(vo);
		
		if(userInfo!=null) {
			session.setAttribute("loginUser", userInfo);
			return "index.jsp";
		} else {
			return "/WEB-INF/errorPage/loginError.jsp";
		}
	}
	
	/*
	 * 로그아웃을 위한 메서드
	 */
	@RequestMapping("/logout.do")
	public String logout(HttpSession session, HttpServletResponse response) throws IOException {
		session.removeAttribute("loginUser");
		System.out.println("session 삭제");
		return "index.jsp";
	}

	/*
	 * 유저정보 수정을 수정하기 위한 메서드
	 */
	@RequestMapping("/userSetUp.do")
	public void userSetUp() {
		
	}
	
	/*
	 * 로그인한 아이디의 구매내역을 보기 위한 메서드
	 */
	@RequestMapping("/buyList.do")
	public void buyList() {
		
	}
	
	/*
	 * 로그인한 아이디의 마일리지 확인하는 메서드
	 */
	@RequestMapping("/userMilage.do")
	public void userMilage() {
		
	}
	
	/*
	 * 로그인한 사람이 작성한 글 확인 위한 메서드
	 */
	@RequestMapping("/userBoardView.do")
	public void userBoardView() {
		
	}
	
	/*
	 * 로그인한 사람이 작성한 댓글 확인 위한 메서드
	 */
	@RequestMapping("/userCommenView.do")
	public void userCommenView() {
		
	}
}
