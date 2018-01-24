package com.uniqueBeans.view;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.annotation.JsonIgnoreType;
import com.uniqueBeans.biz.Beans_OrderService;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.Beans_ProductVO;

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
	
	@RequestMapping(value = "orderDetailInput.do", method=RequestMethod.POST)
	@ResponseBody
	public List<test> test(@RequestBody List<test> ttt) {
		
		List<test> list = new ArrayList<>();
		list = ttt;
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getItem1());
		}
		
		
		return list;
	}
}

class test {
	private String item1;
	private String item2;
	private String item3;
	private String item4;
	private String item5;
	public String getItem1() {
		return item1;
	}
	public void setItem1(String item1) {
		this.item1 = item1;
	}
	public String getItem2() {
		return item2;
	}
	public void setItem2(String item2) {
		this.item2 = item2;
	}
	public String getItem3() {
		return item3;
	}
	public void setItem3(String item3) {
		this.item3 = item3;
	}
	public String getItem4() {
		return item4;
	}
	public void setItem4(String item4) {
		this.item4 = item4;
	}
	public String getItem5() {
		return item5;
	}
	public void setItem5(String item5) {
		this.item5 = item5;
	}
	
	
}