package com.yingjun.ssm.web;

import java.lang.reflect.ParameterizedType;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import com.yingjun.ssm.common.Page;
import com.yingjun.ssm.entity.BaseEntity;
import com.yingjun.ssm.enums.Message;
import com.yingjun.ssm.service.CrudService;

public class CrudController<ServieType extends CrudService<T>, T> extends BaseController {

	@Autowired
	protected ServieType crudService;
	
	@ApiOperation(value="获取列表", httpMethod ="GET", response=BaseEntity.class, notes ="返回列表")  
	@SuppressWarnings("unchecked")
	@RequestMapping(value = "/list", method = RequestMethod.GET)
	public ResponseEntity<Message> list(@ApiParam(name="offset", value="第几页")
	@RequestParam("offset") Integer offset, 
	@ApiParam(name="limit", value="每页条数")
	@RequestParam("limit") Integer limit) {
		offset = offset == null ? 0 : offset;// 默认0
		limit = limit == null ? 50 : limit;// 默认展示50条

		BaseEntity<?> entity = null;
		try {
			// 通过反射获取model的真实类型
			ParameterizedType pt = (ParameterizedType) this.getClass().getGenericSuperclass();
			Class<T> clazz = (Class<T>) pt.getActualTypeArguments()[1];
			// 通过反射创建model的实例
			entity = (BaseEntity<?>) clazz.newInstance();
			entity.setPage(new Page(offset, limit));
		} catch (Exception e) {
			throw new RuntimeException(e);
		}
		
		List<T> list = null;
		if (entity != null) {
			list = crudService.getList((T) entity);
		}
		
		Message msg = new Message(200, "", list);
		
		return new ResponseEntity<Message>(msg, HttpStatus.OK);
	}
	
	@ApiOperation(value="插入数据", httpMethod ="POST", response=BaseEntity.class, notes ="返回创建的数据模型")  
	@RequestMapping(value = "/create", method = RequestMethod.POST)
	public T insert(T model) {
		crudService.insert(model);
		return model;
	}
	
}