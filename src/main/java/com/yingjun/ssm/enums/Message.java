package com.yingjun.ssm.enums;

public class Message {

	/**
	 * 状态码
	 */
	private int code;
	
	/**
	 * 消息体
	 */
	private String msg;

	/**
	 * 内容
	 */
	private Object content;
	
	/**
	 * 构造函数
	 * @param code
	 * @param msg
	 */
	public Message(int code, String msg) {
		super();
		this.code = code;
		this.msg = msg;
	}

	/**
	 * 构造函数
	 * @param code
	 * @param msg
	 * @param content
	 */
	public Message(int code, String msg, Object content) {
		super();
		this.code = code;
		this.msg = msg;
		this.content = content;
	}

	public int getCode() {
		return code;
	}

	public void setCode(int code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getcontent() {
		return content;
	}

	public void setcontent(Object content) {
		this.content = content;
	}
	
}
