package com.yingjun.ssm.entity;

/**
 * 
 * @author zhangqipu
 * @version 2017年02月27日11:02:48
 */
public class User extends BaseEntity<User> {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	/**
	 * 用户昵称
	 */
	private String nickName;

	/**
	 * 用户头像
	 */
	private String headImage;

	/**
	 * 手机号
	 */
	private String phone;

	/**
	 * 微信unionid
	 */
	private String unionid;

	/**
	 * 性别
	 */
	private String sex;

	/**
	 * 角色
	 */
	private String role;

	public String getNickName() {
		return nickName;
	}

	public void setNickName(String nickName) {
		this.nickName = nickName;
	}

	public String getHeadImage() {
		return headImage;
	}

	public void setHeadImage(String headImage) {
		this.headImage = headImage;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getUnionid() {
		return unionid;
	}

	public void setUnionid(String unionid) {
		this.unionid = unionid;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}
}
