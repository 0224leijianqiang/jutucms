package com.jutubao.entity;

import java.io.Serializable;

/**
 * 
 * @ClassName: MessageDto
 * @Description: json数据返回
 * @author yxz
 * @date 2017年3月31日 下午5:00:45 
 * @Version 1.0
 */
public class MessageDto implements Serializable{

	private static final long serialVersionUID = -7854460034519610586L;
	
	//code
	private String code;
	//错误消息
	private String msg;
	//输入数据
	private Object result;
	
	public MessageDto() {}

	public MessageDto(String code) {
		this.code = code;
	}
	public MessageDto(Object result) {
		this.result = result;
	}

	
	public MessageDto(String code, String msg) {
		this(code,msg,"");
	}

	public MessageDto(String code, Object result) {
		
		this(code,"",result);
	}

	public MessageDto(String code, String msg, Object result) {
		this.code = code;
		this.msg = msg;
		this.result = result;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		this.msg = msg;
	}

	public Object getResult() {
		//如果返回为分页实体 那么取消掉传递的参数
		if(result instanceof Page){
			((Page<?>) result).setPd(null);
		}
		return result;
	}

	public void setResult(Object result) {
		this.result = result;
	}
	@Override
	public String toString() {
		return "MessageDto [code=" + code + ", msg=" + msg + ", result="
				+ result + "]";
	}
}
