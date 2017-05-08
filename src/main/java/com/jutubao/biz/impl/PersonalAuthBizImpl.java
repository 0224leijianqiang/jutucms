package com.jutubao.biz.impl;

import java.util.Date;
import java.util.List;

import org.apache.commons.codec.digest.DigestUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jutubao.biz.PersonalAuthBiz;
import com.jutubao.constant.Const;
import com.jutubao.constant.RedisConstant;
import com.jutubao.dao.DBCollection;
import com.jutubao.dao.impl.DBWhere;
import com.jutubao.entity.MessageDto;
import com.jutubao.entity.Page;
import com.jutubao.entity.ParamsMap;
import com.jutubao.util.IPUtil;
import com.jutubao.util.JedisUtils;
import com.jutubao.util.PropertiesUtils;
import com.jutubao.util.Tools;
@Service
public class PersonalAuthBizImpl implements PersonalAuthBiz{
	private static final String APPLY_AUTH_TABLES = "jtb_member_apply";
	private static final String MY_FAVORITE = "jtb_favorite";
	private static final String MY_LAND_APPLY = "jtb_land_apply";
	private static final String MY_DEMAND="jtb_land_demand";
	private static final String SYS_USER = "jtb_admin_user";
	private static final String SYS_LOG = "jtb_admin_log";
	private static final String SALT = "F>BW6u:_bkrs}o#&~2!)a|yRqCp]Uw1[fd4,7eI%";
	@Autowired
	private DBCollection coll;
	@Override
	public MessageDto applyAuth(ParamsMap map) {
		// TODO Auto-generated method stub
		Integer autoId = -1;
		try {
			MessageDto dto = getApplyAuth(map.getAsString("uid"));
			ParamsMap result  = null;
			if(dto.getCode().equals(Const.SUCCESS_CODE)){
				result =  (ParamsMap) getApplyAuth(map.getAsString("uid")).getResult();
			}
			map.put("update_time",Tools.get10Time());
			if(result!=null){
				result.putAll(map);
				result.put("trash",0);
				coll.update(APPLY_AUTH_TABLES, map,new DBWhere().is("id", result.getAsString("id")));
				return new MessageDto(Const.SUCCESS_CODE,result.getAsString("id"));
			}
			//处理字段合格信息
			map.put("create_time",Tools.get10Time());
			autoId = coll.insert(APPLY_AUTH_TABLES, map);
		} catch (Exception e) {
			return new MessageDto(Const.ERROR_CODE,e.getMessage());
		}
		return new MessageDto(Const.SUCCESS_CODE,autoId);
	}
	@Override
	public MessageDto getApplyAuth(String uid) {
		// TODO Auto-generated method stub
		try {
			ParamsMap result = coll.findByParams(APPLY_AUTH_TABLES, new DBWhere().is("uid", uid));
			if(result==null)return new MessageDto(Const.ERROR_CODE,"No found Apply Authentication information with uid("+uid+")");
			return new MessageDto(Const.SUCCESS_CODE, result);
		} catch (Exception e) {
			// TODO: handle exception
			return new MessageDto(Const.ERROR_CODE, e.getMessage());
		}
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public MessageDto findFavorite(Page page) {
		// TODO Auto-generated method stub
		List<ParamsMap> results = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.PERSONAL_AUTH.J_PERSONALAUTHBIZIMPL_FAVORITES, page);
		if(results==null){
			results = coll.findPage(MY_FAVORITE, new DBWhere().is("status", "1").is("uid", page.getPd().getAsString("uid")).limit(page.getFristOffset(), page.getPageNum()));
			JedisUtils.getInstance().putHset(RedisConstant.PERSONAL_AUTH.J_PERSONALAUTHBIZIMPL_FAVORITES, page, results);
		}
		page.setResult(results);
		return new MessageDto(Const.SUCCESS_CODE,page);
	}
	@Override
	public MessageDto cancleFavorite(String favoriteId) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		try {
			//处理字段合格信息
			ParamsMap result =  new ParamsMap();
			result.put("status", "0");
			coll.update(MY_FAVORITE, result, new DBWhere().is("id", favoriteId));
		} catch (Exception e) {
			// TODO: handle exception
			return new MessageDto(Const.ERROR_CODE,e.getMessage());
		}
		return new MessageDto(Const.SUCCESS_CODE);
	}
	@SuppressWarnings({ "unchecked", "rawtypes" })
	@Override
	public MessageDto findLandApply(Page page) {
		// TODO Auto-generated method stub
		List<ParamsMap> results = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.PERSONAL_AUTH.J_PERSONALAUTHBIZIMPL_FAVORITES, page);
		if(results==null){
			results = coll.findAll(MY_LAND_APPLY, new DBWhere().is("trash", 0).is("passport_id", page.getPd().getAsString("uid")));
			JedisUtils.getInstance().putHset(RedisConstant.PERSONAL_AUTH.J_PERSONALAUTHBIZIMPL_FAVORITES, page, results);
		}
		page.setResult(results);
		return new MessageDto(Const.SUCCESS_CODE,page);
	}
	@Override
	public MessageDto cancleLandApply(String landApplyId) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		try {
			//处理字段合格信息
			ParamsMap result =  new ParamsMap();
			result.put("status", "-2");
			coll.update(MY_LAND_APPLY, result, new DBWhere().is("id", landApplyId));
		} catch (Exception e) {
			// TODO: handle exception
			return new MessageDto(Const.ERROR_CODE,e.getMessage());
		}
		return new MessageDto(Const.SUCCESS_CODE);
	}
	@SuppressWarnings("unchecked")
	@Override
	public MessageDto findDemand(@SuppressWarnings("rawtypes") Page page) {
		// TODO Auto-generated method stub
		List<ParamsMap> results = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.PERSONAL_AUTH.J_PERSONALAUTHBIZIMPL_DEMAND, page);
		if(results==null){
			results = coll.findAll(MY_DEMAND, new DBWhere().is("trash", 0).is("passport_id", page.getPd().getAsString("uid")));
			JedisUtils.getInstance().putHset(RedisConstant.PERSONAL_AUTH.J_PERSONALAUTHBIZIMPL_DEMAND, page, results);
		}
		page.setResult(results);
		return new MessageDto(Const.SUCCESS_CODE,page);
	}
	@Override
	public MessageDto removeDemand(String id, String passport_id) {
		// TODO Auto-generated method stub
		try {
			ParamsMap result =  new ParamsMap();
			result.put("trash", "1");
			coll.update(MY_DEMAND, result, new DBWhere().is("id", id).is("passport_id", passport_id));
		} catch (Exception e) {
			// TODO: handle exception
			return new MessageDto(Const.ERROR_CODE,e.getMessage());
		}
		return new MessageDto(Const.SUCCESS_CODE);
	}
	@Override
	public MessageDto updateDemand(String id,ParamsMap map) {
		// TODO Auto-generated method stub
		//新增
		Integer autoId = -1;
		try {
			map.put("update_time",Tools.get10Time());
			if(id==null||id.equals("")){
				map.put("create_time",Tools.get10Time());
				autoId = coll.insert(MY_DEMAND, map);
			}else{
				coll.update(MY_DEMAND, map, new DBWhere().is("id", id));
			}
		} catch (Exception e) {
			// TODO: handle exception
			return new MessageDto(Const.ERROR_CODE,e.getMessage());
		}
		return new MessageDto(Const.SUCCESS_CODE,autoId==-1?id:autoId);
	}
	@Override
	@Transactional
	public MessageDto userLogin(String u,String p,String ip) {
		// TODO Auto-generated method stub
		String password =  DigestUtils.md5Hex(DigestUtils.sha1Hex(p)+SALT);
		ParamsMap map = coll.findByParams(SYS_USER,new DBWhere().is("username",u).is("password",password));
		if(map!=null)
		{
			map.remove("password");
			//更新最后登录时间与ip
			ParamsMap update = new ParamsMap();
			update.put("last_login_time", Tools.get10Time());
			update.put("last_login_ip",IPUtil.ipToLong(ip));
			coll.update(SYS_USER, update, new DBWhere().is("id", map.get("id")));
			//插入登录日志信息
			ParamsMap  log = new ParamsMap();
			log.put("user_id", map.get("id"));
			log.put("action_id",112);
			log.put("action_ip",IPUtil.ipToLong(ip));
			log.put("model","admin_user");
			log.put("record_id", 0);
			log.put("remark",u+"用户登录："+Tools.date2Str(new Date()));
			log.put("status",1);
			log.put("create_time",Tools.get10Time());
			coll.insert(SYS_LOG, log);
			return new MessageDto(Const.SUCCESS_CODE,map);
		}
		return new MessageDto(Const.USER_OR_PASSWORD_IS_ERROR,PropertiesUtils.getPropertiesInfo(Const.USER_OR_PASSWORD_IS_ERROR, "/properties/errorcode/error.properties"));
	}
	@Override
	public MessageDto userRegister(ParamsMap map) {
		// TODO Auto-generated method stub
		map.put("create_time",Tools.get10Time());
		map.put("update_time",Tools.get10Time());
		map.put("last_login_time", Tools.get10Time());
		map.put("last_login_ip",IPUtil.ipToLong(IPUtil.getIpAddr(map.getRequest())));
		map.put("signup_ip",IPUtil.ipToLong(IPUtil.getIpAddr(map.getRequest())));
		map.put("password", DigestUtils.md5Hex(DigestUtils.sha1Hex(map.getAsString("password"))+SALT));
		map.put("status", 1);
		if(coll.insert(SYS_USER, map)>0){
			return new MessageDto(Const.SUCCESS_CODE);
		}
		return new MessageDto(Const.ERROR_CODE);
	}
}
