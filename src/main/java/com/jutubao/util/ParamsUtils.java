package com.jutubao.util;

import java.io.UnsupportedEncodingException;
import java.lang.reflect.Field;
import java.net.URLEncoder;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.apache.commons.codec.EncoderException;
import org.apache.commons.codec.binary.Base64;
import org.apache.commons.codec.binary.StringUtils;
import org.apache.commons.codec.digest.DigestUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.jutubao.constant.Const;

public class ParamsUtils {
	
	protected final static Logger log = LoggerFactory.getLogger(ParamsUtils.class);
	
	@SuppressWarnings("rawtypes")
	public static String getURLParams(Map map){
		Iterator<?> entries = map.entrySet().iterator(); 
		Map.Entry entry; 
		String key = "";
		StringBuffer returnParams = new StringBuffer();
		while (entries.hasNext()) {
			String value = "";  
			entry = (Map.Entry) entries.next(); 
			key = (String) entry.getKey(); 
			Object valueObj = entry.getValue();
			if(null == valueObj){ 
				value = "";
			}
			//如果参数为数组,那么数组对应转化为v,v,v的形式
			else if(valueObj instanceof String[]){ 
				String[] values = (String[])valueObj;
				for(int i=0;i<values.length;i++){ 
					 value += values[i] + ",";
				}
				value = value.substring(0, value.length()-1); 
			}
			else{
				value = valueObj.toString(); 
			}
			//请求地址如果包括中文,那就对中文进行URLEncoder编码
			if(ChinesUtils.isChinese(value)){
				try {
					value = URLEncoder.encode(value, "UTF-8");
				} catch (UnsupportedEncodingException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			if(returnParams.length()==0){
				returnParams.append(key+"="+value);
				continue;
			}				
			returnParams.append("&"+key+"="+value);
		}
		return returnParams.toString();
	}
	public static String getURLParams(Object obj){
		Field fds[] = obj.getClass().getDeclaredFields();
		StringBuffer sb = new StringBuffer();
		try {
			for(Field fd:fds){
				fd.setAccessible(true);
				Object value = fd.get(obj);
				if(value==null)continue;
				String str = value.toString();
				if(ChinesUtils.isChinese(str)){
					try {
						value = URLEncoder.encode(str, "UTF-8");
					} catch (UnsupportedEncodingException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
				}
				if(sb.length()==0){
					sb.append(fd.getName()+"="+fd.get(obj));
					continue;
				}
				sb.append("&"+fd.getName()+"="+fd.get(obj));
			}
			//请求地址如果包括中文,那就对中文进行URLEncoder编码
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return sb.toString();
	}
	public static String sign(Map<String, Object> map) throws EncoderException{
		if(map==null)return Const.PARAMS_IS_NULL;
		if(map.get("ume")==null) return Const.UME_IS_NULL;
		long diff = DateUtil.afterSeconds(Long.parseLong(map.get("ume")+""));
		log.info("diff:{}",diff);
		if(diff<Const.SIGN_UME_MIN||diff>Const.SIGN_UME_MAX)return Const.VALID_UME_ERROR;
		if(map.get("sign")==null) return Const.INVALID_SIGN;
		String sparams = map.get("sign").toString();
		map.remove("sign");
		//map.remove("ume");
		String[] keyArray = map.keySet().toArray(new String[0]);  
		Arrays.sort(keyArray);
		StringBuilder stringBuilder = new StringBuilder();  
		stringBuilder.append(Const.key);  
		StringBuilder md5Params = new StringBuilder();
		for (String key : keyArray)md5Params.append(key).append(map.get(key)); 
		stringBuilder.append(DigestUtils.md5Hex(StringUtils.getBytesUtf8(md5Params.toString())));
		stringBuilder.append(Const.secret);  
		String sign =  Base64.encodeBase64String(DigestUtils.md5Hex(stringBuilder.toString()).getBytes());
		if(sparams.equals(sign))return Const.SUCCESS;
		return Const.VERIFY_SIGNATURE_FAILED;
	}
	
	public static void main(String[] args) throws InterruptedException, EncoderException {
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("pids", "2,62,63,58,40,42,43");
		map.put("pageNum", "0");
		map.put("pageSize", "10");
		String[] keyArray = map.keySet().toArray(new String[0]);  
		Arrays.sort(keyArray);
		StringBuilder stringBuilder = new StringBuilder();  
		stringBuilder.append(Const.key);  
		StringBuilder md5Params = new StringBuilder();
		for(String key : keyArray)  
		{  
			if(key.equals("sign"))continue;
			md5Params.append(key).append(map.get(key));  
		} 
		stringBuilder.append(DigestUtils.md5Hex(StringUtils.getBytesUtf8(md5Params.toString())));
		stringBuilder.append(Const.secret);  
		String sign =  Base64.encodeBase64String(DigestUtils.md5Hex(stringBuilder.toString()).getBytes());
		System.out.println(sign);
		System.out.println(ParamsUtils.sign(map));
	}
}
