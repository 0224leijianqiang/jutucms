package com.jutubao.biz;

import java.util.List;

import com.jutubao.entity.ParamsMap;

public interface AreaBiz {
	List<ParamsMap> findAll(String parentId,int c);
	List<ParamsMap> findAllByFarm(String parentId);
}
