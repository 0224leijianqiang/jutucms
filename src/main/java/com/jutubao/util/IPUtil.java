package com.jutubao.util;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * IP地址获取
 * @author yangxianzhao
 *
 */
public class IPUtil {
	
	static Logger log = LoggerFactory.getLogger(IPUtil.class);
	
	 public static String getIpAddr(HttpServletRequest request) {
		 
	       String ip = request.getHeader("x-forwarded-for"); 
	       
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	           ip = request.getHeader("Proxy-Client-IP"); 
	       } 
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	           ip = request.getHeader("WL-Proxy-Client-IP"); 
	       } 
	       if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) { 
	           ip = request.getRemoteAddr(); 
	       } 
	       return ip; 
	   }
	 public static long ipToLong(String ipString){  
	      try {
	    	  long result = 0;  
		      java.util.StringTokenizer token = new java.util.StringTokenizer(ipString,".");  
		      result += Long.parseLong(token.nextToken())<<24;  
		      result += Long.parseLong(token.nextToken())<<16;  
		      result += Long.parseLong(token.nextToken())<<8;  
		      result += Long.parseLong(token.nextToken());  
		      return result;  
		} catch (Exception e) {
			// TODO: handle exception
			return 0L;
		}
	  }  
}
