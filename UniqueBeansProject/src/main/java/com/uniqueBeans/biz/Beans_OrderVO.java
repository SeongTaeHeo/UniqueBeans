package com.uniqueBeans.biz;

import java.sql.Date;

/*
 * 주문 정보를 저장하기 위한 객체 모델
 */
public class Beans_OrderVO {
	private String order_code;
	private String id;
	private int price;
	private int quantity;
	private Date order_date;
	private String order_status;
	private String pay_type;
	private String order_require;
	private String send_address;
	private int send_tel;
	private String send_name;
	private String order_address;
	private int order_tel;
	private String order_name;
	public String getOrder_code() {
		return order_code;
	}
	public void setOrder_code(String order_code) {
		this.order_code = order_code;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
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
	public String getSend_address() {
		return send_address;
	}
	public void setSend_address(String send_address) {
		this.send_address = send_address;
	}
	public int getSend_tel() {
		return send_tel;
	}
	public void setSend_tel(int send_tel) {
		this.send_tel = send_tel;
	}
	public String getSend_name() {
		return send_name;
	}
	public void setSend_name(String send_name) {
		this.send_name = send_name;
	}
	public String getOrder_address() {
		return order_address;
	}
	public void setOrder_address(String order_address) {
		this.order_address = order_address;
	}
	public int getOrder_tel() {
		return order_tel;
	}
	public void setOrder_tel(int order_tel) {
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
		return "Beans_OrderVO [order_code=" + order_code + ", id=" + id + ", price=" + price + ", quantity=" + quantity
				+ ", order_date=" + order_date + ", order_status=" + order_status + ", pay_type=" + pay_type
				+ ", order_require=" + order_require + ", send_address=" + send_address + ", send_tel=" + send_tel
				+ ", send_name=" + send_name + ", order_address=" + order_address + ", order_tel=" + order_tel
				+ ", order_name=" + order_name + "]";
	}
}
