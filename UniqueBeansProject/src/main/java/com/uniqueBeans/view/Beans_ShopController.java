package com.uniqueBeans.view;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Beans_ShopController {

	@RequestMapping("/shop.do")
	public String shopOrder() {
		return "shop.jsp";
	}
}
