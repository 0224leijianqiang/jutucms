package com.jutubao.util;

import org.apache.shiro.SecurityUtils;
import org.apache.shiro.session.Session;

/**
 * 权限处理
 * 修改日期：2015/11/19
*/
public class Jurisdiction {
	public static Session getSession(){
		//Subject currentUser = SecurityUtils.getSubject();  
		return SecurityUtils.getSubject().getSession();
	}
}
