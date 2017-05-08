package com.jutubao.dao.impl;

import java.util.LinkedList;

public class DBParams extends LinkedList<Object> {
	private static final long serialVersionUID = 1L;
	public DBParams() {
		// TODO Auto-generated constructor stub
	}
	public DBParams(Object obj) {
		// TODO Auto-generated constructor stub
		this.add(obj);
	}
	public DBParams append(Object obj){
		this.add(obj);
		return this;
	}
}
