package com.jutubao.dao.impl;

import java.sql.Connection;
import java.sql.DatabaseMetaData;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

import javax.annotation.Resource;

import org.springframework.jdbc.datasource.DataSourceUtils;
import org.springframework.stereotype.Repository;

import com.alibaba.druid.pool.DruidDataSource;
import com.alibaba.druid.util.JdbcUtils;
import com.jutubao.dao.DBCollection;
import com.jutubao.dao.impl.DBWhere.Like;
import com.jutubao.entity.Columns;
import com.jutubao.entity.ParamsMap;
@Repository
public class DBCollectionSupport implements DBCollection{
	@Resource(name="dataSource")
	private DruidDataSource dataSource;
	@Override
	public Object save() {
		// TODO Auto-generated method stub
		try {
			Connection collection=DataSourceUtils.getConnection(dataSource);
			collection.createStatement().executeUpdate("create table t_user (username varchar(51) not null primary key,password varchar(2-1) not null );");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public int insertTables(String tableName, List<Columns> list) {
		// TODO Auto-generated method stub
		Connection connection = null;
		PreparedStatement stment = null;
		try {
			connection = DataSourceUtils.getConnection(dataSource);
			StringBuffer buffer = new StringBuffer();
			buffer.append(" CREATE TABLE "+tableName+"( ");
			boolean isSplit = false;
			for(Columns column:list){
				if(!isSplit){
					buffer.append(column.getAddString());
					isSplit = true;
					continue;
				}
				buffer.append(","+column.getAddString());
			}
			buffer.append(");");
			stment =  connection.prepareStatement(buffer.toString());
			return stment.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			DataSourceUtils.releaseConnection(connection, dataSource);
		}
		return -1;
	}
	@Override
	public int insertColumns(String tableName, Columns columns) {
		// TODO Auto-generated method stub
		return excuteSQLUpdate(" ALTER  "+tableName+columns.getAlterString(false), null);
	}
	@Override
	public int changeColumns(String tableName, Columns columns) {
		// TODO Auto-generated method stub
		return excuteSQLUpdate(" ALTER  "+tableName+columns.getAlterString(false), null);
	}
	@Override
	public int dropTables(String tableName) {
		// TODO Auto-generated method stub
		return excuteSQLUpdate("drop table "+tableName, null);
	}
	@Override
	public int dropColumns(String tableName, String columns) {
		// TODO Auto-generated method stub
		return -1;
	}
	@Override
	public int afterColumns(String tableName, String columns,
			String afterColumns) {
		// TODO Auto-generated method stub
		return excuteSQLUpdate("alter table "+tableName+" drop column "+tableName, null);
	}
	@Override
	public boolean isExitsColumn(String tableName,String columnName) {
		// TODO Auto-generated method stub
		Connection conn = null;
		try {
		    conn = DataSourceUtils.getConnection(dataSource);
			DatabaseMetaData data=  conn.getMetaData();
			ResultSet rsc = data.getColumns(conn.getCatalog(), conn.getMetaData().getUserName(),tableName, null);
			while(rsc.next()){
				if(rsc.getString("COLUMN_NAME").equals(columnName)){
					return true;
				}
			}
			//DataSourceUtils.getConnection(dataSource).createStatement().executeQuery("select column_name,column_comment  from information_schema.columns where table_schema='newjutubao' and table_name= "+tableName);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return false;
	}
	@Override
	public boolean isExitsTables(String tableName) {
		// TODO Auto-generated method stub
		Connection conn =  null;
		try {
			conn = DataSourceUtils.getConnection(dataSource);
			DatabaseMetaData data=  conn.getMetaData();
			/*TABLE_CAT String => 表类别（可为 null）
			TABLE_SCHEM String => 表模式（可为 null）
			TABLE_NAME String => 表名称
			TABLE_TYPE String => 表类型。
			REMARKS String => 表的解释性注释
			TYPE_CAT String => 类型的类别（可为 null）
			TYPE_SCHEM String => 类型模式（可为 null）
			TYPE_NAME String => 类型名称（可为 null）
			SELF_REFERENCING_COL_NAME String => 有类型表的指定 "identifier" 列的名称*/
			ResultSet rs = data.getTables(conn.getCatalog(),conn.getMetaData().getUserName(), tableName, new String[]{"TABLE"});
			if(rs.next())return true;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return false;
	}
	@Override
	public List<String> getAllTables() {
		// TODO Auto-generated method stub
		Connection conn = null;
		try {
			conn = DataSourceUtils.getConnection(dataSource);
			DatabaseMetaData data=  conn.getMetaData();
			ResultSet rs = data.getTables(conn.getCatalog(),conn.getMetaData().getUserName(), null, new String[]{"TABLE"});
			List<String> list = new LinkedList<String>();
			while(rs.next()){
				list.add(rs.getString("TABLE_NAME"));
			}
			return list;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return null;
	}
	@Override
	public List<String> getAllColumns(String tableName) {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		Connection conn  = null;
		try {
			conn = DataSourceUtils.getConnection(dataSource);
			DatabaseMetaData data=  conn.getMetaData();
			ResultSet rsc = data.getColumns(conn.getCatalog(), conn.getMetaData().getUserName(),tableName, null);
			//ResultSet primaryKey = data.getPrimaryKeys(conn.getCatalog(),conn.getSchema(), tableName);
			List<String> lists = new LinkedList<String>();
			while(rsc.next()){
				lists.add(rsc.getString("COLUMN_NAME"));
				//System.out.println(rsc.getString("COLUMN_NAME")+rsc.getString("DATA_TYPE")+rsc.getString("COLUMN_NAME")+rsc.getString("COLUMN_SIZE"));
			}
			return lists;
			//DataSourceUtils.getConnection(dataSource).createStatement().executeQuery("select column_name,column_comment  from information_schema.columns where table_schema='newjutubao' and table_name= "+tableName);
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return null;
	}
	@Override
	public List<ParamsMap> getAllColumnsBySql(String tableName) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DataSourceUtils.getConnection(dataSource);
			String catelog = conn.getCatalog();
			DataSourceUtils.releaseConnection(conn, dataSource);
			List<ParamsMap> maps = excuteSQL("select * from information_schema.columns where table_schema='"+catelog+"' and table_name=?",new DBWhere(new DBParams(tableName)));
			return maps;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public ParamsMap getColumns(String tableName, String columns) {
		// TODO Auto-generated method stub
		try {
			Connection conn = DataSourceUtils.getConnection(dataSource);
			String catelog = conn.getCatalog();
			DataSourceUtils.releaseConnection(conn, dataSource);
			List<ParamsMap> maps = excuteSQL("select * from information_schema.columns where table_schema='"+catelog+"' and table_name=?",new DBWhere(new DBParams(tableName)));
			return maps.size()>0?maps.get(0):null;
		} catch (Exception e) {
			// TODO: handle exception
		}
		return null;
	}
	@Override
	public List<ParamsMap> findPage(String tableName,DBWhere where) {
		// TODO Auto-generated method stub
		return excuteSQL("select * from "+tableName, where);
	}
	@Override
	public List<ParamsMap> findAll(String tableName,DBWhere where) {
		// TODO Auto-generated method stub
		return excuteSQL("select * from "+tableName, where);
	}
	@Override
	public int count(String tableName, DBWhere where) {
		// TODO Auto-generated method stub
		List<ParamsMap> results = excuteSQL("select * from "+tableName, where);
		return results.size()>0?results.get(0).getAsInteter("count"):0;
	}
	@Override
	public List<ParamsMap> findAllBySql(String sql, DBParams params) {
		// TODO Auto-generated method stub
		return excuteSQL(sql, new DBWhere(params));
	}
	@Override
	public ParamsMap findById(String tableName, String id) {
		// TODO Auto-generated method stub
		String primaryKey = getPrimaryKey(tableName);
		List<ParamsMap> maps = excuteSQL("select * from "+tableName+" where "+primaryKey+" = ?", new DBWhere(new DBParams(id)));
		return maps.size()>0?maps.get(0):null;
	}
	@Override
	public ParamsMap findByParams(String tableName, DBWhere where) {
		// TODO Auto-generated method stub
		List<ParamsMap> maps = excuteSQL("select * from "+tableName,where);
		return maps.size()>0?maps.get(0):null;
	}
	@Override
	public int insert(String tableName, ParamsMap map) {
		DBParams db = new DBParams();
		return excuteSQLUpdate(new StringBuffer("insert into "+tableName+" ").append(toInsert(map, db)).toString(),db);
	}
	@Override
	public int update(String tableName,ParamsMap map,DBWhere where) {
		// TODO Auto-generated method stub
		DBParams db = new DBParams();
		String sql = "update "+tableName+" set "+toUpdate(map, db) ;
		db.addAll(where.getDBParams());
		return excuteSQLUpdate(sql+where,db);
	}
	@Override
	public int delete(String tableName,String id) {
		// TODO Auto-generated method stub
		return excuteSQLUpdate(" delete from "+tableName+" where "+getPrimaryKey(tableName)+" = ? ", new DBParams().append(id));
	}
	@Override
	public String getPrimaryKey(String tableName) {
		// TODO Auto-generated method stub
		Connection conn = null;
		try {
		    conn = DataSourceUtils.getConnection(dataSource);
			DatabaseMetaData data=  conn.getMetaData();
			ResultSet primaryKey = data.getPrimaryKeys(conn.getCatalog(),null, tableName);
			while(primaryKey.next()){
				return primaryKey.getString("COLUMN_NAME");
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return null;
	}
	private List<ParamsMap> excuteSQL(String sql,DBWhere where){
		Connection conn = null;
		PreparedStatement pstat = null;
		ResultSet rs = null;
		List<ParamsMap> maps = new LinkedList<ParamsMap>();
		try {
			conn = DataSourceUtils.getConnection(dataSource);
			pstat = conn.prepareStatement(sql+where);
			//将参数赋值进去
			initParams(pstat, where.getDBParams());
			rs = pstat.executeQuery();
			ResultSetMetaData rsmd = rs.getMetaData();
			int count = rsmd.getColumnCount(); 
			while(rs.next()){
				ParamsMap map = new ParamsMap();
				//循环拿取所有列
		        for (int i = 1; i <= count; i++) {  
		           map.put(rsmd.getColumnLabel(i), rs.getObject(i));
		        }  
		        maps.add(map);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return maps;
	}
	/**
	 * 新增修改sql 如果有自增id 那么返回自增id
	 * @param sql
	 * @param params
	 * @return
	 * @throws SQLException
	 */
	private int excuteSQLUpdate(String sql,DBParams params){
		Connection conn = null;
		PreparedStatement pstame = null;
		ResultSet rs = null;
		int index = -1;
		try {
			conn = DataSourceUtils.getConnection(dataSource);
			pstame = conn.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
			initParams(pstame, params);
			index = pstame.executeUpdate();
			rs = pstame.getGeneratedKeys();
			if(rs.next()){
				index = rs.getInt(1);
			}
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		} finally{
			DataSourceUtils.releaseConnection(conn, dataSource);
		}
		return index;
	}
	private void initParams(PreparedStatement pstat,DBParams params) throws SQLException{
		if(params!=null){
			for(int i=0;i<params.size();i++){
				Object param = params.get(i);
				if(param==null)continue;
				if(param instanceof Integer){
					pstat.setInt(i+1,Integer.parseInt(param.toString()));
				}else if(param instanceof Like){
					pstat.setString(i+1,"%"+param.toString()+"%");
				}
				else{
					pstat.setString(i+1,param.toString());
				}
			}
		}
	}
	/**
	 * 生成新增参数
	 * @param map
	 * @param params
	 * @return
	 */
	private String toInsert(ParamsMap map,DBParams params){
		Iterator<Entry<String, Object>> iter= map.entrySet().iterator();
		StringBuffer key = new StringBuffer();
		StringBuffer value = new StringBuffer();
		while(iter.hasNext()){
			@SuppressWarnings("rawtypes")
			Map.Entry en= iter.next();
			params.add(en.getValue());
			if(key.length()==0&&value.length()==0){
				key.append(en.getKey());
				value.append("?");
				continue;
			}
			key.append(","+en.getKey());
			value.append(",?");
		}
		System.out.println(new StringBuffer(" ("+key+") values ("+value+")").toString());
		return new StringBuffer(" ("+key+") values ("+value+")").toString();
	}
	private String toUpdate(ParamsMap map,DBParams params){
		Iterator<Entry<String, Object>> iter= map.entrySet().iterator();
		StringBuffer buffer = new StringBuffer();
		while(iter.hasNext()){
			@SuppressWarnings("rawtypes")
			Map.Entry en= iter.next();
			params.add(en.getValue());
			if(buffer.length()==0){
				buffer.append(en.getKey()).append(" = ?");
				continue;
			}
			buffer.append(","+en.getKey()).append(" = ?");
		}
		return buffer.toString();
	}
}
