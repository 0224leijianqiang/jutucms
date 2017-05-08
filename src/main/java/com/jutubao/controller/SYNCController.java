package com.jutubao.controller;
//package com.jutubao.common.controller;
//
//import java.util.ArrayList;
//import java.util.LinkedList;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.ResponseBody;
//
//import com.core.util.dto.MessageDto;
//import com.core.util.dto.ParamsMap;
//import com.core.util.util.Const;
//import com.jutubao.common.base.BaseController;
//import com.jutubao.common.biz.AreaBiz;
//import com.jutubao.common.biz.impl.MongosyncBiz;
//import com.jutubao.mongodb.service.MongoBiz;
//@Controller
//@RequestMapping("/sync")
//public class SYNCController extends BaseController {
//	@Autowired
//	private MongosyncBiz syncBiz;
//	@Autowired
//	private AreaBiz areaBiz;
//	@Autowired
//	private MongoBiz mongoBiz;
//	@RequestMapping("/area")
//	@ResponseBody
//	public Object syncArea(){
//		String tableName  = this.getMap().getAsString("tableName");
//		if (tableName==null)return parseObjToJson(new MessageDto("-1","The Params tableName is NUll"));
//		List<List<ParamsMap>> strings = syncBiz.getAreaSync(tableName);
//		for(List<ParamsMap> json:strings){
//			ParamsMap map = new ParamsMap();
//			map.put("fields", json);
//			mongoBiz.put(map,tableName);
//		}
//		return parseObjToJson(new MessageDto("1", tableName+" Sync SUCCESS!!"));
//	}
//	@RequestMapping("/land")
//	@ResponseBody
//	public Object syncLand(String name){
//		/*List<ParamsMap> maps = syncBiz.syncData(name);
//		for(ParamsMap map:maps){
//			mongoBiz.put(map,name);
//		}*/
//		init("0","");
//		return parseObjToJson(new MessageDto("success"));
//		
//	}
//	private void init(String parentCode,String pname){
//		List<ParamsMap> results =  syncBiz.initArea(parentCode,null);
//		if(results==null||results.size()==0)return;
//		for(ParamsMap map:results){
//			String areaId  = map.getAsString("old_id");
//			String level = map.getAsString("level");
//			final String currentId = map.getAsString("area_id");
//			ParamsMap info =  syncBiz.getInfo(areaId, level);
//			if(info==null)continue;
//			info.remove("areaid");
//			map.putAll(info);
//			final String name = pname+","+map.getAsString("name");
//			map.put("name",strToarray(name));
//			mongoBiz.put(map,"cus_area");
//			new Thread(new Runnable() {
//				@Override
//				public void run() {
//					// TODO Auto-generated method stub
//					init(currentId,name);
//				}
//			}).start();
//		}
//	}
//	private List<String> strToarray(String str){
//		String [] s = str.split(",");
//		List<String> arrays = new LinkedList<String>();
//		for(String a:s){
//			if(a.equals(""))continue;
//			arrays.add(a);
//		}
//		return arrays;
//	}
//	
//	@ResponseBody
//	@RequestMapping("/getAll")
//	public Object findAll(){
//		String areaid = this.getMap().getAsString("areaid");
//		String c = this.getMap().getAsString("c");
//		if(areaid==null||areaid.equals("")) areaid = "0";
//		if(c == null||c.equals("")) c = "0";
//		//List<ParamsMap> results = syncBiz.findAll(areaid, c);
//		List<ParamsMap> maps = new ArrayList<ParamsMap>();
//		initLocal(areaid, c, "",maps);
//		//if(results==null||results.size()==0)return parseObjToJson(new MessageDto(Const.ERROR_CODE,"No Find Result With this Params"));
//		return parseObjToJson(new MessageDto(Const.SUCCESS_CODE,"SUCCESS"));
//	}
//	
//	private void initLocal(String areaid,String c,String pname,List<ParamsMap> maps){
//		List<ParamsMap> results = syncBiz.findAll(areaid);
//		if(areaid.equals("0")&&c.equals("0")){
//			results = results.subList(33, 34);
//		}
//		if(results!=null&&results.size()>0){
//			for(ParamsMap map:results){
//				final String name = pname+","+map.getAsString("area_name");
//				map.put("name",strToarray(name));
//				mongoBiz.put(map,"cus_area");
//				final String areaidtmp =map.getAsString("area_id");
//				final String c1 = map.getAsString("c");
//				initLocal(areaidtmp,c1,name,maps);
//			}
//		}
//		
//	}
//}
