package com.yingjun.ssm.common;

/**
 * 分页基类
 * 
 * @author zhangqipu
 * @version
 */
public class Page {

	/**
	 * 第几页
	 */
	private int offset;

	/**
	 * 每页大小
	 */
	private int limit;

	/**
	 * 排序
	 */
	private String order;

	public Page(int offset, int limit) {
		super();
		this.offset = offset;
		this.limit = limit;
	}

	public Page(int offset, int limit, String filter) {
		super();
		this.offset = offset;
		this.limit = limit;
	}

	public int getOffset() {
		return offset;
	}

	public void setOffset(int offset) {
		this.offset = offset;
	}

	public int getLimit() {
		return limit;
	}

	public void setLimit(int limit) {
		this.limit = limit;
	}

	public String getOrder() {
		return order;
	}

	public void setOrder(String order) {
		this.order = order;
	}
//	public void setFilter(String filter) {
//		// phone:15919878375,nickName:zhangqipu,age=25
//		// phone='15919878375' and nick_name='zhangqipu' and age='25'
//		if (filter != null) {
//			StringBuffer sb = new StringBuffer();
//			// 字符串按","分割成数组
//			String[] sourceStrArray = filter.split("&");
//			
//			// 遍历数组每个元素
//			for(int i = 0; i < sourceStrArray.length; i++) {
//				sb.append(itemToLine(sourceStrArray[i]));
//				if (i < sourceStrArray.length - 1) {
//					sb.append(" AND ");
//				}
//			}
//			
//			this.filter = sb.toString();
//		} else {
//			this.filter = filter;
//		}
//	}
//
//	/**
//	 * 将每个元素返回下划线样式nickName='zhangqipu' -> nick_name='zhangqipu'
//	 * @param str
//	 * @return
//	 */
//	public String itemToLine(String str) {
//		// 按照等于号分割
//		String[] sourceStrArray = str.split("=");
//		return "j." + humpToLine2(sourceStrArray[0]) + "=" + sourceStrArray[1];
//	}
//	
//	private static Pattern linePattern = Pattern.compile("_(\\w)");
//
//	/** 下划线转驼峰 */
//	public static String lineToHump(String str) {
//		str = str.toLowerCase();
//		Matcher matcher = linePattern.matcher(str);
//		StringBuffer sb = new StringBuffer();
//		while (matcher.find()) {
//			matcher.appendReplacement(sb, matcher.group(1).toUpperCase());
//		}
//		matcher.appendTail(sb);
//		return sb.toString();
//	}
//
//	/** 驼峰转下划线(简单写法，效率低于{@link #humpToLine2(String)}) */
//	public static String humpToLine(String str) {
//		return str.replaceAll("[A-Z]", "_$0").toLowerCase();
//	}
//
//	private static Pattern humpPattern = Pattern.compile("[A-Z]");
//
//	/** 驼峰转下划线,效率比上面高 */
//	public static String humpToLine2(String str) {
//		Matcher matcher = humpPattern.matcher(str);
//		StringBuffer sb = new StringBuffer();
//		while (matcher.find()) {
//			matcher.appendReplacement(sb, "_" + matcher.group(0).toLowerCase());
//		}
//		matcher.appendTail(sb);
//		return sb.toString();
//	}
}
