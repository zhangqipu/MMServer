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
import com.yingjun.ssm.common.Page;
import com.yingjun.ssm.entity.Post;
import com.yingjun.ssm.enums.Message;
import com.yingjun.ssm.service.PostService;

/**
 * 帖子控制器
 * 
 * @author zhangqipu
 * @version
 */
@Api(value = "post", description = "帖子")
@Controller
@RequestMapping("/v1/post")
public class PostController extends BaseController {
	@Autowired
	PostService postService;

	/**
	 * 创建帖子
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "创建帖子", httpMethod = "POST", notes = "创建帖子")
	@RequestMapping(value = "/create", method = RequestMethod.POST, consumes = { "application/json",
			"application/xml" }, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> create(@RequestBody Post model) {
		postService.insert(model);
		Message message = new Message(HttpStatus.OK.value(), "创建成功!");
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}

	/**
	 * 查询帖子
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "查询帖子", httpMethod = "GET", notes = "查询帖子")
	@RequestMapping(value = "/list", method = RequestMethod.GET, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> list(
			@ApiParam(name = "userId", value = "用户id") @RequestParam(name = "userId", required = false) String userId,
			@ApiParam(name = "offset", value = "第几页") @RequestParam(name = "offset", required = false) Integer offset,
			@ApiParam(name = "limit", value = "每页数据") @RequestParam(name = "limit", required = false) Integer limit) {
		
		offset = offset == null ? 0 : offset;
		limit = limit == null ? 50 : limit;
		
		Post post = new Post();
		post.setUserId(userId);
		post.setPage(new Page(offset, limit));
		
		ArrayList<Post> posts = (ArrayList<Post>) postService.getList(post);
		
		Message message = new Message(HttpStatus.OK.value(), "SUCCESS", posts);
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}
	
	/**
	 * 帖子详情
	 * 
	 * @param model
	 * @return
	 */
	@ApiOperation(value = "帖子详情", httpMethod = "GET", notes = "查询详情")
	@RequestMapping(value = "/detail", method = RequestMethod.GET, produces = { "application/json", "application/xml" })
	@ResponseStatus(HttpStatus.OK)
	@ResponseBody
	public ResponseEntity<Message> detail(
			@ApiParam(name = "objectId", value = "帖子id") @RequestParam(name = "objectId", required = false) String objectId) {
		
		Post post = postService.getOne(objectId);
		
		Message message = new Message(HttpStatus.OK.value(), "SUCCESS", post);
		return new ResponseEntity<Message>(message, HttpStatus.OK);
	}
}
