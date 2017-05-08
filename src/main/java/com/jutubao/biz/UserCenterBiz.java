package com.jutubao.biz;

import org.springframework.stereotype.Service;

import com.jutubao.entity.MessageDto;
import com.jutubao.entity.ParamsMap;

@Service
public interface UserCenterBiz {
	MessageDto userLogin(ParamsMap map);
	MessageDto userRegister(ParamsMap map);
	MessageDto publishNeed(ParamsMap map);
}	
