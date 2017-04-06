package com.yingjun.ssm.enums;

/**
 * 竞标状态枚举
 * @author zhangqipu
 * @version
 */
public enum BiddingStatusEnum {
	BiddingStatusUndertake("承接"),// 承接
	BiddingStatusBiding("正在竞标"),   // 正在竞标
	BiddingStatusDesigning("正在设计"),// 正在设计
	BiddingStatusWaiting("等待确认"),  // 等待确认
	BiddingStatusFinished("梦想达成");  // 梦想达成
	
	private String content;

	private BiddingStatusEnum(String content) {
		this.content = content;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}
	
}
