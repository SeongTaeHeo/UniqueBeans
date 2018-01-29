package com.uniqueBeans.biz;

public class Beans_ProductVO {
	private String code;
	private String name;
	private String grind;
	private String roasting;
	private int price;
	private int point;
	private int quantity;

	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getPoint() {
		point = (int)(getPrice() * 0.005);
		return point;
	}
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	
}
