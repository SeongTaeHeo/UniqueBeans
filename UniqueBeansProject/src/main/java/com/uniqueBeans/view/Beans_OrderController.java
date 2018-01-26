
package com.uniqueBeans.view;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.Beans_ProductVO;

@Controller
public class Beans_OrderController {
/*	@Autowired
	private Beans_OrderService orderService;*/
	

	 /* 주문완료 insertOrder.do 메서드 */
	  
	@RequestMapping("/insertOrder.do")
	public String insertOrder(Beans_OrderVO vo){
		System.out.println("주문완료 메서드 실행");
		//orderService.insertOrder(vo);
		
		return "index.jsp";
	}
	
	@RequestMapping("/orderDetailInput.do")
	public String test(@RequestBody ArrayList<Beans_ProductVO> list, Model model) {
		
		model.addAttribute("beanItem", list);
		
		return "orderinfo.jsp";
	}
}