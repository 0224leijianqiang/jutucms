package com.jutubao.controller;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONObject;
import com.jutubao.base.BaseController;
import com.jutubao.biz.AreaBiz;
import com.jutubao.constant.Const;
import com.jutubao.dao.DBCollection;
import com.jutubao.entity.MessageDto;
import com.jutubao.entity.ParamsMap;

@Controller
@RequestMapping("/area")
public class AREAController extends BaseController{
	@Autowired
	private AreaBiz areaBiz;
	@Autowired
	private DBCollection collection;
	@ResponseBody
	@RequestMapping("/alls")
	public Object alls(){
		String areaid = this.getMap().getAsString("id");
		Integer c = this.getMap().getAsInteter("c");
		if(areaid==null||areaid.equals("")) areaid = "0";
		if(c == null) c = 1;
		List<ParamsMap> results = areaBiz.findAll(areaid, c);
		if(results==null||results.size()==0)return parseObjToJson(new MessageDto(Const.ERROR_CODE,"No Find Result With this Params"));
		return parseObjToJson(new MessageDto(Const.SUCCESS_CODE,results));
	}
	@ResponseBody
	@RequestMapping("/lists")
	public Object lists(){
		String areaid = this.getMap().getAsString("areaid");
		if(areaid==null||areaid.equals("")) areaid = "0";
		List<?> results = areaBiz.findAllByFarm(areaid);
		List<ParamsMap> simpleResult = new LinkedList<ParamsMap>();
		for(Object result:results){
			if(result instanceof JSONObject){
				ParamsMap map = new ParamsMap();
				map.put("name",((JSONObject)result).get("area_name"));
				map.put("areaid",((JSONObject)result).get("area_id"));
				simpleResult.add(map);
				continue;
			}else if(result instanceof ParamsMap){
				ParamsMap map = new ParamsMap();
				map.put("name",((ParamsMap)result).get("area_name"));
				map.put("areaid",((ParamsMap)result).get("area_id"));
				simpleResult.add(map);
			}
		}
		if(results==null||results.size()==0)return parseObjToJson(new MessageDto(Const.ERROR_CODE,"No Find Result With this Params"));
		return parseObjToJson(new MessageDto(Const.SUCCESS_CODE,simpleResult));
	}
	@RequestMapping("/test")
	@ResponseBody
	private Object test(){
		return parseObjToJson(new MessageDto(collection.findById("jtb_a1","2")));
	}
}
