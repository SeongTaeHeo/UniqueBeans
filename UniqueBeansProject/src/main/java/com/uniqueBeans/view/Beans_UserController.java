package com.uniqueBeans.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

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
		
		return "testFile.jsp";
	}

	/*
	 * 로그인을 위한 getUser.do 메서드
	 */
	@RequestMapping("/getUser.do")
	public String getUser(Beans_UserVO vo, Model model) {
		System.out.println("로그인 메서드 실행");
		
		model.addAttribute("loginUser", userService.getUser(vo));
		return "index.jsp";
	}
}
