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
	
	@RequestMapping("/orderDetailInput.do")
	@ResponseBody
	public ArrayList<test> test(@RequestBody ArrayList<test> ttt) {
		for(int i = 0; i < ttt.size(); i++) {
			System.out.println(ttt.get(i).getName());
		}
		
		return ttt;
	}
}

class test {
	private String code;
	private String name;
	private String grind;
	private String roasting;
	private String price;
	
	
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGrind() {
		return grind;
	}
	public void setGrind(String grind) {
		this.grind = grind;
	}
	public String getRoasting() {
		return roasting;
	}
	public void setRoasting(String roasting) {
		this.roasting = roasting;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	
	
	
}