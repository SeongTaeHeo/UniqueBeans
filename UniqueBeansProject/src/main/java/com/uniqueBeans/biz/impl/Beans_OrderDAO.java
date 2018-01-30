package com.uniqueBeans.biz.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("orderinfoDAO")
public class Beans_OrderDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 쿼리문 생성
	
	private final String INSERT_ORDERPRODUCT = "insert into orderproduct (order_code, details_number, product_code, quantity)"
			+ "values(?,?,?,?)";
	private final String INSERT_ORDEROPTION = "insert into orderoption(order_code, details_number, grinding, roasting)"
			+ "values(?,?,?,?)";
	private final String INSERT_ORDERINFO = "insert into orderinfo(order_code, id, totalprice, order_status,"
				+ "pay_type, order_require, receive_address_num, receive_address_road, receive_address_detail, receive_address_other, receive_tel,"
				+ "receive_name, order_address, order_tel, order_name)"
				+ "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	
	public void insertOrderProduct(Beans_OrderVO vo){
		System.out.println("dao orderproduct insert");
		conn = (Connection) JDBCUtil.getConnection();
		
		try{
			pstmt = conn.prepareStatement(INSERT_ORDERPRODUCT);
			pstmt.setString(1, vo.getOrder_code());
			pstmt.setInt(2, vo.getDetails_number());
			pstmt.setString(3, vo.getProduct_code());
			pstmt.setInt(4, vo.getQuantity());
			pstmt.executeUpdate();
		} catch(SQLException e){
			System.err.println(e.getMessage());
		} finally{
			JDBCUtil.close(pstmt, conn);
		}
	}
	
	public void insertOrderOption(Beans_OrderVO vo){
		System.out.println("dao orderoption insert");
		conn = (Connection) JDBCUtil.getConnection();
		
		try{
			pstmt = conn.prepareStatement(INSERT_ORDEROPTION);
			pstmt.setString(1, vo.getOrder_code());
			pstmt.setInt(2, vo.getDetails_number());
			pstmt.setString(3, vo.getRoasting());
			pstmt.setString(4, vo.getGrinding());
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.err.println(e.getMessage());
		}finally{
			JDBCUtil.close(pstmt, conn);
		}
	}
	
	public void insertOrderInfo(Beans_OrderVO vo){
		System.out.println("dao orderinfo insert");
		conn = (Connection) JDBCUtil.getConnection();
		
		try{
			pstmt = conn.prepareStatement(INSERT_ORDERINFO);
			pstmt.setString(1, vo.getOrder_code());
			pstmt.setString(2, vo.getId());
			pstmt.setInt(3, vo.getTotalprice());
			pstmt.setString(4, vo.getOrder_status());
			pstmt.setString(5, vo.getPay_type());
			pstmt.setString(6, vo.getOrder_require());
			pstmt.setInt(7, vo.getReceive_address_num());
			pstmt.setString(8, vo.getReceive_address_road());
			pstmt.setString(9, vo.getReceive_address_detail());
			pstmt.setString(10, vo.getReceive_address_other());
			pstmt.setString(11, vo.getReceive_tel());
			pstmt.setString(12, vo.getReceive_name());
			pstmt.setString(13, vo.getOrder_address());
			pstmt.setString(14, vo.getOrder_tel());
			pstmt.setString(15, vo.getOrder_name());
			pstmt.executeUpdate();
		}catch(SQLException e){
			System.err.println(e.getMessage());
		}finally{
			JDBCUtil.close(pstmt, conn);
		}
	}
}