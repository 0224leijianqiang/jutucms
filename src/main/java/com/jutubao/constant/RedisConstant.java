package com.jutubao.constant;

/**
 * 
 * @ClassName: RedisCons
 * @Description: Redis常量
 * @author yxz
 * @date 2017年4月10日 上午9:24:30 
 * @Version 1.0
 */
public class RedisConstant {
	
	/*
	 *   缓存定义规则:Java_操作类名_操作的方法名称 
	 */
	//资讯
	public class ZX{
		//分页获取-资讯
		public final static String J_ZX_1 = "J_CmsColumnBizImpl_CmsColumns";
		//获取推荐位
		public final static String J_ZX_2 = "J_CmsColumnBizImpl_getPosition";
	}
	//专题
	public class ZT{
		//专题
		public final static String J_ZT_1 = "J_CmsSeoZtBizImpl_findCmsSeoZts";
	}
	//标签
	public class TAG{
		//获取标签
		public final static String J_TAG_1 = "J_CmsTagsBizImpl_getTags";
	}
	//百科
	public class BK{
		//分页获取百科推荐
		public final static String J_BK_ISR   = "J_CmsBaiKeBizImpl_getCmsBaiKeIsRecomment";
		//分页获取百科-按最后更新时间
		public final static String J_BK_OTIME = "J_CmsBaiKeBizImpl_getCmsBaiKeOrdTime";
		//分页获取百科Map-按  分类获取  可以获取多个 以,分割
		public final static String J_BK_CID   = "J_CmsBaiKeBizImpl_getCmsBaiKeByCid";
		//分页获取百科-按点击量
		public final static String J_BK_OVIEW = "J_CmsBaiKeBizImpl_getCmsBaiKeOrdView";
		//获取百科的分类
		public final static String J_BK_COL   = "J_CmsColumnBizImpl_getCmsColumnsByModel";
		//分页获取百科List-分类获取  可以获取多个 以,分割
		public final static String J_BK_CBL   = "J_CmsBaiKeBizImpl_getCmsBaikeyByCidByList";

	}
	//友情连接
	public class LK{
		//获取友情链接
		public final static String J_LK_1 = "J_CmsLink_findCmsLink";
	}
	
	public class SILDER{
		public final static String J_SILDER="J_SLIDERBIZIMPL_FINDALLSILDER";
	}

	public class AREA{
		public final static String J_AREA_FINDALL="J_AREABIZIMPL_FINDALL";
		public final static String J_AREA_FINDALL_BY_MONGO="J_AREA_FINDALL_BY_MONGO";
		public final static String J_AREA_FINDALL_BY_FARM="J_AREA_FINDALL_BY_FARM";
	}
	
	public class PERSONAL_AUTH{
		public final static String J_PERSONALAUTHBIZIMPL_FAVORITES = "J_PERSONALAUTHBIZIMPL_FAVORITES";
		public final static String J_PERSONALAUTHBIZIMPL_FINDLANDAPPLY = "J_PERSONALAUTHBIZIMPL_FINDLANDAPPLY";
		public final static String J_PERSONALAUTHBIZIMPL_DEMAND = "J_PERSONALAUTHBIZIMPL_DEMAND";
	}
}
