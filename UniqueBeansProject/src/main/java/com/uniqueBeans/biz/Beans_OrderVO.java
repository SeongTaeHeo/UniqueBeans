package com.uniqueBeans.biz;

import java.sql.Date;

/*
 * 주문 정보를 저장하기 위한 객체 모델
 */
public class Beans_OrderVO {
	private String order_code;
	private int details_number;
	private String product_code;
	private int quantity;
	
	private String grinding;
	private String roasting;
	
	private String id;
	private int totalprice;
	private Date order_date;
	private String order_status;
	private String pay_type;
	private String order_require;
	private int receive_address_num;
	private String receive_address_road;
	private String receive_address_detail;
	private String receive_address_other;
	private String receive_tel;
	private String receive_name;
	private String order_address;
	private String order_tel;
	private String order_name;
	private String generated_code;
	
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	public int getDetails_number() {
		return details_number;
	}
	public void setDetails_number(int details_number) {
		this.details_number = details_number;
	}
	public String getProduct_code() {
		return product_code;
	}
	public void setProduct_code(String product_code) {
		this.product_code = product_code;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getGrinding() {
		return grinding;
	}
	public void setGrinding(String grinding) {
		this.grinding = grinding;
	}
	public String getRoasting() {
		return roasting;
	}
	public void setRoasting(String roasting) {
		this.roasting = roasting;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getTotalprice() {
		return totalprice;
	}
	public void setTotalprice(int totalprice) {
		this.totalprice = totalprice;
	}
	public Date getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Date order_date) {
		this.order_date = order_date;
	}
	public String getOrder_status() {
		return order_status;
	}
	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}
	public String getPay_type() {
		return pay_type;
	}
	public void setPay_type(String pay_type) {
		this.pay_type = pay_type;
	}
	public String getOrder_require() {
		return order_require;
	}
	public void setOrder_require(String order_require) {
		this.order_require = order_require;
	}
	public int getReceive_address_num() {
		return receive_address_num;
	}
	public void setReceive_address_num(int receive_address_num) {
		this.receive_address_num = receive_address_num;
	}
	public String getReceive_address_road() {
		return receive_address_road;
	}
	public void setReceive_address_road(String receive_address_road) {
		this.receive_address_road = receive_address_road;
	}
	public String getReceive_address_detail() {
		return receive_address_detail;
	}
	public void setReceive_address_detail(String receive_address_detail) {
		this.receive_address_detail = receive_address_detail;
	}
	public String getReceive_address_other() {
		return receive_address_other;
	}
	public void setReceive_address_other(String receive_address_other) {
		this.receive_address_other = receive_address_other;
	}
	public String getReceive_tel() {
		return receive_tel;
	}
	public void setReceive_tel(String receive_tel) {
		this.receive_tel = receive_tel;
	}
	public String getReceive_name() {
		return receive_name;
	}
	public void setReceive_name(String receive_name) {
		this.receive_name = receive_name;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public String getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(String order_tel) {
		this.order_tel = order_tel;
	}
	public String getOrder_name() {
		return order_name;
	}
	public void setOrder_name(String order_name) {
		this.order_name = order_name;
	}
	@Override
	public String toString() {
		return "Beans_OrderVO [order_code=" + order_code + ", details_number=" + details_number + ", product_code="
				+ product_code + ", quantity=" + quantity + ", grinding=" + grinding + ", roasting=" + roasting
				+ ", id=" + id + ", totalprice=" + totalprice + ", order_date=" + order_date + ", order_status="
				+ order_status + ", pay_type=" + pay_type + ", order_require=" + order_require
				+ ", receive_address_num=" + receive_address_num + ", receive_address_road=" + receive_address_road
				+ ", receive_address_detail=" + receive_address_detail + ", receive_address_other="
				+ receive_address_other + ", receive_tel=" + receive_tel + ", receive_name=" + receive_name
				+ ", order_address=" + order_address + ", order_tel=" + order_tel + ", order_name=" + order_name + "]";
	}
	
}
