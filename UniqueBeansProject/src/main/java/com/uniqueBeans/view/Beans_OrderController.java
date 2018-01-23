package com.uniqueBeans.view;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.uniqueBeans.biz.Beans_OrderService;
import com.uniqueBeans.biz.Beans_OrderVO;

@Controller
public class Beans_OrderController {
	@Autowired
	private Beans_OrderService orderService;
	
	/*
	 * 주문완료 insertOrder.do 메서드
	 */
	@RequestMapping("/insertOrder.do")
	public String insertOrder(Beans_OrderVO vo){
		System.out.println("주문완료 메서드 실행");
		orderService.insertOrder(vo);
		
		return "index.jsp";
	}
}
