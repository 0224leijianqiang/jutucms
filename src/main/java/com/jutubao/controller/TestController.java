package com.jutubao.controller;
//package com.jutubao.common.controller;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.alibaba.fastjson.JSONObject;
//import com.jutubao.common.base.BaseController;
//import com.jutubao.common.biz.impl.MongosyncBiz;
//import com.jutubao.mongodb.factory.MongoPageable;
//import com.jutubao.mongodb.service.MongoBiz;
//
//@Controller
//@RequestMapping("/test")
//public class TestController extends BaseController {
//	@Autowired
//	private MongoBiz mongoService;
//	@Autowired
//	private MongosyncBiz  syncService;
//	@RequestMapping("/getTest")
//	public void test(){
//	}
//	@RequestMapping("/getMongo")
//	@ResponseBody
//	public Object getMongo(MongoPageable pageable){
//		//需要清除固定参数 pagesize pagenumber name 
//		return JSONObject.toJSONString(mongoService.findAll(pageable));
//	}
//	@RequestMapping("/delMongo")
//	@ResponseBody
//	public Object delMongo(){
//		mongoService.remove(this.getMap().get("name").toString(),this.getMap().get("id").toString());
//		return null;
//	}
//	@RequestMapping("/sync")
//	@ResponseBody
//	public Object sync(){
//	/*	String a = null;
//		for(String str:this.getMap().getAsStringArray("name")){
//			for( map:syncService.sync(str,initArea())){
//			}
//			for(String json:syncService.getAreaSync(str)){
//				a = json;
//				//mongoService.put(json,str);
//			}
//		}*/
//		//System.out.println(syncService.sync(this.getMap().getAsString("name"),initArea()));
//		return null;
//	}
//	/***
//	 * 初始化地区表属性
//	 * @return
//	 *//*
//	private Map<String, Object> initArea(){
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("areaid","地区id号");
//		map.put("c","层级");
//		map.put("pid","上级");
//		map.put("name","地区名称");
//		map.put("ename","英文名称");
//		map.put("sp","英文简拼");
//		map.put("lat","经度");
//		map.put("lng","维度");
//		map.put("thumhurl","小图");
//		map.put("thumhurl2","图片");
//		map.put("ncrk","农村人口");
//		map.put("czrk","城镇人口");
//		map.put("gdmj","耕地面积");
//		map.put("ldmj","林地面积");
//		map.put("ydmj","园地面积");
//		map.put("symj","水域面积");
//		map.put("shdmj","四荒地面积");
//		map.put("zjdmj","宅基地面积");
//		map.put("jsydmj","建设用地面积");
//		map.put("zmj","总面积");
//		map.put("lzmj","流转面积");
//		map.put("lzl","流转率");
//		map.put("lzjg","流转价格");
//		map.put("lzjj","流转均价");
//		map.put("sylyfs","适宜利用方式");
//		map.put("zz","种植");
//		map.put("yz","养殖");
//		map.put("zdzz","重点扶植对象_种植");
//		map.put("zdyz","重点扶植对象_养植");
//		map.put("jyxz","限制经营范围");
//		map.put("gb","干部");
//		map.put("qz","权重");
//		Map<String, Object> jj = new HashMap<String, Object>();
//		jj.put("tableName", "jtb_a_data");
//		jj.put("primaryKey", "areaid");
//		//jj.put("id", "详情ID");
//		jj.put("c", "地区等级");
//		//jj.put("areaid", "area_id");
//		jj.put("content", "地区描述");
//		jj.put("r", "");
//		map.put("jj",jj);
//		map.put("status","状态");
//		return map;
//	}
//	private Map<String, Object> initVillage(){
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("village_title","村庄名字");
//		map.put("area_path","所在地区");
//		map.put("plant_culture","适宜种植/养殖");
//		map.put("tags_str","特色产业");
//		map.put("pay_type","交租方式");
//		map.put("rural","农房数量");
//		map.put("rural_unit","农房数量单位");
//		map.put("fram_num","农企/农场数量");
//		map.put("is_subsidy","补贴政策");
//		map.put("img_uri","村子图片");
//		map.put("village_videos","村子视频");
//		map.put("qjyx","全景影像");
//		map.put("address","详细地址");
//		map.put("lat","经度");
//		map.put("lng","维度");
//		map.put("size_num","土地总面积");
//		map.put("already_flow","已流转面积");
//		map.put("can_flow","可流转面积");
//		map.put("gdmj","耕地面积");
//		map.put("gdlzjg","耕地流转价格");
//		map.put("ldmj","林地面积");
//		map.put("ldlzjg","林地流转价格");
//		map.put("symj","水域面积");
//		map.put("sylzjg","水域流转价格");
//		map.put("cdmj","草地面积");
//		map.put("cdlzjg","草地流转价格");
//		map.put("shdmj","四荒地面积");
//		map.put("shdlzjg","四荒地流转价格");
//		map.put("qttdmj","其他土地面积");
//		map.put("qttdlzjg","其他土地流转价格");
//		map.put("jtss","交通设施");
//		map.put("colony","生活设施");
//		map.put("ten_km","10公里配套");
//		map.put("remark","村子简介");
//		map.put("contacts","村子联系人姓名");
//		map.put("job_title","联系人职位");
//		map.put("lxrxb","联系人性别");
//		map.put("lxrmz","联系人名族");
//		map.put("lxrnl","联系人年龄");
//		map.put("mobiles","联系人手机号");
//		map.put("source_from","来源");
//		map.put("kflz","可否流转");
//		map.put("status","状态");
//		map.put("update_time","更新时间");
//		map.put("created","创建时间");
//		return map;
//	}
//	*//**
//	 * 初始化农场表属性
//	 * @return
//	 *//*
//	private Map<String, Object> initFram(){
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("farm_name", "农场名称");
//		map.put("area_path", "所在地区");
//		map.put("ncxz", "农场性质");
//		map.put("nclb", "农场类别");
//		map.put("trade_id", "所属行业");
//		map.put("zyyw", "主营业务");
//		map.put("ygrs", "员工人数");
//		map.put("farm_address", "详细地址");
//		map.put("farm_img_url", "农场图片");
//		map.put("ncsp", "农场视频");
//		map.put("qxyx", "全息影像");
//		map.put("zmj", "土地面积");
//		map.put("gdmj", "耕地面积");
//		map.put("ldmj", "林地面积");
//		map.put("cdmj", "草地面积");
//		map.put("symj", "水域面积");
//		map.put("tdzj_xj", "土地租金（现金）");
//		map.put("tdzj_xj_dw", "土地租金（现金）单位");
//		map.put("tdzj_ls", "土地租金（粮食）");
//		map.put("tdzj_ls_dw", "土地租金（粮食）单位");
//		map.put("tdlb", "土地类别");
//		map.put("lzfs", "流转方式");
//		map.put("cbksrq", "承包开始日期");
//		map.put("cbjsrq", "承包结束日期");
//		map.put("lznx", "流转年限");
//		map.put("lease_years", "经营年限");
//		map.put("business_scale", "经营规模");
//		map.put("jylb", "经营类别");
//		map.put("mechanization", "现代化");
//		map.put("zcz", "总产值");
//		map.put("dsss", "地上设施");
//		map.put("jtss", "交通设施");
//		map.put("shss", "生活设施");
//		map.put("ten_km", "10公里配套");
//		map.put("xsqd", "销售渠道");
//		map.put("spyb", "三品一标");
//		map.put("ptnl", "配套能力");
//		map.put("wlys", "物流运输");
//		map.put("cpcl", "产品产量");
//		map.put("farm_intro", "农场介绍");
//		map.put("legal_person", "联系人");
//		map.put("lxrzw", "联系人职位");
//		map.put("lxrxb", "性别");
//		map.put("lxrmz", "名族");
//		map.put("lxrnl", "年龄");
//		map.put("farm_mobile", "手机号");
//		map.put("ly", "来源");
//		map.put("status", "状态");
//		map.put("created", "更新时间");
//		map.put("check_time", "创建时间");
//		return map; 
//	}
//	*//**
//	 * 土地表
//	 * @return
//	 *//*
//	private Map<String, Object> initLand(){
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("catid", "土地类别");
//		map.put("areaid*", "地区");
//		map.put("customtitle", "标题");
//		map.put("land_code", "系统编码");
//		map.put("lzfs", "流转方式");
//		map.put("bdcdj", "不动产登记");
//		map.put("mj", "面积");
//		map.put("mjdw", "面积单位");
//		map.put("lznx", "流转年限");
//		map.put("lzcs", "流转次数");
//		map.put("", "流转费用");
//		map.put("", "流转费用单位");
//		map.put("fkfs", "付款方式");
//		map.put("xzjyfw", "限制经营范围");
//		map.put("zrgf", "股份转让");
//		map.put("sfyjzw", "是否有建筑物");
//		map.put("fwsl", "房屋数量");
//		map.put("fwsldw", "房屋数量单位");
//		map.put("zdmj", "占地面积");
//		map.put("zdmjdw", "占地面积单位");
//		map.put("zxqk", "房屋装修");
//		map.put("zjdcx", "房屋朝向");
//		map.put("zjdfwlx", "房屋户型");
//		map.put("jzjg", "房屋结构");
//		map.put("zjdpt", "房屋配套");
//		map.put("photos", "图片展示");
//		map.put("qjzs", "全景展示");
//		map.put("land_videos", "视频展示");
//		map.put("trzd", "土壤质地");
//		map.put("tchd", "土壤厚度");
//		map.put("jxhd", "机械化度");
//		map.put("lyxz", "利用现状");
//		map.put("sz", "树种");
//		map.put("ldxz", "林地性质");
//		map.put("dsss", "地上设施");
//		map.put("smss", "水面设施");
//		map.put("tdgksy", "灌溉水源");
//		map.put("fhpl", "防洪排涝");
//		map.put("wuran", "水源质量");
//		map.put("dxsms", "地下水深");
//		map.put("ss", "水源深度");
//		map.put("sysjd", "酸碱度");
//		map.put("gstj", "供水条件");
//		map.put("gdtj", "供电条件");
//		map.put("gqtj", "供气条件");
//		map.put("wlqk", "网络条件");
//		map.put("txqk", "通信条件");
//		map.put("dlqk", "道路状况");
//		map.put("jtqk", "交通设施");
//		map.put("one_km_set", "1公里配备");
//		map.put("ten_km_traffic", "10公里交通");
//		map.put("zbhj", "周边环境");
//		map.put("content", "地块说明");
//		map.put("name", "业主姓名");
//		map.put("sex", "业主性别");
//		map.put("nation", "业主名族");
//		map.put("age", "业主年龄");
//		map.put("mobile", "业主手机号码");
//		map.put("qz", "权重");
//		map.put("cz", "操作");
//		map.put("status", "状态");
//		map.put("isjy", "交易");
//		map.put("kdrsj", "成交时间");
//		map.put("kdrje", "转让费");
//		map.put("kdrzj", "租金（现金）");
//		map.put("kdrlsjg", "租金（粮食）");
//		map.put("kdrpck", "服务套餐");
//		map.put("pckt", "交易类型");
//		map.put("pckbl", "套餐服务状态");
//		map.put("kdruid", "经纪人");
//		map.put("kdrtype", "经纪人类型");
//		map.put("kdrfy", "看地费");
//		map.put("fwf", "服务费");
//		map.put("zcfz", "政策扶植");
//		map.put("issh", "客服核对");
//		map.put("cjr", "采集人");
//		map.put("jjr_name", "经纪人");
//		map.put("tags", "标签");
//		return map; 
//	}
//	private Map<String, Object> initUser(){
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("yhm", "用户名");
//		map.put("mm1", "旧版密码");
//		map.put("mm2", "新版密码");
//		map.put("salt", "盐");
//		map.put("nc", "昵称");
//		map.put("zsxm", "真实姓名");
//		map.put("xb", "性别");
//		map.put("csny", "出生年月");
//		map.put("tx", "头像");
//		map.put("dq", "地区");
//		map.put("yhlx", "用户类型");
//		map.put("yhz", "用户组");
//		map.put("sfkh", "是否客户");
//		map.put("mz", "名族");
//		map.put("xl", "学历");
//		map.put("hy", "婚姻");
//		map.put("gxq", "关系圈");
//		map.put("gsmc", "公司名称");
//		map.put("sshy", "所属行业");
//		map.put("szd", "所在地");
//		map.put("zw", "职务");
//		map.put("gsjj", "公司简介");
//		map.put("lxdh", "联系电话");
//		map.put("qq", "QQ");
//		map.put("wx", "微信");
//		map.put("yx", "邮箱");
//		map.put("dz", "地址");
//		map.put("old_status", "状态");
//		map.put("old_created", "创建时间");
//		map.put("old_passport_id", "原表的passport_id");
//		map.put("old_source", "来源");
//		map.put("dlcs", "登录次数");
//		map.put("zhdlsj", "最后登录时间");
//		map.put("gs", "归属");
//		map.put("nsr", "年收入");
//		return map;
//	}
//	*/
//}
