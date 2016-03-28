package com.scada.domain;

public class SysSafety {
	private Integer sysId;
	//是否启用后台日志
	private Boolean isEnableLog;
	//最大登录失败次数
	private Integer loginFailureCount;
	//ip锁定时间
	private Integer ipLockTime;
	//ip访问禁止是否启用
	private Boolean isIPAccessProhibited;
	public Boolean getIsEnableLog() {
		return isEnableLog;
	}
	public void setIsEnableLog(Boolean isEnableLog) {
		this.isEnableLog = isEnableLog;
	}
	public Integer getLoginFailureCount() {
		return loginFailureCount;
	}
	public void setLoginFailureCount(Integer loginFailureCount) {
		this.loginFailureCount = loginFailureCount;
	}
	public Integer getIpLockTime() {
		return ipLockTime;
	}
	public void setIpLockTime(Integer ipLockTime) {
		this.ipLockTime = ipLockTime;
	}
	public Boolean getIsIPAccessProhibited() {
		return isIPAccessProhibited;
	}
	public void setIsIPAccessProhibited(Boolean isIPAccessProhibited) {
		this.isIPAccessProhibited = isIPAccessProhibited;
	}
	public Integer getSysId() {
		return sysId;
	}
	public void setSysId(Integer sysId) {
		this.sysId = sysId;
	}
	
	
}
