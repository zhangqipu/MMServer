package com.yingjun.ssm.dao;

import java.util.ArrayList;

import com.yingjun.ssm.entity.User;

public interface UserDao extends CrudDao<User> {
	
	/**
     * 根据手机号查询用户对象
     *
     * @param userPhone
     * @return
     */
    public User getUserByPhone(String phone);
    
    /**
     * 更具unionid查询用户
     * @param unionid
     * @return
     */
    public User getUserByUnionid(String unionid);
    
    public ArrayList<User> getRecommendList(User entity);
}
