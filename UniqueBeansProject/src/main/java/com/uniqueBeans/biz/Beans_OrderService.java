package com.uniqueBeans.biz;
/*
 * 주문 관련 DAO 작업을 위한 Service 인터페이스 정의
 */
public interface Beans_OrderService {
	// 주문 완료 작업
	public String createOrder_Code(Beans_OrderVO vo);
	public void insertOrderProduct(Beans_OrderVO vo);
	public void insertOrderOption(Beans_OrderVO vo);
	public void insertOrderInfo(Beans_OrderVO vo);
}
