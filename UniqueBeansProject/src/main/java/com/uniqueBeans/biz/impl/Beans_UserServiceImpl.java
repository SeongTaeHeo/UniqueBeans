package com.uniqueBeans.biz.impl;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import javax.annotation.Resource;
import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.MailSender;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

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

}
