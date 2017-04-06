package com.yingjun.ssm.service.impl;

import org.springframework.stereotype.Service;

import com.yingjun.ssm.dao.AddressDao;
import com.yingjun.ssm.entity.Address;
import com.yingjun.ssm.service.AddressService;

@Service
public class AddressServiceImpl extends CrudServiceImpl<AddressDao, Address> implements AddressService {

}
