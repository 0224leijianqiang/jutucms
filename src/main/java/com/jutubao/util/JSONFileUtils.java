package com.jutubao.util;

import java.io.File;
import java.io.IOException;

public class JSONFileUtils {
	private static String OS_NAME = System.getProperty("os.name").toLowerCase();
	public static void main(String[] args) throws IOException {
		if(OS_NAME.contains("windows")){
			
		}
		File file = new File("D://a/d");
		if (!file.exists()) {
			file.mkdirs();
		}
		System.err.println(OS_NAME);
	}
	public static void saveFile(String filename,File file){
		if(OS_NAME.contains("windows")){
			
		}
	}
}
