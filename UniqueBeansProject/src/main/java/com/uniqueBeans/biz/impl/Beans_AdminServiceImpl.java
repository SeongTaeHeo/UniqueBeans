package com.uniqueBeans.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.uniqueBeans.biz.Beans_AdminService;
import com.uniqueBeans.biz.Beans_OrderVO;

@Service("AdminService")
public class Beans_AdminServiceImpl implements Beans_AdminService{
	
	@Autowired
	Beans_AdminDAO adminDAO;

	// 전체 주문내역 확인
	@Override
	public List<Beans_OrderVO> getUserOrderList() {
		// TODO Auto-generated method stub

		return adminDAO.getOrderList();
	}
	
}
