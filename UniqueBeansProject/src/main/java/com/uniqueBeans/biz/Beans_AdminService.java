package com.uniqueBeans.biz;

import java.util.List;

public interface Beans_AdminService {
	
	// 전체 주문 정보를 조회하여 가져온다.
	public List<Beans_OrderVO> getUserOrderList();
}
	
