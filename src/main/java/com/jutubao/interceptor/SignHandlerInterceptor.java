package com.jutubao.interceptor;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import com.alibaba.fastjson.JSONObject;
import com.jutubao.constant.Const;
import com.jutubao.entity.ParamsMap;
import com.jutubao.util.ParamsUtils;
import com.jutubao.util.PropertiesUtils;
/**
 * 
* 类名称：接口验签
* 类描述： 
* 作者单位： 
* 联系方式：
* 创建时间：2015年11月2日
* @version 1.6
 */
public class SignHandlerInterceptor extends HandlerInterceptorAdapter{
	protected final static Logger log = LoggerFactory.getLogger(ParamsUtils.class);
	
	public static final String NO_INTERCEPTOR_PATH = ".*/((static)|(test)|(uploadFiles)).*";	//不对匹配该值的访问路径拦截（正则）
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		// TODO Auto-generated method stub
		String path = request.getServletPath();
		ParamsMap map = new ParamsMap(request);
		String signstr = ParamsUtils.sign(map);
		log.debug("path.matches(NO_INTERCEPTOR_PATH):{},signstr.equals(ParamsUtils.SUCCESS):{}",path.matches(NO_INTERCEPTOR_PATH),signstr.equals(Const.SUCCESS));	
		if(path.matches(NO_INTERCEPTOR_PATH)||signstr.equals(Const.SUCCESS))return true;
		Map<String, String> returnback = new HashMap<String, String>();
		returnback.put("code", signstr);
		returnback.put("msg", PropertiesUtils.getPropertiesInfo(signstr, "/properties/errorcode/error.properties"));
		returnback.put("result", "");
		PrintWriter pw = response.getWriter();
		pw.print(JSONObject.toJSONString(returnback));
		pw.flush();
		pw.close();
		return true;
	}
}
