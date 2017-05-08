package com.jutubao.entity;

import java.io.Serializable;
import java.util.List;

public class Page<T> implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4684675120782986631L;
	
	// 页数
	private int pageNum=1;
	// 每页显示的条数
	private int pageSize=10;
	// 查询的总条数
	private int total;
	// 总页数
	private int totalPage;
	// 集合
	private List<T> result;
	
	private ParamsMap pd;
	
	public Page(int pageNum, int pageSize, int total, int totalPage,List<T> result) {
		this.pageNum = pageNum;
		this.pageSize = pageSize;
		this.total = total;
		this.totalPage = totalPage;
		this.result = result;
	}
	public Page() {
		// TODO Auto-generated constructor stub
	}
	public ParamsMap getPd() {
		return pd;
	}


	public void setPd(ParamsMap params) {
		this.pd = params;
	}


	public int getPageNum() {
		return pageNum;
	}

	public void setPageNum(int pageNum) {
		this.pageNum = pageNum;
	}

	public int getPageSize() {
		return pageSize;
	}

	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	
	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public List<T> getResult() {
		return result;
	}

	public void setResult(List<T> result) {
		this.result = result;
	}

	/**
	 * 计算开始的条数
	 * @return 开始条数
	 */
	public int getFristOffset(){
		return (this.pageNum-1)*this.pageSize;
	}

	@Override
	public String toString() {
		return "Page [pageNum=" + pageNum + ", pageSize=" + pageSize
				+ ", total=" + total + ", totalPage=" + totalPage + ", result="
				+ result + "]";
	}
}
