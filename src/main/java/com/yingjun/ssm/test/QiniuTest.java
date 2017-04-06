package com.yingjun.ssm.test;

import java.util.ArrayList;
import java.util.Map;

import com.yingjun.ssm.util.QiniuUtil;

public class QiniuTest {
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
//		System.out.println(QiniuUtil.getQiniuToken());
		ArrayList<Map<String, Object>> list = QiniuUtil.getImageInfos(null);
		System.out.println(list);
	}

}
