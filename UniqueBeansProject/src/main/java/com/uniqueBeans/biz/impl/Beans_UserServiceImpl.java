package com.uniqueBeans.biz.impl;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniqueBeans.biz.Beans_UserService;
import com.uniqueBeans.biz.Beans_UserVO;

@Service("userService")
public class Beans_UserServiceImpl implements Beans_UserService{

	@Autowired
	private Beans_UserDAO userDAO;
	
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
		
		Beans_UserVO user = userDAO.getUserData(vo);
		
		if(user.getId() ==  null) {
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
	public void searchPw(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		userDAO.searchPw(vo);
	}

}
