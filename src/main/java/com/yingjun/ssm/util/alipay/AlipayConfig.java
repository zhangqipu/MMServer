package com.yingjun.ssm.util.alipay;

public class AlipayConfig {
	/** 支付宝支付业务：入参app_id */
	public static final String APPID = "2017032706428331";
	
	/** 支付宝账户登录授权业务：入参pid值 */
	public static final String PID = "2088621663855222";
	/** 支付宝账户登录授权业务：入参target_id值 */
	public static final String TARGET_ID = "";

	/** 商户私钥，pkcs8格式 */
	/** 如下私钥，RSA2_PRIVATE 或者 RSA_PRIVATE 只需要填入一个 */
	/** 如果商户两个都设置了，优先使用 RSA2_PRIVATE */
	/** RSA2_PRIVATE 可以保证商户交易在更加安全的环境下进行，建议使用 RSA2_PRIVATE */
	/** 获取 RSA2_PRIVATE，建议使用支付宝提供的公私钥生成工具生成， */
	/** 工具地址：https://doc.open.alipay.com/docs/doc.htm?treeId=291&articleId=106097&docType=1 */
	public static final String RSA2_PRIVATE = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCLnb5fWyTQTE4ktkZ4+SsM0wRmLHVmnhY3p/VZdleBvFCfykH2vZ0wM0n9/wq4Q9EOEMupezKbZaMFsIEIl/G6mEqz3cxxIYeRlQVGL2j66QbeEaHB3vF2wGcKSh/CPup5EVUIeddzEOh1lAVSw9BCZKbRw1ZkAR4G6jfkyDvVH+DV/umc+pecS0+wGgffAxDCyQtrq58LUmemUEdT5TZK9QtMB/3dbDHPH0S2ZebTbdSBbFFTlsaLcTptpi8I2ztC7dgEPYIK1Jore3HzrbPs1FIgzO2LSDvJTUaYxD8IPO3m6bGF+B+Pyhp3RjihhSWLuLWcd8AXcrRubdCFBbhXAgMBAAECggEAR41BSndYh5QDnFb6CPeRs5HVuFNim4O7WSyv1fiLYkbTfwDWC5EjpNc0PYLeyI6g7jd3WNV1myRchwbtKi1MyldQOZwbMYOAigC4Yj7b63NPfLHGl6gdUcHLTP+uBQvfeMqELMLcwvDQYanJjKAj9FLHF8unU7sq21pf6NUhrNhWp3i5tGGFB2EdGABIMqvF25XH3LKIbyLJ8+J1ZjwyXt6d+YHebzSAekwxUyCUeFWfZIIoVQvU2KXFj3Ren+6jU+E1tMYmfhTjM5+bgO65473qlNAMEtvfmILAmooKOuxNFey7yBjYkQVyLYJd82YScvf81iLg5kPS9H/yMg29aQKBgQDD8doNtbGvpBw3cSI/qcYXifR95Ipjp6ZNOQ6dgw/AoyZ6WFx5dp9VW4f+06FKawy3Hjiswrc0dv838EFj8JhZk6txJw5ot2MHCZ1fIy+PpTMxS8mjssjsfPfe3joVywdnSV98Qefbtz2JqF0XRlF3Vhl2w6cimnR2g7qOmFZlowKBgQC2aELCPUg1m58Q3ABDijNnZS2FYFSx2GbF2whxXp0ZEhKnmnx3kMhd2BTyhYdi9CqDTNuCypISK+axe0SJVHM9vTgCMVrTBNXJXdTIBAIQiQcR6vt2Jy/sVsAPFScXljreaVSgrxgt4VwqGiiSga9m499wfuSL41IPLR56fMWFvQKBgQCinG+NuR/A17zi9eyqUMaoekCAyc1fbp5Ar/1FEqNcBwnDttjnpF4OhGuUOyU7kSN4RIhcNyu7SpX7YlOiEOUeUcKRoQwAM1DnYj9L2PN7jmmxm2e3hoPgXsWGG36w31FBkk6/3CIC4UsclrDKw/yPwNBZE3385ZmJUUDdXec1aQKBgQCoCNH/B98+azcUm+auUWDbTgyqQryi/PxoJkfX0FYeY1TGC32/06ORN97ML5Ax60ZCoInTKfN4Q/MH6suPSznCVU6ETp0hqeGb2BGNlIumWeUmb3bpOF5gdOYGvvC9PMrMWvH3+HToxyNVMbXQiSFhQmhyxKKb73SHwIPESK7ZbQKBgQCkGpMzTOGOsYeOQBNk8NZhxUm5Vp4NYvMpxxPMu3vXxMLNW/JHtNVsBt6ywhgwY85Wk7yTUz1v2oegDLrt9dqtUIFJqAhPeuraq9x3wmexyA+bBUcV64iQAssLXU/a4W5m362lG5YzkwOS4YW1m20oaki3baxepu/FgdpPSnA/ag==";
	public static final String RSA_PRIVATE = "";
}
