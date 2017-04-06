package com.yingjun.ssm.enums;

/**
 * 角色类型
 * @author zhangqipu
 * @version
 */
public enum RoleTypeEnum {
	RoleTypeDesigner("设计师"), // 设计师
	RoleTypeCraftsman("工匠"), // 工匠
	RoleTypeDreamer("梦想发布者"); // 梦想发布者
	
	private String content;

	private RoleTypeEnum(String content) {
		this.setContent(content);
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
