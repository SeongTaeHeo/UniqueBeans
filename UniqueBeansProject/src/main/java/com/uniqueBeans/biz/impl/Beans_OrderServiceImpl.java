package com.uniqueBeans.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniqueBeans.biz.Beans_OrderService;
import com.uniqueBeans.biz.Beans_OrderVO;

@Service("orderService")
public class Beans_OrderServiceImpl implements Beans_OrderService {
	
	@Autowired
	private Beans_OrderDAO orderDAO;
	
	/*
	 *  주문완료 정보 입력 메서드
	 */
	@Override
	public void insertOrder(Beans_OrderVO vo){	
		System.out.println(vo.toString());
		orderDAO.insertOrder(vo);
	}
}
