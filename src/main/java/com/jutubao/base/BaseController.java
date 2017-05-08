package com.jutubao.base;



import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.LoggerFactory;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.support.DefaultMultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.jutubao.constant.Const;
import com.jutubao.entity.MessageDto;
import com.jutubao.entity.Page;
import com.jutubao.entity.ParamsMap;
import com.jutubao.util.ParamsUtils;
import com.jutubao.util.PropertiesUtils;
import com.jutubao.util.UuidUtil;

/**
 * @author wjm
 */
public class BaseController {
	
	protected final static org.slf4j.Logger log = LoggerFactory.getLogger(BaseController.class);
	
	public HttpServletResponse response;
	public HttpServletRequest baseRequest;
	public ParamsMap hashMap;
	protected MessageDto dto;
    @ModelAttribute  
    public void setReqAndRes(HttpServletRequest request, HttpServletResponse response){  
        this.response = response;  
        this.baseRequest = request;
		hashMap = new ParamsMap(request); 
    } 
    protected boolean sign(){
		try {
			String signstr = ParamsUtils.sign(hashMap);
			if(!signstr.equals(Const.SUCCESS)){
				PrintWriter pw = response.getWriter();
				pw.print("{\"CODE\":\""+signstr+"\",\"msg\":\""+PropertiesUtils.getPropertiesInfo(signstr, "/properties/errorcode/error.properties")+"\"}");
				pw.flush();
				pw.close();
				return true;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return false;
    }
    protected boolean validateParams(MessageDto dto,String ...params){
    	StringBuffer buffer = new StringBuffer();
    	boolean isValidate = true;
    	for(String param:params){
			Object value = this.getMap().get(param);
			if(value==null||value.toString().equals("")){
				buffer.append(param+" ");
				isValidate = false;
			}
		}
    	buffer.append(" is not null ");
    	dto.setCode(Const.ERROR_CODE);
    	dto.setResult(buffer.toString());
    	return isValidate;	
    }
    public ParamsMap getMap(){
		return this.hashMap;
	}
    public Integer getInteger(String key){
    	return (Integer) this.hashMap.get(key);
    }
	
	/**得到ModelAndView
	 * @return
	 */
	public ModelAndView getModelAndView(){
		return new ModelAndView();
	}
	/**得到request对象
	 * @return
	 */
	public HttpServletRequest getRequest() {
		HttpServletRequest request = ((ServletRequestAttributes)RequestContextHolder.getRequestAttributes()).getRequest();
		return request;
	}
	/**得到32位的uuid
	 * @return
	 */
	public String get32UUID(){
		return UuidUtil.get32UUID();
	}
	/**得到分页列表的信息
	 * @return
	 */
	public Page<?> getPage(){
		return new Page<ParamsMap>();
	}
	
	public void initTableData(ModelAndView mv){
		
	}
	/**
	 * 文件上传 待封装
	 * @param files
	 * @return
	 */
	public String uploadFile(List<MultipartFile> files) {
		return "";
	}
	public ParamsMap initPageData(HttpServletRequest baseRequest,ParamsMap pd) throws Exception{
		DefaultMultipartHttpServletRequest multiRequest =null;
		MultiValueMap<String, MultipartFile> multis = null;
		if(baseRequest instanceof DefaultMultipartHttpServletRequest){
			multiRequest = (DefaultMultipartHttpServletRequest) baseRequest;
			multis = multiRequest.getMultiFileMap();
			pd = new ParamsMap(multiRequest);
		}
		if(multis!=null){
			Iterator<Entry<String, List<MultipartFile>>> iterator = multis.entrySet().iterator();
			while(iterator.hasNext()){
				Entry<String, List<MultipartFile>> en= iterator.next();
				String files = uploadFile(en.getValue());
				if(null==files||files.equals("")){
					pd.remove(en.getKey());
				}else{
					pd.put(en.getKey(), files);
				}
			}
		}
		return pd;
	}
	/**
	 * @param msg
	 * @return
	 */
	protected String parseObjToJson(MessageDto msg){
		return JSONObject.toJSONString(msg);
	}
	/**
	 * 获取十位时间戳
	 * @return
	 */
	protected Integer getCurrentTimeMillis(){
		return Integer.parseInt(String.valueOf(System.currentTimeMillis()).substring(0,10));
	}
	public static void main(String[] args) {
		System.out.println(System.currentTimeMillis()/1000);
		System.out.println(new BaseController().getCurrentTimeMillis());
	}
}
