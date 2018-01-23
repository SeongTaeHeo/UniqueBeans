package com.uniqueBeans.biz.impl;

import java.sql.PreparedStatement;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("orderDAO")
public class Beans_OrderDAO {
	
	private Connection conn;
	private PreparedStatement pstmt;
	
	// 주문완료 쿼리문
	private final String INSERT_ORDERINFO = 
			"insert into orderinfo"
			+ "(order_code, id, price, quantity, order_date,"
			+ "order_status, pay_type, order_require,"
			+ "send_address, send_tel, send_name, order_address,"
			+ "order_tel, order_name)"
			+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	/*
	 * 주문완료를 위한 메서드
	 */
	public void insertOrder(Beans_OrderVO vo){
		System.out.println("dao 클래스 주문정보 입력");
		conn = (Connection) JDBCUtil.getConnection();
		
		try{
			pstmt = conn.prepareStatement(INSERT_ORDERINFO);
			pstmt.setString(1, vo.getOrder_code());
			pstmt.setString(2, vo.getId());
			pstmt.setInt(3, vo.getPrice());
			pstmt.setInt(4, vo.getQuantity());
			pstmt.setDate(5, vo.getOrder_date());
			pstmt.setString(6, vo.getOrder_status());
			pstmt.setString(7, vo.getPay_type());
			pstmt.setString(8, vo.getOrder_require());
			pstmt.setString(9, vo.getSend_address());
			pstmt.setInt(10, vo.getSend_tel());
			pstmt.setString(11, vo.getSend_name());
			pstmt.setString(12, vo.getOrder_address());
			pstmt.setInt(13, vo.getOrder_tel());
			pstmt.setString(14, vo.getOrder_name());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			System.err.println(e.getMessage());
		} finally {
			JDBCUtil.close(pstmt, conn);
		}
	};
}
