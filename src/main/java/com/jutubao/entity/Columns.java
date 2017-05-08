package com.jutubao.entity;

public class Columns {
	private String name;
	private String oldName;
	//默认为字符串
	private String type = "varchar(255)";
	private Integer length = 0;
	private String comment;
	private String after;
	private boolean isNullable =false;
	private boolean isAutoIncrement = false;
	private boolean isPrimaryKey = false;
	public Columns() {
		// TODO Auto-generated constructor stub
	}
	public Columns(String name,String comment) {
		// TODO Auto-generated constructor stub
		this.name = name;
		this.comment = comment;
	}
	public Columns(String name,String type,Integer length,String comment,boolean isNull,boolean isAutoIncrement,boolean isPrimaryKey){
		this.name = name;
		this.type = type;
		this.length = length;
		this.comment = comment;
		this.isAutoIncrement = isAutoIncrement;
		this.isNullable = isNull;
		this.isPrimaryKey = isPrimaryKey;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public Integer getLength() {
		return length;
	}
	public void setLength(Integer length) {
		this.length = length;
	}
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public boolean isAutoIncrement() {
		return isAutoIncrement;
	}
	public void setAutoIncrement(boolean isAutoIncrement) {
		this.isAutoIncrement = isAutoIncrement;
	}
	public String getAddString(){
		StringBuffer buffer = new StringBuffer();
		buffer.append(name+" ");
		buffer.append(type);
		if(length>0){
			buffer.append("("+length+")");
		}
		if(type.toLowerCase().contains("char")||type.contains("text")){
			buffer.append(" CHARACTER SET utf8 COLLATE utf8_general_ci");
		}
		buffer.append(isNullable?" NULL ":" NOT NULL");
		buffer.append(!isPrimaryKey? "": " primary key ");
		if(type.toLowerCase().contains("int")&&isAutoIncrement){
			buffer.append(" AUTO_INCREMENT ");
		}
		buffer.append(" COMMENT '"+comment+"'");
		return buffer.toString();
	}
	public String getAlterString(boolean isExist){
		StringBuffer buffer = new StringBuffer();	
		if(isExist&&oldName!=null){
			buffer.append(" CHANGE "+oldName+" "+name+" "+(length>0?type+"("+length+")":type)+(isNullable?" NULL ":" NOT NULL")+" COMMENT '"+comment+"' "+(after==null?"":" AFTER "+after));
			return buffer.toString();
		}
		buffer.append(" Add COLUMN  "+name+" "+(length>0?type+"("+length+")":type)+(isNullable?" NULL ":" NOT NULL")+" COMMENT '"+comment+"'"+(after==null?"":" AFTER "+after));
		return buffer.toString();
	}
	public boolean isPrimaryKey() {
		return isPrimaryKey;
	}
	public void setPrimaryKey(boolean isPrimaryKey) {
		this.isPrimaryKey = isPrimaryKey;
	}
	public String getOldName() {
		return oldName;
	}
	public void setOldName(String oldName) {
		this.oldName = oldName;
	}
	
	public String getAfter() {
		return after;
	}
	public void setAfter(String after) {
		this.after = after;
	}
	public boolean isNullable() {
		return isNullable;
	}
	public void setNullable(boolean isNull) {
		this.isNullable = isNull;
	}
	public static void main(String[] args) {
		//System.out.println(new Columns("name", "姓名").getAddString());
		System.out.println(new Columns("name", "姓名").getAlterString(true));
	}
	
}
