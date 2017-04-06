package com.yingjun.ssm.util;

import java.util.ArrayList;
import java.util.Map;

import com.qiniu.common.QiniuException;
import com.qiniu.http.Client;
import com.qiniu.http.Response;
import com.qiniu.util.Auth;

public class QiniuUtil {

	private static String accessKey = "DS_8QsbR2wu0AcX3PvFDBHhTx2-5cvzJJrg6McL7";
	private static String secretKey = "VUuQDu6y6U2EJ0qx1G-PsYa1WdpXo-mvS0uqk-ek";
	private static String bucketName = "cuo-image";

	public static String getQiniuToken() {
		Auth auth = Auth.create(accessKey, secretKey);
		String token = auth.uploadToken(bucketName);
		return token;
	}

	public static ArrayList<Map<String, Object>> getImageInfos(String[] images) {

		ArrayList<Map<String, Object>> imageInfos = new ArrayList<Map<String, Object>>();

		for (int i = 0; i < images.length; i++) {
			Client client = new Client();
			try {
				Response response = client.get(images[i] + "?imageInfo");
				Map<String, Object> map = response.jsonToMap().map();
				map.remove("format");
				map.remove("colorModel");
				map.remove("orientation");
				map.put("url", images[i]);
				imageInfos.add(map);
			} catch (QiniuException e) {
				e.printStackTrace();
			}
		}

		return imageInfos;
	}

}
