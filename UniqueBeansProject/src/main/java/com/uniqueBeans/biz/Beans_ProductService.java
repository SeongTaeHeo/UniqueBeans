package com.uniqueBeans.biz;

/*
 * 상품 관련 DAO 작업을 위한 Service 인터페이스 정의
 */
public interface Beans_ProductService {
	
	// 상품 조회 등록
	public Beans_ProductVO selectProductInfo(Beans_ProductVO vo);
}
