package com.uniqueBeans.biz.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

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
	private final String INSERT_USER = "insert into testtable values(?,?)";
	// 로그인을 위하여 DB값과 비교.
	private final String GET_USER_LOGIN = "select id, pw from testtable where id = ?";
	
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
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			System.err.println(e.getMessage());
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
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
		
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				System.out.println(rs.getString(1));
				System.out.println(rs.getString(2));
				
				userInfo.setId(rs.getString(1));
				userInfo.setPwd(rs.getString(2));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return userInfo;
	}
}
