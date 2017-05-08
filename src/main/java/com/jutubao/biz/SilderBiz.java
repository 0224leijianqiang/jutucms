package com.jutubao.biz;

import java.util.List;

import org.springframework.stereotype.Service;

import com.jutubao.entity.ParamsMap;

@Service
public interface SilderBiz {
	List<ParamsMap> findAllSilder(String type);
}	
