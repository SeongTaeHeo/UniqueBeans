package com.uniqueBeans.biz;
/*
 * 주문 관련 DAO 작업을 위한 Service 인터페이스 정의
 */
public interface Beans_OrderService {
	// 주문 완료
	public void insertOrder(Beans_OrderVO vo);
}
