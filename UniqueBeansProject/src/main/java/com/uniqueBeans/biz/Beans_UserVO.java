package com.uniqueBeans.biz;

import java.sql.Date;

/*
 * 유저 정보를 저장하기 위한 객체 모델
 */
public class Beans_UserVO {
	private String id;
	private String pwd;
	private String email;
	private String birth;
	private String tel;
	private String name;
	private int address_number;
	private String address_road;
	private String address_detail;
	private String address_other;
	private String gender;
	private int point;
	private int admin;
	
	public int getAddress_number() {
		return address_number;
	}
	public void setAddress_number(int address_number) {
		this.address_number = address_number;
	}
	public String getAddress_road() {
		return address_road;
	}
	public void setAddress_road(String address_road) {
		this.address_road = address_road;
	}
	public String getAddress_detail() {
		return address_detail;
	}
	public void setAddress_detail(String address_detail) {
		this.address_detail = address_detail;
	}
	public String getAddress_other() {
		return address_other;
	}
	public void setAddress_other(String address_other) {
		this.address_other = address_other;
	}

	// DB로직 처리를 위한 sql.Date 변수
	private Date input_Birth;
	
	
	public Date getInput_Birth() {
		return input_Birth;
	}
	public void setInput_Birth(Date input_Birth) {
		this.input_Birth = input_Birth;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getAdmin() {
		return admin;
	}
	
	
	
	public void setAdmin(int admin) {
		this.admin = admin;
	}
	/*
	 * toString() 메소드 오버라이드 통한 객체값 출력.
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub	
		return "[id = " + id + " pwd = " + pwd + " email = " + email + " birth = " + birth
				+ " tel = " + tel + " name = " + name + " address = " + address_road + " "
				+ " " + address_detail + " " + address_other + " " + " sex = " +
				gender + " point = " + point + "admin =" +admin+ "]";

	}
	
}
