package com.uniqueBeans.biz;

import java.sql.Date;

public class Beans_BoardVO {
	private int post_number;
	private String post_title;
	private String id;
	private String post_contents;
	private Date post_date;
	private int post_views;
	private String searchCondition;
	private String searchKeyword;
	
	
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


	public String toString() {
		return "Beans_BoardVO [post_number=" + post_number + ", post_title=" + post_title + ", id=" + id
				+ ", post_contents=" + post_contents + ", post_date=" + post_date + ", post_views=" + post_views + 
				"]";
	}
}
