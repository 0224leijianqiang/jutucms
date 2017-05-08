package com.jutubao.dao;

import java.util.List;

import com.jutubao.dao.impl.DBParams;
import com.jutubao.dao.impl.DBWhere;
import com.jutubao.entity.Columns;
import com.jutubao.entity.ParamsMap;

public interface DBCollection {
	public Object save();
	//插入所有的表
	public int insertTables(String tableName,List<Columns> list);
	//插入所有的列
	public int insertColumns(String tableName,Columns cloumns);
	//更改所有的列
	public int changeColumns(String tableName,Columns columns);
	//删除表
	public int dropTables(String tableName);
	//删除列
	public int dropColumns(String tableName,String columns);
	//更改列的顺序
	public int afterColumns(String tableName,String columns,String afterColumns);
	//判断列是否存在
	public boolean isExitsColumn(String tableName,String columnName);
	//判断表是否存在
	public boolean isExitsTables(String tableName);
	//得到所有的表
	public List<String> getAllTables();
	//得到所有表中的列
	public List<String> getAllColumns(String tableName);
	
	//通过SQL查询所有的字段列
	public List<ParamsMap> getAllColumnsBySql(String tableName);
	//得到主键唯一ID
	public ParamsMap getColumns(String tableName,String columns);
	//分页查询 
	public List<ParamsMap> findPage(String tableName,DBWhere where);
	
	//查询所有记录
	public List<ParamsMap> findAll(String tableName,DBWhere where);
	
	public int count(String tableName,DBWhere where);
	/**
	 * 根据sql查询参数 切记 sql中不允许出现详细值
	 * @param sql
	 * @param params
	 * @return
	 */
	public List<ParamsMap> findAllBySql(String sql,DBParams params);
	//根据ID查询单条记录
	public ParamsMap findById(String tableName,String id);

	public ParamsMap findByParams(String tableName,DBWhere where);
	//新增记录  
	public int insert(String tableName,ParamsMap map);
	
	//修改记录 
	public int update(String tableName,ParamsMap map,DBWhere where);
	
	//删除记录
	public int delete(String tableName,String id);
	
	public String getPrimaryKey(String tableName);
	
}
