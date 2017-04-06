package com.yingjun.ssm.web;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 控制器基类
 * @author zhangqipu
 * @version
 */
public class BaseController {
	private final Logger LOG = LoggerFactory.getLogger(this.getClass());

	public Logger getLOG() {
		return LOG;
	}

}
