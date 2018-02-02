package com.uniqueBeans.view;

import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.uniqueBeans.biz.Beans_BoardVO;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.Beans_UserService;
import com.uniqueBeans.biz.Beans_UserVO;


@Controller
@SessionAttributes("user")
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
		Beans_UserVO userInfo = userService.loginUser(vo);
		
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
	 * 회원가입 중복검사 기능 메서드
	 */
	@RequestMapping(value = "overrap.go", produces = "application/text; charset=utf8")
	@ResponseBody
	public String overrap(Beans_UserVO vo, HttpServletRequest request) {
		vo.setId(request.getParameter("id"));
		String message = userService.overRap(vo);
		System.out.println(message);
		return message;
	}

	/*
	 * 유저정보를 수정하기 위해 유저정보를 받아오는 메서드
	 */
	@RequestMapping("/userGetUp.do")
	@ResponseBody
	public String userGetUp(HttpServletRequest request) {
		Beans_UserVO vo = new Beans_UserVO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pw"));
		
		if((vo = userService.loginUser(vo)) != null) {
			return "true";
		} else {
			return "false";
		}
	}
	
	/*
	 * 유저정보 수정 사항을 보내기 위한 메서드
	 */
	/*@RequestMapping("/userSetUp.do")
	@ResponseBody
	public void userSetUp(HttpServletRequest request) {
		Beans_UserVO vo = new Beans_UserVO();
		vo.setId(request.getParameter("id"));
		vo.setPwd(request.getParameter("pass"));
		System.out.println(vo.getPwd());
		vo.setAddress(request.getParameter("address"));
		vo.setTel(request.getParameter("phone"));
		vo.setEmail(request.getParameter("email"));
		
		//userService.setUser(vo);
	}*/
	
	
	/*
	 * 로그인한 아이디의 구매내역을 보기 위한 메서드
	 */
	@RequestMapping("/buyList.do")
	public void buyList() {
		
	}
	/*
	 * 아이디 찾기 인증 메일
	 */
	@RequestMapping("/findId.do")
	public String findUserId(Beans_UserVO vo,Model model){
		System.out.println("id2 == " + vo.getName());
		if(userService.searchId(vo)){
			System.out.println("방송완료");
		}else{
			System.out.println("이름 또는 이메일확인 요망");
		}
		
		return "foundpw.jsp";
		
	}
	
	
	/*
	 * 비밀번호 찾기 인증 메일
	 */
	@RequestMapping("/findPw.do")
	public String findUserPw(Beans_UserVO vo, Model model) {	
		
		if(userService.searchPw(vo)) {
			System.out.println("보내졋드아!!!!");
		} else {
			System.out.println("아이디 또는 비밀번호가 틀렸습니다.");
		}
		
		return "foundpw.jsp";
	}
	
	// 구매내역 보기
	@RequestMapping("/userBuyList.do")
	@ResponseBody
    public List<Beans_OrderVO> getBuyList(Beans_UserVO vo, Model model) {
	   List<Beans_OrderVO> list = userService. getUserBuyList(vo);
	  
	   return list;
    }
	
	/*
	 * 유저 관리를 위한 메서드(미완성)
	 */
	@RequestMapping("/userList.do")
	public List<Beans_UserVO> dataTransform(HttpServletRequest request, Beans_UserVO vo){
		vo.setId(request.getParameter("id"));
		List<Beans_UserVO> userList=userService.get_userList(vo);
		return userList;
	}
	/*
	 *  포인트 사용, 적립을 위한 메서드
	 */
	/*@RequestMapping("/paymentComplete.do")
	public void usepoint(Beans_UserVO vo, HttpServletRequest request){
		userService.usePoint(vo);
	}*/
	
}
