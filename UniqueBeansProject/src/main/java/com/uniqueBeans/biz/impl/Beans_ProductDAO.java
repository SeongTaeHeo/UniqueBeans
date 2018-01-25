package com.uniqueBeans.biz.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.uniqueBeans.biz.Beans_ProductVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("productDAO")
public class Beans_ProductDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 상품조회 쿼리문
	private final String SELECT_PRODUCTINFO = "select * from productinfo where product_code=?";
	/*
	 * 상품 조회를 위한 메서드
	 */
	public Beans_ProductVO selectProductInfo(Beans_ProductVO vo){
		System.out.println("dao 클래스 상품정보 selelct");
		conn = (Connection) JDBCUtil.getConnection();
		Beans_ProductVO productCode = new Beans_ProductVO();
		try{
			pstmt = conn.prepareStatement(SELECT_PRODUCTINFO);
			pstmt.setString(1, vo.getProduct_code());
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				System.out.println("받아온 상품 코드= " + rs.getString(1));
				
				productCode.setProduct_code(rs.getString(1));
				productCode.setProduct_name(rs.getString(2));
				productCode.setProduct_price(rs.getInt(3));
			}
			
		}catch(SQLException e){
			System.err.println(e.getMessage());
		}finally {
			JDBCUtil.close(pstmt, conn);
		}
		return productCode;
	}
}
