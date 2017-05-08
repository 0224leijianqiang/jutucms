package com.jutubao.biz.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jutubao.biz.SilderBiz;
import com.jutubao.constant.RedisConstant;
import com.jutubao.dao.DBCollection;
import com.jutubao.dao.impl.DBParams;
import com.jutubao.dao.impl.DBWhere;
import com.jutubao.entity.ParamsMap;
import com.jutubao.util.JedisUtils;
@Service
public class SliderBizImpl implements SilderBiz{
	private static final String tableName = "jtb_cms_slider";
	@Autowired
	private DBCollection coll;
	@Override
	public List<ParamsMap> findAllSilder(String type){
		@SuppressWarnings("unchecked")
		List<ParamsMap> results = (List<ParamsMap>) JedisUtils.getInstance().getObj(RedisConstant.SILDER.J_SILDER);
		if(results==null||results.size()==0){
			DBWhere where = new DBWhere(new DBParams());
			where.is("type", type).is("status", 1).is("trash", 0);
			results = coll.findAll(tableName, where);
			JedisUtils.getInstance().putObj(RedisConstant.SILDER.J_SILDER, results);
		}
		return results;
	}
}
