package com.jutubao.biz.impl;

import java.util.LinkedList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.jutubao.dao.DBCollection;
import com.jutubao.dao.impl.DBWhere;
import com.jutubao.entity.Columns;
import com.jutubao.entity.ParamsMap;

@Service
public class FramerworkBiz {
	private final static String SYS_TEMPLATE = "SYS_TEMPLATES";
	private final static String SYS_PROPERTIES = "SYS_PROPERTIES";
	private final static String SYS_TEMPLATE_ID = "TEMPLATE_ID";
	private final static String SYS_PROPERTIES_ID = "PROPERTIES_ID";
	@Autowired
	private DBCollection collection;
	public int insertTemplate(){
		List<Columns> columns = new LinkedList<Columns>();
		columns.add(new Columns("TEMPLATE_ID","INT", 32,"模版主键ID",false, true,true));
		columns.add(new Columns("PID","INT", 32,"模版上级",false, false,false));
		columns.add(new Columns("TEMPLATE_NAME","VARCHAR",64,"名称",false, false,false));
		columns.add(new Columns("TEMPLATE_KEY","VARCHAR", 64,"模版名",false, false,false));
		columns.add(new Columns("TEMPLATE_INFO","VARCHAR", 64,"描述",false, false,false));
		columns.add(new Columns("CREATE_DATE","INT", 10,"创建时间",false, false,false));
		columns.add(new Columns("UPDATE_DATE","INT", 10,"更新时间",false, false,false));
		columns.add(new Columns("IS_ENABLE","BIT", 1,"是否可用",false, false,false));
		return collection.insertTables(SYS_TEMPLATE, columns);
	}
	public int insertProperties(){
		List<Columns> columns = new LinkedList<Columns>();
		columns.add(new Columns("PROPERTIES_ID","INT", 32,"属性ID",false, true,true));
		columns.add(new Columns("PROPERTIES_PID","INT",64,"模块组ID",false, false,false));
		columns.add(new Columns("PROPERTIES_TYPE","VARCHAR", 32,"属性类型",false, false,false));
		columns.add(new Columns("PROPERTIES_NAME","VARCHAR", 64,"属性名",false, false,false));
		columns.add(new Columns("PROPERTIES_DEFAULT","VARCHAR", 64,"默认值",false, false,false));
		columns.add(new Columns("PROPERTIES_KEY","VARCHAR", 32,"属性KEY",false, false,false));
		columns.add(new Columns("PROPERTIES_MAX_LENGTH","INT", 10,"最大长度",false, false,false));
		columns.add(new Columns("PROPERTIES_INFO","VARCHAR",128,"备注",false, false,false));
		columns.add(new Columns("PROPERTIES_PARAMS","VARCHAR",128,"属性参数",false, false,false));
		columns.add(new Columns("PROPERTIES_VALID","VARCHAR",128,"验证方式",false, false,false));
		return collection.insertTables(SYS_PROPERTIES, columns);
	}
	public List<ParamsMap> listTemplates(String PID){
		if(PID==null)return null;
		return collection.findAll(SYS_TEMPLATE, new DBWhere().is("PID", PID));
	}
	public ParamsMap findTemplates(String ID){
		return collection.findById(SYS_TEMPLATE, ID);
	}
	public List<ParamsMap> listProperties(String PID){
		return collection.findAll(SYS_PROPERTIES, new DBWhere().is("PROPERTIES_PID", PID));
	}
	public List<ParamsMap> listColumns(String tableName){
		return collection.getAllColumnsBySql(tableName);
	}
	public ParamsMap findColumns(String tableName,String columns){
		return collection.getColumns(tableName, columns);
	}
	public int saveTemplates(ParamsMap map){
		map.put("UPDATE_DATE",System.currentTimeMillis()/1000);
		String ID = map.getStringRemove("ID");
		if(ID==null){
			map.put("IS_ENABLE",0);
			map.put("CREATE_DATE",System.currentTimeMillis()/1000);
			return collection.insert(SYS_TEMPLATE, map);
		}else{
			return collection.update(SYS_TEMPLATE, map,new DBWhere().is(SYS_TEMPLATE_ID,ID));
		}
	}
	@Transactional
	public int saveProperties(ParamsMap map){
		String ID = map.getStringRemove("PROPERTIES_ID");
		if(ID==null){
			return collection.insert(SYS_PROPERTIES, map);
		}else{
			return collection.update(SYS_PROPERTIES, map,new DBWhere().is(SYS_PROPERTIES_ID,ID));
		}
	}
	@Transactional
	public int deleteTemplates(String id){
		List<ParamsMap> lists= collection.findAll(SYS_TEMPLATE, new DBWhere().is("PID", id));
		if(lists!=null&&lists.size()>0)return -1;
		return collection.delete(SYS_TEMPLATE, id);
	}
}
