package com.jutubao.util;

import java.util.Map;

public class AliossUtils {
	private static Map<String, Object> params = null;
	static{
		params = PropertiesUtils.getProperties("/properties/alioss/alioss.properties");
	}
	public static void main(String[] args) {
		System.err.println(params);
	}
}
