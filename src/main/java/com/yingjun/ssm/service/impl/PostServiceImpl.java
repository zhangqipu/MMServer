package com.yingjun.ssm.service.impl;

import org.springframework.stereotype.Service;

import com.yingjun.ssm.dao.PostDao;
import com.yingjun.ssm.entity.Post;
import com.yingjun.ssm.service.PostService;

@Service
public class PostServiceImpl extends CrudServiceImpl<PostDao, Post> implements PostService {

}
