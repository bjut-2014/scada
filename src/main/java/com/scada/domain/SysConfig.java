package com.scada.domain;

/**
 * 配置管理
 * @author menghan
 *
 */
public class SysConfig {

	//主键
	private Integer id;
	//系统名称
	private String sysName;
	//系统标题
	private String sysTitle;
	//logo地址
	private String sysLogoAddr;
	//系统页面底部信息（版权信息）
	private String sysBottomMsg;
	//session过期时间
	private Integer sessionTime;
	//页面信息个数
	private Integer pageSize;
	//页面中页码个数
	private Integer pageWidth;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getSysName() {
		return sysName;
	}
	public void setSysName(String sysName) {
		this.sysName = sysName;
	}
	public String getSysTitle() {
		return sysTitle;
	}
	public void setSysTitle(String sysTitle) {
		this.sysTitle = sysTitle;
	}
	public String getSysLogoAddr() {
		return sysLogoAddr;
	}
	public void setSysLogoAddr(String sysLogoAddr) {
		this.sysLogoAddr = sysLogoAddr;
	}
	public String getSysBottomMsg() {
		return sysBottomMsg;
	}
	public void setSysBottomMsg(String sysBottomMsg) {
		this.sysBottomMsg = sysBottomMsg;
	}
	public Integer getSessionTime() {
		return sessionTime;
	}
	public void setSessionTime(Integer sessionTime) {
		this.sessionTime = sessionTime;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPageWidth() {
		return pageWidth;
	}
	public void setPageWidth(Integer pageWidth) {
		this.pageWidth = pageWidth;
	}
	
	
}
