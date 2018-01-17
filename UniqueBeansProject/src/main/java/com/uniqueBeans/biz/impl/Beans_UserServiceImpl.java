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
	public String getUser(Beans_UserVO vo) {
		// TODO Auto-generated method stub
		
		Beans_UserVO user = userDAO.getUserData(vo);
		
		if(vo.getPwd().equals(user.getPwd())) {
			System.out.println("로그인 성공");
			return user.getId();
		} else {
			System.out.println("로그인 실패");
			return null;
		}
	}

}
