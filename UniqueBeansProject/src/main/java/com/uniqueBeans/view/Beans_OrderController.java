
package com.uniqueBeans.view;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.fasterxml.jackson.core.JsonParser;
import com.uniqueBeans.biz.Beans_OrderService;
import com.uniqueBeans.biz.Beans_OrderVO;
import com.uniqueBeans.biz.Beans_ProductVO;
import com.uniqueBeans.biz.Test;

@Controller
@SessionAttributes("beanItem")
public class Beans_OrderController {
	
	@Autowired
	private Beans_OrderService orderService;
	private String send_name = "장선웅 사장님";
	private String send_address = "커피빈 공장";
	
	// 샵페이지 접속
	@RequestMapping("/shop.do")
	public String shopOrder() {
	   return "shop.jsp";
	}
	
	@RequestMapping("/paymentComplete.do")
	public String insertOrder(Beans_OrderVO vo, HttpServletRequest request){
		String generated_code = orderService.createOrder_Code(vo);
		
		System.out.println("주문완료 메서드 실행");
		
		
		String json = "{\"data\":" + request.getParameter("list") + "}";
		System.out.println(json);
		
		try {
			JSONParser parser = new JSONParser();
			JSONObject object = (JSONObject) parser.parse(json);
			JSONArray array = (JSONArray) object.get("data");
			
			for(int i = 0; i < array.size(); i++) {
				JSONObject jsonObject = (JSONObject) array.get(i);
				System.out.println("price = "+ jsonObject.get("price"));

				System.out.println("array => " + array.size());
				System.out.println("code : " + jsonObject.get("code"));
				
				
				//int parseQuantity = Integer.parseInt((String) jsonObject.get("quantity"));
				
				//int parseTotalprice = Integer.parseInt((String)jsonObject.get("price"));
				
				String product_code = (String)jsonObject.get("code")+"0";
				String uppder_code = product_code.toUpperCase();
				
				
				// json 값 받아오기
				vo.setProduct_code(uppder_code);
				vo.setRoasting((String)jsonObject.get("roasting"));
				vo.setGrinding((String)jsonObject.get("grind"));
				vo.setPay_type("계좌이체");
				vo.setOrder_status("접수중...");
				vo.setQuantity((int)(long)jsonObject.get("quantity"));
				vo.setOrder_code(generated_code);
				vo.setOrder_address(send_address);
				vo.setOrder_name(send_name);
				vo.setOrder_tel("010-1111-1111");
				vo.setDetails_number(i);
				orderService.insertOrderProduct(vo);
				orderService.insertOrderOption(vo);
				orderService.insertOrderInfo(vo);
				
				System.out.println(vo.toString());
			}
			
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "ordercomplete.jsp";
	}
	
	@RequestMapping("/orderDetailInput.do")
	@ResponseBody
	public String orderDetail(@RequestBody ArrayList<Beans_ProductVO> list, Model model) {
		
		System.out.println(list.size());
		model.addAttribute("beanItem", list);
		
		return "fuck!!";
	}
	
	/*@RequestMapping("/paymentComplete.do")
	public String test(Beans_OrderVO vo, HttpServletRequest request) {
		System.out.println("test");

		
		
		return "dd";
	}*/
}