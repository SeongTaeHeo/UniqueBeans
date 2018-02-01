package com.uniqueBeans.biz.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("adminDAO")
public class Beans_AdminDAO {
	
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	// 전체 주문내역을 가져옴
	private static String GET_ORDER_LIST = "select DISTINCT A.order_code, A.details_number, C.product_name, "
			+ "C.product_price, A.quantity, D.id, D.order_status from orderproduct A, "
			+ "orderoption B, productinfo C, orderinfo D where A.order_code = B.order_code "
			+ "and A.details_number = B.details_number and A.product_code = C.product_code "
			+ "and A.order_code = D.order_code order by A.order_code asc, A.details_number asc";
	
	public List<Beans_OrderVO> getOrderList() {
		
		List<Beans_OrderVO> orderList = new ArrayList<>();
		
		try {
			conn = JDBCUtil.getConnection();
			pstmt = conn.prepareStatement(GET_ORDER_LIST);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				Beans_OrderVO vo = new Beans_OrderVO();
				
				vo.setOrder_code(rs.getString(1));
				vo.setDetails_number(rs.getInt(2));
				vo.setProduct_name(rs.getString(3));
				vo.setTotalprice(rs.getInt(4));
				vo.setQuantity(rs.getInt(5));
				vo.setId(rs.getString(6));
				vo.setOrder_status(rs.getString(7));
				
				orderList.add(vo);
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return orderList;
	}
}
	
	
