package com.yingjun.ssm.service;

import java.util.List;


public interface CrudService<T> extends BaseService { // DaoType extends CrudDao<T>, 
	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public T getOne(String id);
	
	/**
	 * 获取单条数据
	 * @param entity
	 * @return
	 */
	public T getOne(T entity);
	
	/**
	 * 查询列表数据
	 * @param entity
	 * @return
	 */
	public List<T> getAllList(T entity);
	
	/**
	 * 查询分页数据
	 * @param page 分页对象
	 * @param entity
	 * @return
	 */
	public List<T> getList(T entity);
	
	/**
	 * 插入数据
	 * @param entity
	 * @return 
	 */
	public int insert(T entity);
	
	/**
	 * 更新数据
	 * @param entity
	 */
	public int update(T entity);
	
	/**
	 * 删除数据
	 * @param entity
	 */
	public int delete(T entity);
}