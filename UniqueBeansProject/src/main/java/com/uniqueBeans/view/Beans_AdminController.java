package com.uniqueBeans.view;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uniqueBeans.biz.Beans_AdminService;
import com.uniqueBeans.biz.Beans_OrderVO;

@Controller
public class Beans_AdminController {

	@Autowired
	Beans_AdminService adminService;

   @RequestMapping("/showOrderList.do")
   @ResponseBody
   public List<Beans_OrderVO> getOrderList(Model model) {
	   System.out.println("test1");
	   List<Beans_OrderVO> list = adminService.getUserOrderList();
	  
	   return list;
   }
}
