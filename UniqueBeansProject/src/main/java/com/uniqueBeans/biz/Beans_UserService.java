package com.uniqueBeans.biz;

import java.util.List;

/*
 * 유저 관련 DAO 작업을 위한 Service 인터페이스 정의
 */
public interface Beans_UserService {
	
	// 유저 정보 등록
	public void insertUser(Beans_UserVO vo);
	
	// 유저 로그인
	public Beans_UserVO loginUser(Beans_UserVO vo);
	
	// 회원가입 중복검사
	public String overRap(Beans_UserVO vo);
	
	// 유저 정보 수정
	public void setUser(Beans_UserVO vo);
	
	//아이디 찾기
	public Boolean searchId(Beans_UserVO vo);
	
	// 비밀번호 찾기
	public Boolean searchPw(Beans_UserVO vo);
	
	// 유저 관리
	List<Beans_UserVO> get_userList(Beans_UserVO vo);
	
	// 마일리지(포인트) 사용
	
	
}
