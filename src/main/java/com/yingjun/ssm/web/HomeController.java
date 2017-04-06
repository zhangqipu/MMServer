package com.yingjun.ssm.web;

import java.util.HashMap;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.wordnik.swagger.annotations.ApiOperation;
import com.yingjun.ssm.util.QiniuUtil;

/**
 * 首页控制器
 * 
 * @author zhangqipu
 * @version
 */
@Controller
@RequestMapping("/v1/home")
public class HomeController extends BaseController {

	/**
	 * 获取七牛Token
	 * 
	 * @return
	 */
	@ApiOperation(value = "七牛Token", httpMethod = "GET", notes = "返回七牛Token字符串")
	@ResponseBody
	@RequestMapping(value = "/getQiniuToken", method = RequestMethod.GET)
	public ResponseEntity<HashMap<String, String>> getQiniuToken() {
		HashMap<String, String> map = new HashMap<String, String>();
		map.put("qinuToken", QiniuUtil.getQiniuToken());
		return new ResponseEntity<HashMap<String, String>>(map, HttpStatus.OK);
	}
	
	
}
