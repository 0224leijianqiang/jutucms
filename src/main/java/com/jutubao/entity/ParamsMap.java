package com.jutubao.entity;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * 
 * @ClassName: ParamsMap
 * @Description: 参数类型转换封装
 * @author yxz
 * @date 2017年4月9日 下午3:00:03 
 * @Version 1.0
 */
public class ParamsMap extends LinkedHashMap<String, Object>{

	private static final long serialVersionUID = -8102436060303067144L;
	public HttpServletRequest request;
	protected static final Logger log = LoggerFactory.getLogger(ParamsMap.class);
	public ParamsMap() {}
	public ParamsMap(Map<String, Object> map){super(map);}
	@SuppressWarnings("rawtypes")
	public ParamsMap(HttpServletRequest request){
		if(request==null)return;
		Iterator entries = request.getParameterMap().entrySet().iterator(); 
		Map.Entry entry; 
		String name = "";  
		while (entries.hasNext()) {
			String value = "";  
			entry = (Map.Entry) entries.next(); 
			name = (String) entry.getKey(); 
			Object valueObj = entry.getValue(); 
			if(null == valueObj){ 
				value = ""; 
			}else if(valueObj instanceof String[]){ 
				String[] values = (String[])valueObj;
				for(int i=0;i<values.length;i++){ 
					 value += values[i] + ",";
				}
				value = value.substring(0, value.length()-1); 
			}else{
				value = valueObj.toString(); 
			}
			this.put(name, value); 
		}
		this.request = request;
	}
	public ParamsMap(String key,String value){
		this.put(key, value);
	}
	/**
	 * 获取字符串值
	 * @param key
	 * @return String
	 */
	public String getAsString(String key){
		try {
			if(get(key)!=null) return get(key).toString();
		} catch (Exception e) {
			log.error("ParamsMap getAsString is error!",e);
		}
		return null;
	}
	public String getStringRemove(String key){
		Object values = get(key);
		this.remove(key);
		if(values==null||values.equals(""))return null; 
		return values.toString();
	}

	/**
	 * 获取整型值
	 * @param key
	 * @return Integer
	 */
	public Integer getAsInteter(String key){
		try {
			if (get(key)!=null) return Integer.parseInt(get(key).toString());
		} catch (Exception e) {
			log.error("ParamsMap getAsInteter is error!",e);
		}
		return 0;
	}
	
	/**
	 * 获取Long
	 * @param key
	 * @return Long
	 */
	public Long getAsLong(String key){
		try {
			if(get(key)!=null) return Long.parseLong(get(key).toString());
		} catch (Exception e) {
			log.error("ParamsMap getAsLong is error!",e);
		}
		return null;
	}
	
	/**
	 * 获取Double值
	 * @param key
	 * @return Double
	 */
	public Double getAsDouble(String key){
		try {
			if(get(key)!=null) return Double.parseDouble(get(key).toString());
		} catch (Exception e) {
			log.error("ParamsMap getAsDouble is error!",e);
		}
		return null;
	}
	
	/**
	 * 获取Float值
	 * @param key
	 * @return Float
	 */
	public Float getAsFloat(String key){
		try {
			if(get(key)!=null) return Float.parseFloat(get(key).toString());
		} catch (Exception e) {
			log.error("ParamsMap getAsFloat is error!",e);
		}
		return null;
	}
	
	/**
	 * 获取boolean值
	 * @param key
	 * @return Boolean
	 */
	public Boolean getAsBoolean(String key){
		try {
			if(get(key)!=null) return Boolean.parseBoolean(get(key).toString());
		} catch (Exception e) {
			log.error("ParamsMap getAsBoolean is error!",e);
		}
		return null;
	}
	
	/**
	 * 获取日期值
	 * @param key
	 * @return Date
	 */
	public Date getAsDate(String key){
		try {
			SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
			if(get(key)!=null) return df.parse(get(key).toString());
		} catch (Exception e) {
			log.error("ParamsMap getAsDate is error!",e);
		}
		return null;
	}
	public HttpServletRequest getRequest() {
		return this.request;
	}
	
	/**
	 * 获取字符串数组
	 * @param key
	 * @return
	 */
	public String[] getAsStringArray(String key){
		try {
			if(get(key)==null) return new String[0];
			return get(key).toString().split(",");
		} catch (Exception e) {
			log.error("ParamsMap getAsDate is error!",e);
			e.printStackTrace();
		}
		return null;
	}
	public String getAsArrayString(String key){
		try {
			if(get(key)==null) return null;
			if(get(key) instanceof List){
				@SuppressWarnings("unchecked")
				List<Object> strs = (List<Object>) get(key);
				StringBuffer buffer = new StringBuffer();
				for(Object str:strs){
					if(buffer.length()==0){
						buffer.append(str);continue;
					}
					buffer.append(","+str);
				}
				return buffer.toString();
			}
		} catch (Exception e) {
			log.error("ParamsMap getAsDate is error!",e);
		}
		return null;
	}
	public ParamsMap append(String key,Object value){
		this.put(key, value);
		return this;
	}
	
	public void toStringArray(String key){
		if(get(key)!=null){
			String [] strs =getAsStringArray(key);
			put(key, strs);
			put(key+"_STR",strs.toString());
		}
	}
	public static void main(String[] args) {
		System.out.println(new String[]{"1","2"}.toString());
	}
}
