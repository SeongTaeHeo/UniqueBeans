package com.uniqueBeans.biz;

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
	
	// 유저 정보 가져오기
	public Beans_UserVO getUser(Beans_UserVO vo);
	
	// 유저 정보 수정
	public void setUser(Beans_UserVO vo);
}
