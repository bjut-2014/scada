package com.scada.domain;

import java.util.Date;

public class SysLog {

	private Integer id;
	private String username;
	private String didWhat;
	private Date createTime;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getDidWhat() {
		return didWhat;
	}
	public void setDidWhat(String didWhat) {
		this.didWhat = didWhat;
	}
	public Date getCreateTime() {
		return createTime;
	}
	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
	
}
