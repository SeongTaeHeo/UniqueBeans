package com.uniqueBeans.biz;

import java.util.Date;

/*
 * 유저 정보를 저장하기 위한 객체 모델
 */
public class Beans_UserVO {
	private String id;
	private String pwd;
	private String email;
	private Date birth;
	private String tel;
	private String name;
	private String address;
	private String gender;
	private int point;
	
	
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
	public Date getBirth() {
		return birth;
	}
	public void setBirth(Date birth) {
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
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getGender() {
		return gender;
	}
	public void setSex(String sex) {
		this.gender = gender;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	/*
	 * toString() 메소드 오버라이드 통한 객체값 출력.
	 */
	@Override
	public String toString() {
		// TODO Auto-generated method stub	
		return "[id = " + id + " pwd = " + pwd + " email = " + email + " birth = " + birth
				+ " tel = " + tel + " name = " + name + " address = " + address + " sex = " +
				gender + " point = " + point + "]";
	}
	
}
