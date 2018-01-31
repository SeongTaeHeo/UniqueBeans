package com.uniqueBeans.biz.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import com.uniqueBeans.biz.Beans_UserVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("userDAO")
public class Beans_UserDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;

	// 회원가입 쿼리문
	private final String INSERT_USER = "insert into customer(id, password, email, birth, tel, name, address_num, address_road, address_detail, address_other, gender, point) values(?,?,?,?,?,?,?,?,?,?,?,?)";
	// 아이디 중복검사
	private final String GET_USER_ID = "select id from customer where id = ?";
	// 로그인을 위하여 DB값과 비교.
	private final String GET_USER_LOGIN = "select * from customer where id = ? and password = ?";
	// 유저정보 수정사항을 업데이트 하는 쿼리문
	private final String SET_USER_INFO = "update customer set password = ?, email = ?, tel = ?, address = ? where id = ?";
	// 아이디 찾기
	private final String FIND_USER_ID = "select id from customer where name=? and email=?";
	// 비밀번호찾기
	private final String FIND_USER_PASSWORD = "select password from customer where id=? and email=?";
	// 유저 리스트 출력하기
	private final String GET_USER_LIST = "select * from customer where id=?";
	// 마일리지 포인트 사용, 적립
	private final String USE_POINT = "update customer set point=?, where id = ?";

	/*
	 * 회원가입을 위한 메서드
	 */
	public void insertUserData(Beans_UserVO vo) {
		System.out.println("dao 클래스 회워정보 insert");
		conn = (Connection) JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(INSERT_USER);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());
			pstmt.setString(3, vo.getEmail());
			pstmt.setDate(4, vo.getInput_Birth());
			pstmt.setString(5, vo.getTel());
			pstmt.setString(6, vo.getName());
			pstmt.setInt(7, vo.getAddress_number());
			pstmt.setString(8, vo.getAddress_road());
			pstmt.setString(9, vo.getAddress_detail());
			pstmt.setString(10, vo.getAddress_other());
			pstmt.setString(11, vo.getGender());
			pstmt.setInt(12, vo.getPoint());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println(e.getMessage());
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
	}

	/*
	 * 아이디 중복검사 메서드
	 */
	public Beans_UserVO overRapData(Beans_UserVO vo) {
		System.out.println("dao 클래스 아이디 중복검사");

		conn = (Connection) JDBCUtil.getConnection();
		Beans_UserVO userId = null;

		try {
			userId = new Beans_UserVO();
			pstmt = conn.prepareStatement(GET_USER_ID);
			pstmt.setString(1, vo.getId());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println("받아온 유저 ID = " + rs.getString(1));

				userId.setId(rs.getString(1));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return userId;
	}

	/*
	 * 로그인 위해 회원정보를 DB에서 가져오는 메서드
	 */
	public Beans_UserVO getUserData(Beans_UserVO vo) {
		System.out.println("dao 클래스 회원정보 get");
		conn = (Connection) JDBCUtil.getConnection();
		Beans_UserVO userInfo = null;

		try {
			userInfo = new Beans_UserVO();
			pstmt = conn.prepareStatement(GET_USER_LOGIN);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getPwd());

			rs = pstmt.executeQuery();

			while (rs.next()) {
				System.out.println("받아온 유저 ID = " + rs.getString(1));
				System.out.println("받아온 유저 PW = " + rs.getString(2));

				userInfo.setId(rs.getString(1));
				userInfo.setPwd(rs.getString(2));
				userInfo.setEmail(rs.getString(3));
				userInfo.setBirth(rs.getString(4));
				userInfo.setTel(rs.getString(5));
				userInfo.setName(rs.getString(6));
				userInfo.setAddress_number(rs.getInt(7));
				userInfo.setAddress_road(rs.getString(8));
				userInfo.setAddress_detail(rs.getString(9));
				userInfo.setAddress_other(rs.getString(10));
				userInfo.setGender(rs.getString(11));
				userInfo.setPoint(rs.getInt(12));
				userInfo.setAdmin(rs.getInt(13));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return userInfo;
	}

	/*
	 * 회원정보 수정 사항을 반영하는 메서드
	 */
	public Boolean setUserInfo(Beans_UserVO vo) {
		conn = (Connection) JDBCUtil.getConnection();

		try {
			pstmt = conn.prepareStatement(SET_USER_INFO);
			pstmt.setString(1, vo.getPwd());
			pstmt.setString(2, vo.getEmail());
			pstmt.setString(3, vo.getTel());
			// pstmt.setString(4, vo.getAddress());
			pstmt.setString(5, vo.getId());
			pstmt.executeUpdate();

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}

		return true;
	}

	/*
	 * 아이디 찾기 메소드
	 */
	public String searchId(Beans_UserVO vo) {
		conn = (Connection) JDBCUtil.getConnection();
		String userId = null;
		try {
			pstmt = conn.prepareStatement(FIND_USER_ID);
			pstmt.setString(1, vo.getName());
			pstmt.setString(2, vo.getEmail());
			System.out.println("id == " + vo.getName());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				System.out.println("받아온 유저 이름=" + vo.getName());
				System.out.println("받아온 유저 email=" + vo.getEmail());

				userId = rs.getString("id");
			}
			System.out.println(userId);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return userId;
	}

	/*
	 * 비밀번호 찾기 메소드
	 */
	public String searchPw(Beans_UserVO vo) {
		conn = (Connection) JDBCUtil.getConnection();
		String userPwd = null;
		try {
			pstmt = conn.prepareStatement(FIND_USER_PASSWORD);
			pstmt.setString(1, vo.getId());
			pstmt.setString(2, vo.getEmail());

			rs = pstmt.executeQuery();

			if (rs.next()) {
				System.out.println("받아온 유저 id=" + vo.getId());
				System.out.println("받아온 유저 email=" + vo.getEmail());

				userPwd = rs.getString("password");
			}
			System.out.println(userPwd);
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
		return userPwd;
	}

	public List<Beans_UserVO> userList(Beans_UserVO vo) {
		System.out.println("가입자 정보 불러오기");
		List<Beans_UserVO> userList = new ArrayList<>();
		conn = (Connection) JDBCUtil.getConnection();
		try {
			pstmt = conn.prepareStatement(GET_USER_LIST);
			pstmt.setString(1, vo.getId());
			rs = pstmt.executeQuery();
			while (rs.next()) {
				Beans_UserVO user = new Beans_UserVO();
				user.setId(rs.getString("ID"));
				user.setPwd(rs.getString("PASSWORD"));
				user.setEmail(rs.getString("EMAIL"));
				user.setBirth(rs.getString("BIRTH"));
				user.setName(rs.getString("NAME"));
				user.setAddress_number(rs.getInt("ADDRESS_NUMBER"));
				user.setAddress_road(rs.getString("ADDRESS_ROAD"));
				user.setAddress_detail(rs.getString("ADDRESS_DETAIL"));
				user.setAddress_other(rs.getString("ADDRESS_OTHER"));
				user.setGender(rs.getString("GENDER"));
				user.setPoint(rs.getInt("POINT"));
				userList.add(user);
			}
		} catch (SQLException e) {
			e.printStackTrace();
			
		} finally {
			JDBCUtil.close(rs, pstmt, conn);
		}
		return userList;
	}
	/*
	 *  마일리지 포인트 사용, 적립 메소드
	 */
	
	public void usePoint(Beans_UserVO vo){
		System.out.println("마일리지 포인트 사용, 적립 메소드");
		try{
			conn = (Connection) JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(USE_POINT);
			pstmt.setInt(1, vo.getPoint());
			pstmt.setString(2, vo.getId());

		} catch(SQLException e){
			e.printStackTrace();
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
	}
	
	
}
