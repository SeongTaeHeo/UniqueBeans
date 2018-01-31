package com.uniqueBeans.biz.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniqueBeans.biz.Beans_OrderService;
import com.uniqueBeans.biz.Beans_OrderVO;

@Service("orderService")
public class Beans_OrderServiceImpl implements Beans_OrderService {
	
	@Autowired
	private Beans_OrderDAO orderDAO;
	
	
	@Override
	public void insertOrderProduct(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		orderDAO.insertOrderProduct(vo);
	}

	@Override
	public void insertOrderOption(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		orderDAO.insertOrderOption(vo);
	}

	@Override
	public void insertOrderInfo(Beans_OrderVO vo) {
		// TODO Auto-generated method stub
		orderDAO.insertOrderInfo(vo);
	}

	@Override
	public String createOrder_Code(Beans_OrderVO vo) {
		return orderDAO.createOrder_Code(vo);
		
	}
}
