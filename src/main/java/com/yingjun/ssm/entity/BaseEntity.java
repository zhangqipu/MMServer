package com.yingjun.ssm.entity;

import java.io.Serializable;

import com.yingjun.ssm.common.Page;

/**
 * 实体基类
 * @author zhangqipu
 *
 */
public abstract class BaseEntity<T> implements Serializable{
	/**
	 * 版本
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * id
	 */
	protected String objectId;
	
	protected Boolean isDeleted;
	
	/**
	 * 分页
	 */
	Page page;

	public String getObjectId() {
		return objectId;
	}

	public void setObjectId(String objectId) {
		this.objectId = objectId;
	}

	public Page getPage() {
		return page;
	}

	public void setPage(Page page) {
		this.page = page;
	}

	public Boolean getIsDeleted() {
		return isDeleted;
	}

	public void setIsDeleted(Boolean isDeleted) {
		this.isDeleted = isDeleted;
	}

}