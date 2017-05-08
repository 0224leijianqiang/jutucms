package com.jutubao.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jutubao.biz.AreaBiz;
import com.jutubao.constant.RedisConstant;
import com.jutubao.dao.DBCollection;
import com.jutubao.dao.impl.DBParams;
import com.jutubao.dao.impl.DBWhere;
import com.jutubao.entity.ParamsMap;
import com.jutubao.util.JedisUtils;
@Service
public class AreaBizImpl implements AreaBiz{
	@Autowired
	private DBCollection coll;
	@Override
	public List<ParamsMap> findAll(String parentId,int c) {
		// TODO Auto-generated method stub
		String params = " pid= "+parentId;
		//定义5张表
		String[] str = new String[]{"jtb_a1","jtb_a2","jtb_a3","jtb_a4","jtb_a5"};
		String cstr = ","+(c+1)+" as c";
		if(c>5){
			return null;
		}
		@SuppressWarnings("unchecked")
		List<ParamsMap> results  = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.AREA.J_AREA_FINDALL, params+"&c="+c);
		if(results==null){
			results = coll.findAllBySql("select a.id,a.name "+cstr+" from "+str[c-1]+" a where pid=?", new DBParams(parentId));
			JedisUtils.getInstance().putHset(RedisConstant.AREA.J_AREA_FINDALL, params+"&c="+c, results);
		}
		return results;
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<ParamsMap> findAllByFarm(String parentId) {
		// TODO Auto-generated method stub
		String params = " parent_code= "+parentId;
		List<ParamsMap> results = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.AREA.J_AREA_FINDALL_BY_FARM, params);
		if(results==null){
			results = coll.findAll("trade", new DBWhere().is("trade_id", parentId));
			JedisUtils.getInstance().putHset(RedisConstant.AREA.J_AREA_FINDALL_BY_FARM, params,results);
		}
		return results;
	}
}
