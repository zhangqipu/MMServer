package com.yingjun.ssm.web;

import java.util.ArrayList;

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

import com.wordnik.swagger.annotations.Api;
import com.wordnik.swagger.annotations.ApiOperation;
import com.wordnik.swagger.annotations.ApiParam;
import com.yingjun.ssm.entity.Address;
import com.yingjun.ssm.enums.Message;
import com.yingjun.ssm.service.AddressService;

/**
 * 地址控制器
 * 
 * @author zhangqipu
 * @version
 */
@Api(value = "address", description = "地址")
@Controller
@RequestMapping("/v1/address")
public class AddressController extends BaseController {
	@Autowired
	AddressService addressService;

	/**
	 * 创建地址
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "创建地址", httpMethod = "POST", notes = "创建地址")
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = { "application/json",
			"application/xml" }, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> create(@RequestBody Address model) {
		addressService.insert(model);
		Message message = new Message(HttpStatus.OK.value(), "创建成功!");
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}

	/**
	 * 查询地址
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "查询地址", httpMethod = "GET", notes = "查询地址")
	@RequestMapping(value = "/list", method = RequestMethod.GET, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> list(
			@ApiParam(name = "userId", value = "用户id") @RequestParam(name = "userId", required = false) String userId) {

		Address address = new Address();
		address.setUserId(userId);

		ArrayList<Address> addresses = (ArrayList<Address>) addressService.getList(address);

		Message message = new Message(HttpStatus.OK.value(), "SUCCESS", addresses);
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}
}
