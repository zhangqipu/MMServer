package com.yingjun.ssm.enums;

/**
 * 动态类型
 * @author zhangqipu
 * @version
 */
public enum DynamicTypeEnum {
	DynamicTypeUser("用户"), // 用户
	DynamicTypeJewelry("珠宝作品"), // 作品珠宝
	DynamicTypeCustom("定制"); // 定制
	
	private String content;

	private DynamicTypeEnum(String content) {
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}

