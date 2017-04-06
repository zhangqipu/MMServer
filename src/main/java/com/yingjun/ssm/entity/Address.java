package com.yingjun.ssm.entity;

public class Address extends BaseEntity<Address> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 收货人名称
	 */
	private String name;

	/**
	 * 手机号码
	 */
	private String phone;

	/**
	 * 所在地区
	 */
	private String area;

	/**
	 * 详细地址
	 */
	private String address;

	/**
	 * 用户id
	 */
	private String userId;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getArea() {
		return area;
	}

	public void setArea(String area) {
		this.area = area;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}
}
