package com.yingjun.ssm.entity;

import java.util.Date;

public class Post extends BaseEntity<Post> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * 帖子标题
	 */
	private String title;

	/**
	 * 帖子内容
	 */
	private String content;

	/**
	 * 阅读数量
	 */
	private int readNum;

	/**
	 * 期刊
	 */
	private String period;

	/**
	 * 图片
	 */
	private String photo;

	/**
	 * 创建日期
	 */
	private Date date;
	
	/**
	 * 创建用户
	 */
	private String userId;
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getReadNum() {
		return readNum;
	}

	public void setReadNum(int readNum) {
		this.readNum = readNum;
	}

	public String getPeriod() {
		return period;
	}

	public void setPeriod(String period) {
		this.period = period;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
