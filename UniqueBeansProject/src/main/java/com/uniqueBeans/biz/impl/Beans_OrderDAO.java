/*package com.uniqueBeans.biz.impl;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import org.springframework.stereotype.Repository;

import com.mysql.jdbc.Connection;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.common.JDBCUtil;

@Repository("orderDAO")
public class Beans_OrderDAO {
	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	// 주문완료 입력 문
	private final String INSERT_ORDERPRODUCT = "insert into orderinfo(order_code, details_number, product_code, quantity)"
			+ "values('자동으로 만들어짐','자동으로',?,?)";
	private final String INSERT_ORDEROPTION = "insert into orderoption(order_code, details_number, gringding, roasting)"
			+ "values('자동으로 만들어짐','자동으로',?,?)";
	private final String INSERT_ORDERINFO = "insert into orderinfo(order_code, id, totalprice, order_date, order_status, pay_type,"
			+ "order_require, receive_address_num, receive_address_road, receive_address_detail, receive_address_other"
			+ "receive_tel, receive_name, order_address, order_tel, order_name)"
			+ "values('자동으로 만들어짐',?,?,'오늘날짜','접수중','계좌이체',?,?,?,?,?,?,?,'(주)유니크빈','사장님 번호','사장님')";
	private final String 
	public void insertOrderData(Beans_OrderVO vo){
		System.out.println("dao 클래스 주문정보 insert");
		conn = (Connection) JDBCUtil.getConnection();
		
		try{
			
		}
	}
}*/
