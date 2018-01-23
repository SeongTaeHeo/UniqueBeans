package com.uniqueBeans.biz;

import java.sql.Date;

public class Beans_BoardVO {
	private int post_number;
	private String post_title;
	private String id;
	private String post_contents;
	private Date post_date;
	private int post_views;
	private String post_option;
	private String searchCondition;
	private String searchKeyword;
	private int re_number;
	private String re_content;
	private Date re_date;
	private int contact_seq;
	private String contact_title;
	private String contact_option;
	private String contact_contents;
	private Date contact_date;
	private int contact_views;

	public int getRe_number() {
		return re_number;
	}

	public String getRe_content() {
		return re_content;
	}

	public Date getRe_date() {
		return re_date;
	}

	public void setRe_number(int re_number) {
		this.re_number = re_number;
	}

	public void setRe_content(String re_content) {
		this.re_content = re_content;
	}

	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}

	public String getPost_option() {
		return post_option;
	}

	public void setPost_option(String post_option) {
		this.post_option = post_option;
	}

	public void setSearchCondition(String searchCondition) {
		this.searchCondition = searchCondition;
	}

	public void setSearchKeyword(String searchKeyword) {
		this.searchKeyword = searchKeyword;
	}

	public String getSearchCondition() {
		return searchCondition;
	}

	public String getSearchKeyword() {
		return searchKeyword;
	}

	public void setPost_number(int post_number) {
		this.post_number = post_number;
	}

	public int getPost_number() {
		return post_number;
	}

	public void setPost_title(String post_title) {
		this.post_title = post_title;
	}

	public String getPost_title() {
		return post_title;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getId() {
		return id;
	}

	public void setPost_contents(String post_contents) {
		this.post_contents = post_contents;
	}

	public String getPost_contents() {
		return post_contents;
	}

	public void setPost_date(Date post_date) {
		this.post_date = post_date;
	}

	public Date getPost_date() {
		return post_date;
	}

	public void setPost_views(int post_views) {
		this.post_views = post_views;
	}

	public int getPost_views() {
		return post_views;
	}

	public void setContact_seq(int contact_seq) {
		this.contact_seq = contact_seq;
	}

	public void setContact_title(String contact_title) {
		this.contact_title = contact_title;
	}

	public void setContact_option(String contact_option) {
		this.contact_option = contact_option;
	}

	public void setContact_contents(String contact_contents) {
		this.contact_contents = contact_contents;
	}

	public void setContact_date(Date contact_date) {
		this.contact_date = contact_date;
	}

	public void setContact_views(int contact_views) {
		this.contact_views = contact_views;
	}

	public int getContact_seq() {
		return contact_seq;
	}

	public String getContact_title() {
		return contact_title;
	}

	public String getContact_option() {
		return contact_option;
	}

	public String getContact_contents() {
		return contact_contents;
	}

	public Date getContact_date() {
		return contact_date;
	}

	public int getContact_views() {
		return contact_views;
	}

	public String toString() {
		return "Beans_BoardVO [post_number=" + post_number + ", post_title=" + post_title + ", id=" + id
				+ ", post_contents=" + post_contents + ", post_date=" + post_date + ", post_views=" + post_views
				+ ", re_number=" + re_number + ",re_content=" + re_content + ",com_date=" + re_date + ",contact_seq="
				+ contact_seq + ",contact_title=" + contact_title + ",contact_option=" + contact_option
				+ ",contact_contents=" + contact_contents + ",contact_date=" + contact_date + ",contact_views="
				+ contact_views + "]";
	}
}
