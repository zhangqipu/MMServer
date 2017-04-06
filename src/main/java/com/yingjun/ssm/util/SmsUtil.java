package com.yingjun.ssm.util;

import com.taobao.api.TaobaoClient;
import com.taobao.api.ApiException;
import com.taobao.api.DefaultTaobaoClient;
import com.taobao.api.request.AlibabaAliqinFcSmsNumSendRequest;
import com.taobao.api.response.AlibabaAliqinFcSmsNumSendResponse;
import java.util.Random;

public class SmsUtil {
	
	/**
	 * 淘宝消息基址
	 */
	private static final String url = "http://gw.api.taobao.com/router/rest";
	
	/**
	 * 阿里大鱼appKey
	 */
	private static final String appkey = "23732171";
	
	/**
	 * 阿里大鱼appSecret
	 */
	private static final String secret = "5f74759dd11af1ebab809604b145b110";
	
	/**
	 * 发送短信接口
	 * @throws ApiException 
	 */
	public static String sendSms(String phone) throws ApiException {
		String virifyCode = get4RandomNumStr();		
		TaobaoClient client = new DefaultTaobaoClient(url, appkey, secret);
		AlibabaAliqinFcSmsNumSendRequest req = new AlibabaAliqinFcSmsNumSendRequest();
		req.setExtend( "" );
		req.setSmsType( "normal" );
		req.setSmsFreeSignName( "金昔" );
		req.setSmsParamString( "{code:'" + virifyCode +"'}" );
		req.setRecNum( phone );
		req.setSmsTemplateCode( "SMS_47065168" );
		AlibabaAliqinFcSmsNumSendResponse rsp = client.execute(req);
		System.out.println(rsp.getBody());
		
		return virifyCode;
	}
	
	public static String get4RandomNumStr() {
		StringBuilder verifyCode = new StringBuilder(4);
		Random random = new Random();
		for (int i = 0; i < 4; i++) {
			int randomInt = random.nextInt(10);
			verifyCode.append(String.valueOf(randomInt));
		}

		return verifyCode.toString();
	}
}
