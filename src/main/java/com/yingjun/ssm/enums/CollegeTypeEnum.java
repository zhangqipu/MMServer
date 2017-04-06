package com.yingjun.ssm.enums;

public enum CollegeTypeEnum {
	CollegeTypeNews("资讯"), // 资讯
	CollegeTypeStudy("教学"); // 教学
	
	private String content;

	private CollegeTypeEnum(String content) {
		this.setContent(content);
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
