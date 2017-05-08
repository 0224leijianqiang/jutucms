package com.jutubao.util;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Properties;

import com.jutubao.entity.OrderedProperties;
public class PropertiesUtils {
	public static final String TEMPLAETE_ISELECT="/properties/template/iselect.properties";
	
	public static Map<String, Object> getProperties(String path){
		Map<String, Object> map = new LinkedHashMap<String, Object>();
	    OrderedProperties prop = new OrderedProperties();     
	      try{
	          //读取属性文件a.properties
	          InputStream in= PropertiesUtils.class.getResourceAsStream(path);
	          prop.load(in);     ///加载属性列表
	          Iterator<String> it=prop.stringPropertyNames().iterator();
	          while(it.hasNext()){
	              String key=it.next();
	              map.put(key,prop.getProperty(key));
	          }
	          in.close();
	      }
	      catch(Exception e){
	    	  e.printStackTrace();
	      }
		return map;
	}
	/**
	 * 存储或者更新properties
	 * @param map 存储集合对象
	 * @param path 存储文件路径
	 * @return
	 */
	public static Map<String, Object> setProperties(Map<String, Object> map,String path){
		   Properties prop = new Properties();     
	       try{
	          //存储properties
	          Iterator<Entry<String, Object>> it=map.entrySet().iterator();
	          FileOutputStream oFile = new FileOutputStream(path, true);//true表示追加打开
	          while(it.hasNext()){
	              Entry<String, Object> entry=it.next();
	              prop.put(entry.getKey(),entry.getValue());
	          }
	          oFile.close();
	       }
	       catch(Exception e){
	          e.printStackTrace();
	       }
		   return map;
	}
	public static String getPropertiesInfo(String key,String path){
		Map<String, Object> map = getProperties(path);
		if (map==null)return null;
		if (map.get(key)==null)return "The value of key was not found in the current file";
		return map.get(key).toString();
	}
}	
