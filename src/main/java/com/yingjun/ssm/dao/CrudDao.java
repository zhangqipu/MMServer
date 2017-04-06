package com.yingjun.ssm.dao;

import java.util.List;

/**
 * dao基础接口
 * @author zhangqipu
 * @version
 */
public interface CrudDao<T> extends BaseDao {
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
	 * 查询数据列表，如果需要分页，请设置分页对象，如：entity.setPage(new Page<T>());
	 * @param entity
	 * @return
	 */
	public List<T> getList(T entity);
	
	/**
	 * 查询所有数据列表
	 * @param entity
	 * @return
	 */
	public List<T> getAllList(T entity);
	
	/**
	 * 插入数据
	 * @param entity
	 * @return
	 */
	public int insert(T entity);
	
	/**
	 * 更新数据
	 * @param entity
	 * @return
	 */
	public int update(T entity);
	
	/**
	 * 删除数据（一般为逻辑删除，更新is_deleted字段为1）
	 * @param id
	 * @see public int delete(T entity)
	 * @return
	 */
	public int delete(String id);
	
	/**
	 * 删除数据（一般为逻辑删除，更新is_deleted字段为1）
	 * @param entity
	 * @return
	 */
	public int delete(T entity);
}