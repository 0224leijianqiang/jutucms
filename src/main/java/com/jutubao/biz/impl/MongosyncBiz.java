package com.jutubao.biz.impl;
//package com.jutubao.common.biz.impl;
//
//import java.util.HashMap;
//import java.util.Iterator;
//import java.util.LinkedList;
//import java.util.List;
//import java.util.Map;
//import java.util.Map.Entry;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//
//import com.alibaba.fastjson.JSONObject;
//import com.core.util.dto.ParamsMap;
//import com.core.util.util.UuidUtil;
//import com.jutubao.common.annotation.DataSourceChange;
//import com.jutubao.common.datasource.ContextHolder;
//import com.jutubao.mongodb.identity.DConvertEntity;
//
//@Service
//public class MongosyncBiz {
//	@Autowired
//	private BaseBiz baseService;
//	public List<ParamsMap> sync(String tables,Map<String, Object> fields){
//		System.out.println( baseService.showColumns("newjutubao", "jtb_a1"));/*
//		//所有列
//		List<ParamsMap> columns =baseService.showColumns("newjutubao", "jtb_a1");*/
//		//所有数据
//		List<ParamsMap> maps = baseService.listAll(tables,"1=1");
//		//循环所有数据
//		List<ParamsMap> results = new LinkedList<ParamsMap>();
//		for(ParamsMap map:maps){
//			//取单个数据  取单列 判断类型 
//			Iterator<?> iter =  map.entrySet().iterator();
//			/*ParamsMap result = new ParamsMap();
//			result.put("created_at", System.currentTimeMillis());
//			result.put("updated_at", System.currentTimeMillis());
//			result.put("uid", "systemcreate");
//			result.put("id", System.currentTimeMillis()+(UuidUtil.get32UUID().substring(0, 6)));*/
//			//ParamsMap data = new ParamsMap();
//			//data.put("type",type);
//			List<ParamsMap> resultdatas = new LinkedList<ParamsMap>();
//			while(iter.hasNext()){
//				@SuppressWarnings("unchecked")
//				Entry<String, Object> entry =  (Entry<String, Object>) iter.next();
//				String key = entry.getKey();
//				//根据key取数据库列去对应的格式
//				ParamsMap column = baseService.findColumn(tables, key);
//				if(column==null)continue;
//				ParamsMap whilemaps = new ParamsMap();
//				//1.系统字段API指定  2.非系统字段 创建属性是生成  生成规则13位时间+6位随机字符串
//				whilemaps.put("field_key",column.getAsString("COLUMN_NAME"));
//				//如果简介属于集合
//				//字段名称
//				whilemaps.put("field_name",column.getAsString("COLUMN_COMMENT").equals("")?fields.get(entry.getKey())==null?"暂无详细说明":fields.get(entry.getKey()):column.getAsString("COLUMN_COMMENT"));
//				fields.remove(entry.getKey());
//				//字段属性
//				whilemaps.put("data", entry.getValue());
//				//是否必传
//				/*whilemaps.put("is_required",0);
//				//是否隐藏
//				whilemaps.put("is_hidden",0);
//				//是否系统字段
//				whilemaps.put("is_system_reserved",1);*/
//				String dataType= column.get("DATA_TYPE").toString();
//				//字段类型
//				if(dataType.equalsIgnoreCase("int")){
//					whilemaps.put("field_type","integer");
//				}
//				else if(dataType.equalsIgnoreCase("varchar")||dataType.equalsIgnoreCase("char")){
//					whilemaps.put("field_type","text");
//				}else if(dataType.equalsIgnoreCase("mediumtext")){
//					whilemaps.put("field_type","textarea");
//				}
//				//每条数据生成具体
//				resultdatas.add(whilemaps);
//			}
//			Iterator<Entry<String, Object>> fiter =  fields.entrySet().iterator();
//			while(fiter.hasNext()){
//				ParamsMap newColumn = new ParamsMap();
//				Entry<String, Object> entry = fiter.next();
//				if(fields.get(entry.getKey()) instanceof Map){
//					newColumn = new ParamsMap();
//					@SuppressWarnings("unchecked")
//					Map<String, Object> hashmap = (Map<String, Object>) fields.get(entry.getKey());
//					if(hashmap==null)continue;
//					String tableName = hashmap.get("tableName").toString();
//					String pimaryKey = hashmap.get("primaryKey").toString();
//					//hashmap.remove("tableName");
//					//hashmap.remove("primaryKey");
//					ParamsMap result =  baseService.findById(tableName, map.get(pimaryKey).toString());
//					if(result==null)continue;
//					//ParamsMap data = baseService.getPrimaryKey(tableName);
//					newColumn.put(entry.getKey(), initResult(result, hashmap,tableName));
//					resultdatas.add(newColumn);
//					continue;
//				}
//				newColumn.put("field_key",entry.getKey());
//				//字段名称
//				newColumn.put("field_name",fields.get(entry.getKey()));
//				//字段属性
//				newColumn.put("data","");
//				
//				newColumn.put("field_type",System.currentTimeMillis()+UuidUtil.get32UUID().substring(0, 6));
//				//是否必传
//				/*newColumn.put("is_required",0);
//				//是否隐藏
//				newColumn.put("is_hidden",0);
//				//是否系统字段
//				newColumn.put("is_system_reserved",1);*/
//				resultdatas.add(newColumn);
//			}
//			ParamsMap template = new ParamsMap();
//			template.put("fields", resultdatas);
///*			data.put("template", template);
//			result.put("data", data);
//*/			results.add(template);
//		}
//		return results;
//	}
//	/**
//	 * 
//	 * @param result 返回的结果
//	 * @param hashmap 设定的属性
//	 * @return
//	 */
//	private Object initResult(ParamsMap result,Map<String, Object> hashmap,String tableName){
//		Iterator<Entry<String, Object>> fiter =  result.entrySet().iterator();
//		List<ParamsMap> resultdatas = new LinkedList<ParamsMap>();
//		while(fiter.hasNext()){
//			ParamsMap newColumn = new ParamsMap();
//			Entry<String, Object> entry = fiter.next();
//			newColumn.put("field_key",entry.getKey());
//			//字段名称
//			newColumn.put("field_name",hashmap.get(entry.getKey()));
//			newColumn.put("field_type","text");
//			//字段属性
//			newColumn.put("data",result.get(entry.getKey()));
//			ParamsMap column = baseService.findColumn(tableName, entry.getKey());
//			String dataType= column.get("DATA_TYPE").toString();
//			//字段类型
//			if(dataType.equalsIgnoreCase("int")){
//				newColumn.put("field_type","integer");
//			}
//			else if(dataType.equalsIgnoreCase("varchar")||dataType.equalsIgnoreCase("char")){
//				newColumn.put("field_type","text");
//			}else if(dataType.contains("text")){
//				newColumn.put("field_type","textarea");
//			} 
//			//是否必传
//			/*newColumn.put("is_required",0);
//			//是否隐藏
//			newColumn.put("is_hidden",0);
//			//是否系统字段
//			newColumn.put("is_system_reserved",1);*/
//			resultdatas.add(newColumn);
//		}
//		System.out.println(JSONObject.parse(JSONObject.toJSONString(resultdatas)));
//		return resultdatas;
//	}
//	public List<List<ParamsMap>>  getAreaSync(String tables){
//		//所有数据
//		List<ParamsMap> maps = baseService.listAll(tables,"1=1");
//		List<List<ParamsMap>> json = new LinkedList<List<ParamsMap>>();
//		//循环所有数据
//		for(ParamsMap map:maps){
//			//取单个数据  取单列 判断类型 
//			List<ParamsMap> results = new LinkedList<ParamsMap>();
//			for(DConvertEntity entity:getDConvertEntityArea()){
//				ParamsMap whilemaps = new ParamsMap();
//				whilemaps.put("field_name",entity.getFieldName());
//				whilemaps.put("field_key", entity.getFiledKey());
//				whilemaps.put("field_type", entity.getFieldType());
//				whilemaps.put("field_value",map.get(entity.getJutubaoColumn()));
//				results.add(whilemaps);
//			}
//			json.add(results);
//		}
//		return json;
//	}
//	
//	public List<ParamsMap> syncData(String tables){
//		Map<String, Object> map = new HashMap<String, Object>();
//		map.put("jtb_a1",1);
//		map.put("jtb_a2",2);
//		map.put("jtb_a3",3);
//		map.put("jtb_a4",4);
//		map.put("jtb_a5",5);
//		return baseService.listAll("SELECT b.*,a.c as c1,a.content as content1 FROM `jtb_a_data` a RIGHT JOIN "+tables+" b on a.areaid=b.areaid where a.c="+map.get(tables)+" order by a.areaid asc");
//	}
//	@DataSourceChange(ContextHolder.DATA_SOURCE_FARM)
//	public List<ParamsMap> initArea(String parentCode,String [] arrays){
//		
//	/*	List<ParamsMap> resultsA= (List<ParamsMap>) JedisUtils.getInstance().getObj("12");
//		if(resultsA==null||resultsA.size()==0){
//			resultsA = baseService.listAll("area","1=1");
//			JedisUtils.getInstance().putObj("12",resultsA);
//		}
//		System.out.println("22");*/
//		List<ParamsMap> results =  baseService.listAll("area"," parent_code = "+parentCode);
//		return results;
//	}
//	@DataSourceChange(ContextHolder.DATA_SOURCE_NEWJUTUBAO)
//	public ParamsMap getInfo(String areaId,String level){
//		ParamsMap map = new ParamsMap();
//		map.put("1","jtb_a1");
//		map.put("2","jtb_a2");
//		map.put("3","jtb_a3");
//		map.put("4","jtb_a4");
//		map.put("5","jtb_a5");
//		return baseService.findById("SELECT b.*,a.c as c1,a.content as content1 FROM `jtb_a_data` a RIGHT JOIN "+map.getAsString(level)+" b on a.areaid=b.areaid where a.c="+level+" and b.areaid="+areaId+" order by a.areaid asc");
//		//return baseService.listAll("SELECT b.*,a.c as c1,a.content as content1 FROM `jtb_a_data` a RIGHT JOIN "+map.getAsString(level)+" b on a.areaid=b.areaid where a.c="+map.get(level)+" order by a.areaid asc");
//	}
//	private List<DConvertEntity> getDConvertEntityArea(){
//		List<DConvertEntity> converts = new LinkedList<DConvertEntity>();
//		converts.add(new DConvertEntity("上级", "pre_location", "pid"));
//		converts.add(new DConvertEntity("地区名称", "region_name", "name"));
//		converts.add(new DConvertEntity("英文名称", "region_en_name", "ename"));
//		converts.add(new DConvertEntity("图片", "picurl", "thumhurl,thumhurl2"));
//		converts.add(new DConvertEntity("农村人口", "1491486596151b84572", "ncrk"));
//		converts.add(new DConvertEntity("城镇人口", "1491486596153b72908", "czrk"));
//		converts.add(new DConvertEntity("耕地（亩）", "149148659615493e461", "gdmj"));
//		converts.add(new DConvertEntity("林地（亩）", "1491486596155122f03", "ldmj"));
//		converts.add(new DConvertEntity("园地（亩）", "14914865961574e6cae", "ydmj"));
//		converts.add(new DConvertEntity("水域（亩）", "1491486596159f4f18e", "symj"));
//		converts.add(new DConvertEntity("四方地（亩）", "1491486596158b77b86", "shdmj"));
//		converts.add(new DConvertEntity("宅基地（亩）", "149148659616078af44", "zjdmj"));
//		converts.add(new DConvertEntity("建设用地（亩）", "149148659616101e9c0", "jsydmj"));
//		converts.add(new DConvertEntity("耕地流转价格（公斤）", "14914865961623d3804", ""));
//		converts.add(new DConvertEntity("耕地流转格单位（/亩/年", "1491486596163d6b9d5", ""));
//		converts.add(new DConvertEntity("林地流转价格（公斤）", "14914865961640e493c", ""));
//		converts.add(new DConvertEntity("林地流转价格单位（/亩/年）", "1491486596185d847fb", ""));
//		converts.add(new DConvertEntity("园地流转价 格（公斤）", "149148659616598277b", ""));
//		converts.add(new DConvertEntity("园地流转价格单位（/亩/年）", "14914865961684485c1", ""));
//		converts.add(new DConvertEntity("水域流转价格（公斤）", "1491486596169fd7d3b", ""));
//		converts.add(new DConvertEntity("水域流转价格单位（/亩/年）", "1491486596167cf8c27", ""));
//		converts.add(new DConvertEntity("适宜利用方式", "149148659617044d670", "sylyfs"));
//		converts.add(new DConvertEntity("种植", "149148659617144c257", "zz"));
//		converts.add(new DConvertEntity("养殖", "1491486596172eb6eec", "yz"));
//		converts.add(new DConvertEntity("重点扶植项目-种植", "14914865961731fe193", "zdzz"));
//		converts.add(new DConvertEntity("重点扶植项目-养殖", "14914865961748dfda1", "zdyz"));
//		converts.add(new DConvertEntity("限制经营范围", "1491486596175cbe8be", "jyxz"));
//		converts.add(new DConvertEntity("位置", "location_field", "lat,lng,"));
//		converts.add(new DConvertEntity("干部姓名", "14914865961790ae6fa", "gb"));
//		converts.add(new DConvertEntity("干部联系电话", "1491486596180c625d9", "gb"));
//		converts.add(new DConvertEntity("干部职位", "14914865961867d8b9d", "gb"));
//		converts.add(new DConvertEntity("干部换届是否作废", "1491486596181fbbbf7", "gb"));
//		converts.add(new DConvertEntity("权重", "weight", "qz"));
//		converts.add(new DConvertEntity("简介", "14914865961847ed512", "jj"));
//		//converts.add(new DConvertEntity("", "", ""));
//		return converts;
//	}
//	public static void main(String[] args) {
//		/*try {
//			List<Map<String, Object>> maps =  (List<Map<String, Object>>) JSONObject.parse(new String(FileUtil.getContent("city.txt")));
//			for(Map<String, Object> map:maps){
//				//System.out.println("field_key:"+map.get("field_key")+",field_value:"+map.get("field_value")+",field_type:"+map.get("field_type")+",field_name:"+map.get("field_name"));
//				System.out.println(map.get("name"));
//			}
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}*/
//		long milles = System.currentTimeMillis();
//		for(int i=0;i<800000;i++){
//			if(i==799999){
//				System.out.println(System.currentTimeMillis()-milles);
//			}
//		}
//	}
//	public List<ParamsMap> findAll(String parentId,String c) {
//		// TODO Auto-generated method stub
//		Integer strIndex = 0;
//		if(c!=null&&!c.equals("")){
//			strIndex = Integer.parseInt(c);
//		}
//		if(strIndex>4||strIndex<0)return null;
//		String params = " a.pid= "+parentId;
//		//定义5张表
//		String[] str = new String[]{"jtb_a1","jtb_a2","jtb_a3","jtb_a4","jtb_a5"};
//		List<ParamsMap> results = baseService.listAll("select a.areaid,a.name,a.ename,b.c from "+str[strIndex]+" a left join jtb_a_data b on a.areaid=b.areaid where "+params+" and b.c="+(strIndex+1));
//		/*List<ParamsMap> results  = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.AREA.J_AREA_FINDALL, params+"&b.c="+strIndex);
//		if(results==null){
//			results = baseService.listAll("select a.areaid,a.name,a.ename,b.c from "+str[strIndex]+" a left join jtb_a_data b on a.areaid=b.areaid where "+params);
//			JedisUtils.getInstance().putHset(RedisConstant.AREA.J_AREA_FINDALL, params+"&c="+strIndex, results);
//		}*/
//		return results;
//	}
//	
//	public List<ParamsMap> findAll(String parentId) {
//		// TODO Auto-generated method stub
//		
//		List<ParamsMap> results = baseService.listAll("select * from area where parent_code = "+parentId);
//		/*List<ParamsMap> results  = (List<ParamsMap>) JedisUtils.getInstance().hget(RedisConstant.AREA.J_AREA_FINDALL, params+"&b.c="+strIndex);
//		if(results==null){
//			results = baseService.listAll("select a.areaid,a.name,a.ename,b.c from "+str[strIndex]+" a left join jtb_a_data b on a.areaid=b.areaid where "+params);
//			JedisUtils.getInstance().putHset(RedisConstant.AREA.J_AREA_FINDALL, params+"&c="+strIndex, results);
//		}*/
//		return results;
//	}
//}
