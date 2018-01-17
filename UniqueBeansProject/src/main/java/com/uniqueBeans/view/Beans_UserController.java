package com.uniqueBeans.view;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.uniqueBeans.biz.Beans_UserService;
import com.uniqueBeans.biz.Beans_UserVO;

@Controller
@SessionAttributes("loginUser")
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
	@RequestMapping("/getUser.do")
	public String getUser(Beans_UserVO vo, Model model) {
		System.out.println("로그인 메서드 실행");
		String userInfo = userService.getUser(vo);
		
		if(userInfo!=null) {
			model.addAttribute("loginUser", userInfo);
			return "index.jsp";
		} else {
			return "/WEB-INF/errorPage/loginError.jsp";
		}
		
		
	}
}
