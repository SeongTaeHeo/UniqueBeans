package com.uniqueBeans.biz.impl;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uniqueBeans.biz.Beans_BoardVO;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.Beans_UserService;
import com.uniqueBeans.biz.Beans_UserVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Service("userService")
public class Beans_UserServiceImpl implements Beans_UserService{

	@Autowired
	private Beans_UserDAO userDAO;
	
	// 메일을 보내기 위해 기본값을 가지고 있는 객체(config/presentation-layer.xml)
	@Autowired
	private JavaMailSender sendMail;
	
	/*
	 * 회원가입 정보 입력 메서드
	 */
	@Override
	public void insertUser(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		
		try {
			System.out.println(vo.getBirth());
			java.util.Date date = new SimpleDateFormat("YYYY-MM-DD").parse(vo.getBirth());
			Date sqlDate = new Date(date.getTime());
			vo.setInput_Birth(sqlDate);
			vo.setPoint(100);
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		System.out.println(vo.toString());
		userDAO.insertUserData(vo);
	}

	/*
	 * 유저 정보를 가져오는 메서드
	 */
	@Override
	public Beans_UserVO loginUser(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		
		Beans_UserVO user = userDAO.getUserData(vo);
		
		if(vo.getPwd().equals(user.getPwd())) {
			System.out.println("로그인 성공");
			return user;
		} else {
			System.out.println("로그인 실패");
			return null;
		}
	}
	
	/*
	 * 회원 중복검사를 위해 유저 정보를 가져오는 메서드
	 */
	@Override
	public String overRap(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		
		Beans_UserVO user = userDAO.overRapData(vo);
		
		if(user.getId() == null) {
			return "가입하셔도 좋은 아이디 입니다.";
		} else {
			return "이미 가입된 아이디 입니다.";
		}
	}

	/*
	 * 수정된 유저정보를 업데이트 하는 메서드
	 */
	@Override
	public void setUser(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		System.out.println("유저정보 수정사항 업데이트");
		userDAO.setUserInfo(vo);
	}
	/*
	 * 
	 */
	@Override
	public Boolean searchId(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		String Uid=null;
		if((Uid = userDAO.searchId(vo)) != null) {
			try {
				MimeMessage message = sendMail.createMimeMessage();
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
				
				String setfrom = "zhdpek12@gmail.com";
				String toMail = vo.getEmail();
				String title = "아이디 찾기 결과 입니다.";
				String content = "찾으신 아이디는 " + Uid + "입니다.";
				
				helper.setFrom(setfrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				helper.setText(content);
				
				sendMail.send(message);
				
				return true;
				
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
		} else {
			return false;
		}
		return false;
	}
	
	/*
	 *  비밀번호 찾기
	 */
	@Override
	public Boolean searchPw(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		
		String pwd = null;
		
		
		if((pwd = userDAO.searchPw(vo)) != null) {
			try {
				MimeMessage message = sendMail.createMimeMessage();
				MimeMessageHelper helper = new MimeMessageHelper(message, true, "UTF-8");
				
				String setfrom = "zhdpek12@gmail.com";
				String toMail = vo.getEmail();
				String title = "비밀번호 찾기 결과 입니다.";
				String content = "찾으신 비밀번호는 " + pwd + "입니다.";
				
				helper.setFrom(setfrom);
				helper.setTo(toMail);
				helper.setSubject(title);
				helper.setText(content);
				
				sendMail.send(message);
				
				return true;
				
			} catch (MessagingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				System.out.println(e.getMessage());
			}
		} else {
			return false;
		}
		return false;
	}

	// 유저 구매 내역 보기
	@Override
	public List<Beans_OrderVO> getUserBuyList(Beans_UserVO vo) {
		// TODO Auto-generated method stub

		return userDAO.getBuyList(vo);
	}
	
	// 유저 구매 상세내역 보기
	@Override
	public Beans_OrderVO getUserOrderDetail(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		
		return userDAO.getUserOrderDetail(vo);
	}
	
	// 구매 취소 하기
	@Override
	public void deleteUserOrder(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		
		userDAO.deleteOrderList(vo);
	}
	
	// 배송 접수 완료
	@Override
	public void completUserOrder(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		
		userDAO.completOrderList(vo);;
	}
	
	// 구매 내역 수정하기(배송정보만)
	@Override
	public void updateUserOrder(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		
		userDAO.updateOrder(vo);
	}
	
	@Override
	public List<Beans_UserVO> get_userList(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		return userDAO.userList(vo);

	}
	
	// 포인트 사용, 적립
	@Override
	public String usePoint(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		userDAO.usePoint(vo);
		return "적용됬습니다.";
	}
}
