package com.yingjun.ssm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

import com.yingjun.ssm.dao.CrudDao;
import com.yingjun.ssm.service.CrudService;

public abstract class CrudServiceImpl<DaoType extends CrudDao<T>, T> extends BaseServiceImpl implements CrudService<T>  { // DaoType, 
	
	@Autowired
	protected DaoType dao;
	
	/**
	 * 获取单条数据
	 * @param id
	 * @return
	 */
	public T getOne(String id) {
		return dao.getOne(id);
	}
	
	/**
	 * 获取单条数据
	 * @param entity
	 * @return
	 */
	@Override
	public T getOne(T entity) {
		return dao.getOne(entity);
	}
	
	/**
	 * 查询列表数据
	 * @param entity
	 * @return
	 */
	public List<T> getAllList(T entity) {
		return dao.getAllList(entity);
	}
	
	/**
	 * 查询分页数据
	 * @param entity 里面包含分页对象
	 * @return
	 */
	public List<T> getList(T entity) {
		return dao.getList(entity);
	}
	
	/**
	 * 插入数据
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public int insert(T entity) {
		return dao.insert(entity);
	}
	
	/**
	 * 更新数据
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public int update(T entity) {
		return dao.update(entity);
	}
	
	/**
	 * 删除数据
	 * @param entity
	 */
	@Transactional(readOnly = false)
	public int delete(T entity) {
		return dao.delete(entity);
	}
}