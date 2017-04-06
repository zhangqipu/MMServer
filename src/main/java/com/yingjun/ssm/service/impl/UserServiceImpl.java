package com.yingjun.ssm.service.impl;

import com.yingjun.ssm.dao.UserDao;
import com.yingjun.ssm.entity.User;
import com.yingjun.ssm.service.UserService;

import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl extends CrudServiceImpl<UserDao, User> implements UserService {

}
