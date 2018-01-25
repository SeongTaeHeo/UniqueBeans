package com.uniqueBeans.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniqueBeans.biz.Beans_ProductService;
import com.uniqueBeans.biz.Beans_ProductVO;

@Service("beans_productService")
public class Beans_ProducServicetImpl implements Beans_ProductService {
	
	@Autowired
	private Beans_ProductDAO productDAO;
	
	/*
	 * 상품 정보 조회 메서드
	 */
	@Override
	public Beans_ProductVO selectProductInfo(Beans_ProductVO vo){
		System.out.println(vo.toString());
		Beans_ProductVO product = productDAO.selectProductInfo(vo);
		return product;
	}
}
