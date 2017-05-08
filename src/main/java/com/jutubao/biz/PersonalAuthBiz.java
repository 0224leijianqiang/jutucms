package com.jutubao.biz;

import org.springframework.stereotype.Service;

import com.jutubao.entity.MessageDto;
import com.jutubao.entity.Page;
import com.jutubao.entity.ParamsMap;

@Service
public interface PersonalAuthBiz {
	/**
	 * 申请个人认证
	 * @param map
	 * @return
	 */
	public MessageDto applyAuth(ParamsMap map);
	
	/**
	 * 查询个人认证情况
	 * @param map
	 * @return
	 */
	public MessageDto getApplyAuth(String uid);
	/**
	 * 查询个人收藏
	 * @param page
	 * @return
	 */
	public MessageDto findFavorite(Page<?> page);
	/**
	 * 取消收藏
	 * @param favoriteId
	 * @return
	 */
	public MessageDto cancleFavorite(String favoriteId);
	/**
	 * 查询个人土地预约
	 * @param page
	 * @return
	 */
	public MessageDto findLandApply(Page<?> page);
	/**
	 *取消个人土地预约
	 * @param landApplyId
	 * @return
	 */
	public MessageDto cancleLandApply(String landApplyId);
	
	/**
	 * 查询所有发布的需求
	 * @param page passprot_id 
	 * @return
	 */
	public MessageDto findDemand(Page<?> page);

	public MessageDto removeDemand(String id,String passport_id);
	
	public MessageDto updateDemand(String id,ParamsMap map);
	
	public MessageDto userLogin(String u,String p,String ip);
	public MessageDto userRegister(ParamsMap map);
	
}	
