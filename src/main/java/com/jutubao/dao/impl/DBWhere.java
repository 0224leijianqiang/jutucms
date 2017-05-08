package com.jutubao.dao.impl;



public class DBWhere{
	private String method = " AND ";
	private StringBuffer where ;
	private DBParams params;
	private String orderBy="";
	private String limit="";
	public DBWhere() {
		// TODO Auto-generated constructor stub
		this.params = new DBParams();
	}
	public DBWhere(DBParams params) {
		// TODO Auto-generated constructor stub
		if(params==null)this.params = new DBParams();
		this.params = params;
	}
	public DBParams getDBParams(){
		return this.params;
	}
	public DBWhere in(String key,String [] ins){
		if(where==null)where = new StringBuffer();
		else where.append(method);
		String in = "";
		for(String str:ins){
			if(in.equals(""))in+="?";
			else in+=",?";
			params.add(str);
		}
		where.append(key+" in ("+in+")");
		return this;
	}
	public DBWhere like(String key,String value){
		if(where==null)where = new StringBuffer();
		else where.append(method);
		where.append(key+" like ?");
		params.add(new Like(value));
		return this;
	}
	public DBWhere is(String key,Object value){
		if(value==null)return this;
		if(where==null)where = new StringBuffer();
		else where.append(method);
		where.append(key+" = ?");
		params.add(value);
		return this;
	}
	public DBWhere desc(String key){
		orderBy  = " ORDER BY "+key+" DESC";
		return this;
	}
	public DBWhere asc(String key){
		orderBy  = " ORDER BY "+key+" ASC";
		return this;
	}
	public DBWhere limit(int pageNum,int pageSize){
		limit = " limit ?,? ";
		params.append(pageNum).append(pageSize);
		return this;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		if(where==null||where.length()==0){
			return orderBy+limit;
		}
		return " where "+where.toString()+" "+orderBy+limit;
	}
	public DBWhere and(){
		if(where!=null)
		where = new StringBuffer("("+where.toString()+")");
		this.method = " AND ";
		return this;
	}
	public DBWhere or(){
		if(where!=null)
		where = new StringBuffer("("+where.toString()+")");
		this.method = " OR ";
		return this;
	}
	
	static class Like{
		String params ;
		public Like(String params) {
			// TODO Auto-generated constructor stub
			this.params = params;
		}
		@Override
		public String toString() {
			// TODO Auto-generated method stub
			return params;
		}
	}
}
