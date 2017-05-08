package com.jutubao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jutubao.base.BaseController;
import com.jutubao.biz.SilderBiz;
import com.jutubao.constant.Const;
import com.jutubao.entity.MessageDto;
import com.jutubao.util.PropertiesUtils;

@Controller
@RequestMapping("/cms")
public class CMSController extends BaseController {
	@Autowired
	private SilderBiz sBiz;
	@RequestMapping("/getSilder")
	@ResponseBody
	public Object getSilder(){
		if(this.getMap().getAsString("type")==null)return parseObjToJson(new MessageDto(Const.NO_TYPE_PARAMS,PropertiesUtils.getPropertiesInfo(Const.NO_TYPE_PARAMS, "/properties/errorcode/error.properties")));
		return parseObjToJson(new MessageDto(Const.SUCCESS_CODE,sBiz.findAllSilder(this.getMap().getAsString("type"))));
	}
}
