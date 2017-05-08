package com.jutubao.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.jutubao.base.BaseController;
import com.jutubao.biz.PersonalAuthBiz;
import com.jutubao.constant.Const;
import com.jutubao.entity.MessageDto;
import com.jutubao.entity.Page;
import com.jutubao.util.IPUtil;
@Controller
@RequestMapping("/pauth")
public class PersonalAuthController extends BaseController{
	@Autowired
	private PersonalAuthBiz authBiz;
	//---------------------------------------------------------收藏-----------------------------------------------------------------
	/**
	 * 收藏列表
	 * @param page
	 * @return list集合
	 */
	@RequestMapping("/favorites")
	@ResponseBody
	private Object favorites(@SuppressWarnings("rawtypes") Page page){
		MessageDto dto = new MessageDto();
		if(!validateParams(dto, "uid"))return parseObjToJson(dto);
		page.setPd(getMap());
		return parseObjToJson(authBiz.findFavorite(page));
	}
	/**
	 * 取消收藏
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/cancleFavorites",method=RequestMethod.POST)
	@ResponseBody
	private Object cancleFavorites(String id){
		return parseObjToJson(authBiz.cancleFavorite(id));
	}
	//---------------------------------------------------------预约-----------------------------------------------------------------
	/**
	 * 我的预约
	 * @param page
	 * @return list集合
	 */
	@RequestMapping("/applys")
	@ResponseBody
	private Object applys(@SuppressWarnings("rawtypes") Page page){
		MessageDto dto = new MessageDto();
		if(!validateParams(dto, "uid"))return parseObjToJson(dto);
		page.setPd(getMap());
		return parseObjToJson(authBiz.findLandApply(page));
	}
	/**
	 * 取消预约
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/cancleApply",method=RequestMethod.POST)
	@ResponseBody
	private Object cancleApply(String id){
		return parseObjToJson(authBiz.cancleLandApply(id));
	}
	//---------------------------------------------------------认证-----------------------------------------------------------------
	/**
	 * 申请认证
	 * @return 认证结果
	 */
	@RequestMapping(value="/applyAuth",method=RequestMethod.POST)
	@ResponseBody
	private Object applyAuth(){
		MessageDto dto = new MessageDto();
		if(!validateParams(dto, "type"))return parseObjToJson(dto);
		String type = this.getMap().getAsString("type");
		//个人验证
		if(type.equals("person")&&!validateParams(dto,"uid","truename","idcard_front","idcard_back","area_id","address"))return parseObjToJson(dto);
		//公司验证
		else if(type.equals("company")&&!validateParams(dto,"company","charter","register_number","content"))return parseObjToJson(dto);
		else if(!"personcompany".contains(type)){
			dto.setCode(Const.ERROR_CODE);
			dto.setResult("This Auth Type is Person Or Company");
			return parseObjToJson(dto);
		}
		//非空验证规则
		return parseObjToJson(authBiz.applyAuth(this.getMap()));
	}
	/**
	 * 得到认证信息结果
	 * @return
	 */
	@RequestMapping("/getApplyAuth")
	@ResponseBody
	private Object getApplyAuth(){
		 dto = new MessageDto();
		 if(!validateParams(dto, "uid"))return parseObjToJson(dto);
		 return parseObjToJson(authBiz.getApplyAuth(this.getMap().getAsString("uid")));
	}
	//---------------------------------------------------------需求-----------------------------------------------------------------
	/**
	 * 新增 修改发布的需求
	 * @param id
	 * @return
	 */
	@RequestMapping(value="/updateDemand",method=RequestMethod.POST)
	@ResponseBody
	private Object updateDemand(String id){
		MessageDto dto = new MessageDto();
		if(validateParams(dto, "passport_id","title","area","size","size_unit","land_type","years","transfer_type","mobile","client_name","use"))return dto;
		return parseObjToJson(authBiz.updateDemand(id, getMap()));
	}
	/**
	 * 查询所有需求列表
	 * @param page
	 * @return
	 */
	@SuppressWarnings("rawtypes")
	@RequestMapping(value="/demands")
	@ResponseBody
	private Object demands(Page page){
		dto =new MessageDto();
		if(!validateParams(dto, "uid"))return parseObjToJson(dto);
		page.setPd(getMap());
		return parseObjToJson(authBiz.findDemand(page));
	}
	/**
	 * 删除发布的需求
	 * @param page
	 * @return
	 */
	@RequestMapping(value="/removeDemand",method=RequestMethod.POST)
	@ResponseBody
	private Object removeDemand(){
		dto = new MessageDto();
		if(!validateParams(dto, "id","passport_id"))return parseObjToJson(dto);
		return parseObjToJson(authBiz.removeDemand(this.getMap().getAsString("id"), this.getMap().getAsString("passport_id")));
	}
	
	//用户登录
	@RequestMapping(value="/ulogin")
	@ResponseBody
	private Object userLogin(){
		dto = new MessageDto();
		if(!validateParams(dto, "u","p"))return parseObjToJson(dto);
		return parseObjToJson(authBiz.userLogin(this.getMap().getAsString("u"), this.getMap().getAsString("p"),IPUtil.getIpAddr(baseRequest)));
	}
	@RequestMapping("/uregister")
	@ResponseBody
	private Object uregister(){
		dto = new MessageDto();
		if(!validateParams(dto,"username","password"))return parseObjToJson(dto);
		return parseObjToJson(authBiz.userRegister(getMap()));
	}
}
