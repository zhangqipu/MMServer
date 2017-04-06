package com.yingjun.ssm.enums;

public enum OrderStatusEnum {
	OrderStatusWaitingPay("待支付"), // 
	OrderStatusPayFinished("已支付"); // 
	
	private String content;

	private OrderStatusEnum(String content) {
		this.setContent(content);
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
}
