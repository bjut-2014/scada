package com.scada.utils;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

public class Paging extends HibernateDaoSupport{

	//当前页码
	private Integer currentPage;
	//页码尺寸（例：[1][2][3],页面的尺寸就是3）
	private Integer pageSize;
	//总页数
	private Integer pageTotal;
	//每页信息个数,默认为10
	private Integer pageDataSize;
	
	public List<Object> getCurrentPageData(Object object,Integer currentPage,String order){
		String hql = "from " + object + " o order by o.id desc";
		
		return null;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public Integer getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(Integer currentPage) {
		this.currentPage = currentPage;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}
	public Integer getPageDataSize() {
		return pageDataSize;
	}
	public void setPageDataSize(Integer pageDataSize) {
		this.pageDataSize = pageDataSize;
	}
	
}
