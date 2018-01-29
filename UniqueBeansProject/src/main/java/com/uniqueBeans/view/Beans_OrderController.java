
package com.uniqueBeans.view;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonParser;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.Beans_ProductVO;
import com.uniqueBeans.biz.Test;

@Controller
@SessionAttributes("beanItem")
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
	@ResponseBody
	public String orderDetail(@RequestBody ArrayList<Beans_ProductVO> list, Model model) {
		
		model.addAttribute("beanItem", list);
		
		return "fuck!!";
	}
	
	@RequestMapping("/paymentComplete.do")
	public String test(Test vo, HttpServletRequest request) {
		System.out.println("test");
		System.out.println(vo.getPostCode());
		System.out.println(vo.getAddress());
		System.out.println(vo.getDetails());
		System.out.println(vo.getExtra_info());
	
		String json = "{\"data\":" + request.getParameter("list") + "}";
		System.out.println(json);
		
		try {
			JSONParser parser = new JSONParser();
			JSONObject object = (JSONObject) parser.parse(json);
			JSONArray array = (JSONArray) object.get("data");
			
			for(int i = 0; i < array.size(); i++) {
				JSONObject jsonObject = (JSONObject) array.get(i);
				
				System.out.println("code : " + jsonObject.get("code"));
				System.out.println("name : " + jsonObject.get("name"));
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return "dd";
	}
}