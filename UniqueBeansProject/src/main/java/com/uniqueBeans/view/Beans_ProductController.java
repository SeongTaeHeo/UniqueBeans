package com.uniqueBeans.view;

import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.uniqueBeans.biz.Beans_ProductService;
import com.uniqueBeans.biz.Beans_ProductVO;

@Controller
public class Beans_ProductController {
	
	@Autowired
	private Beans_ProductService productService;
	
	/*
	 *  상품입력 selectProductInfo.do
	 */
	@RequestMapping("/selectProductInfo.do")
	@ResponseBody
	public ArrayList<Beans_ProductVO> selectProductInfo(Beans_ProductVO vo, HttpServletResponse response){
		System.out.println("상품 결제");
		ArrayList<Beans_ProductVO> list = new ArrayList<>();
		list.add(productService.selectProductInfo(vo));
		
		return list;
	}
	
}
