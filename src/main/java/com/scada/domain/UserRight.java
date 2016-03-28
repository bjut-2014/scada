package com.scada.domain;

public class UserRight {
	
	//主键ID
	private Integer id;
	//权限ID
	private Integer rightId;
	//数据采集分析处理模块
	private boolean dataAcquisition;
	//协调调度模块
	private boolean coordinatedDispatch;
	//统一信息库模块
	private boolean unifiedDatabase;
	//应用展示模块
	private boolean applicationShow;
	//业务运营管理系统模块
	private boolean serviceOperation;
	//客户服务系统管理模块
	private boolean customerService;
	//综合办公系统管理模块
	private boolean comprehensiveOffice;
	//广域网管理系统模块
	private boolean wanSystem;
	//网站系统管理模块
	private boolean websiteSystem;
	//邮件系统管理模块
	private boolean mailSystem;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getRightId() {
		return rightId;
	}
	public void setRightId(Integer rightId) {
		this.rightId = rightId;
	}
	public boolean isDataAcquisition() {
		return dataAcquisition;
	}
	public void setDataAcquisition(boolean dataAcquisition) {
		this.dataAcquisition = dataAcquisition;
	}
	public boolean isCoordinatedDispatch() {
		return coordinatedDispatch;
	}
	public void setCoordinatedDispatch(boolean coordinatedDispatch) {
		this.coordinatedDispatch = coordinatedDispatch;
	}
	public boolean isUnifiedDatabase() {
		return unifiedDatabase;
	}
	public void setUnifiedDatabase(boolean unifiedDatabase) {
		this.unifiedDatabase = unifiedDatabase;
	}
	public boolean isApplicationShow() {
		return applicationShow;
	}
	public void setApplicationShow(boolean applicationShow) {
		this.applicationShow = applicationShow;
	}
	public boolean isServiceOperation() {
		return serviceOperation;
	}
	public void setServiceOperation(boolean serviceOperation) {
		this.serviceOperation = serviceOperation;
	}
	public boolean isCustomerService() {
		return customerService;
	}
	public void setCustomerService(boolean customerService) {
		this.customerService = customerService;
	}
	public boolean isComprehensiveOffice() {
		return comprehensiveOffice;
	}
	public void setComprehensiveOffice(boolean comprehensiveOffice) {
		this.comprehensiveOffice = comprehensiveOffice;
	}
	public boolean isWanSystem() {
		return wanSystem;
	}
	public void setWanSystem(boolean wanSystem) {
		this.wanSystem = wanSystem;
	}
	public boolean isWebsiteSystem() {
		return websiteSystem;
	}
	public void setWebsiteSystem(boolean websiteSystem) {
		this.websiteSystem = websiteSystem;
	}
	public boolean isMailSystem() {
		return mailSystem;
	}
	public void setMailSystem(boolean mailSystem) {
		this.mailSystem = mailSystem;
	}
	
	
	

}
