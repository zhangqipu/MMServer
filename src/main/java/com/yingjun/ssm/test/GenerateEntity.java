package com.yingjun.ssm.test;

public class GenerateEntity {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		String source = "`nick_name`varchar(45)DEFAULTNULLCOMMENT'用户昵称',`head_image`varchar(255)DEFAULTNULLCOMMENT'用户头像',`phone`varchar(45)DEFAULTNULLCOMMENT'手机号',`unionid`varchar(255)DEFAULTNULLCOMMENT'微信unionid',`sex`varchar(45)DEFAULTNULLCOMMENT'性别',`role`varchar(45)DEFAULTNULLCOMMENT'角色',";
		
		// `title`varchar(255)DEFAULTNULLCOMMENT'帖子标题'
		// -> /*帖子标题*/ private String title;
		
		// 按照逗号分隔得到字符串数组
		// 遍历数组对每个字符串按照"`"分隔得到A
		// 将分隔后的数组A的第二个元素A[1]作为属性名称
		// 对A[2]进行前缀判断得到属性的类型
		// 对A[2]按照"'"分隔得到数组B
		// 取第一个元素B[1]作为注释
		// 如果没有则返回空串

		StringBuffer codeStr = new StringBuffer();
		String[] lineStrArr = getLineArrayByDou(source);
		for (int i = 0; i < lineStrArr.length; i++) {
			String lineArrA[] = getLineArrayByFen(lineStrArr[i]);
			String propertyName = lineArrA[1];
			String typeName = getTypeOfProperty(lineArrA[2]);
			String anotation = "no summary";
			String lineArrB[] = getLineArrayByDeng(lineArrA[2]);
			if (lineArrB != null) {
				anotation = lineArrB[1]; 
			}
			
			// /*
			//  * summary
			//  */
			// private String propertyName;
			// 
			codeStr.append("/**" + "\n");
			codeStr.append(" " + "*" + " " + anotation + "\n");
			codeStr.append(" " + "*/" + "\n");
			codeStr.append("private" + " " + typeName + " " + propertyName + ";" + "\n");
			codeStr.append("\n");
//			System.out.println(propertyName);
//			System.out.println(typeName);
//			System.out.println(anotation);
		}
		
		System.out.println(codeStr);
	}

	public static String[] getLineArrayByDou(String source) {
		return source.split(",");
	}
	
	public static String[] getLineArrayByFen(String source) {
		return source.split("`");
	}
	
	public static String[] getLineArrayByDeng(String source) {
		if (source.indexOf("'") != -1) {
			return source.split("'");
		} 
		
		return null;
	}
	
	public static String getTypeOfProperty(String source) {
		
		if (source.startsWith("varchar")) {
			return "String";
		} 
		
		if (source.startsWith("int")) {
			return "int";
		}
	
		if (source.startsWith("float")) {
			return "float";
		}
		
		if (source.startsWith("timestamp")) {
			return "Date";
		}
		
		return null;
	}

}

