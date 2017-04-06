package com.yingjun.ssm.web;

import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.enums.Message;
import com.yingjun.ssm.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.ResponseStatus;

/**
 * 用户控制器
 * 
 * @author zhangqipu
 * @version
 */
@Api(value = "user", description = "用户")
@Controller
@RequestMapping("/v1/user")
public class UserController extends BaseController {

	
	@Autowired
	UserService userService;

	/**
	 * 新增用户
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "新增用户", httpMethod = "POST", notes = "新增用户")
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = { "application/json",
			"application/xml" }, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> create(@RequestBody User model) {
		userService.insert(model);
		Message message = new Message(HttpStatus.OK.value(), "创建成功!");
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}
	
	/**
	 * 用户详情
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "用户详情", httpMethod = "GET", notes = "用户详情")
	@RequestMapping(value = "/detail", method = RequestMethod.GET, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> detail(
			@ApiParam(name = "objectId", value = "用户id") @RequestParam(name = "objectId", required = false) String objectId) {
		
		User user = userService.getOne(objectId);
		
		Message message = new Message(HttpStatus.OK.value(), "SUCCESS", user);
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}
}
