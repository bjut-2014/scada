package com.scada.domain;

import java.util.Date;

public class User {
	//主键ID
	private Integer userId;
	//员工姓名
	private String username;
	//登录名
	private String loginName;
	//登录密码
	private String loginPwd;
	//出生日期
	private String birthday;
	//性别
	private String sex;
	//联系地址
	private String address;
	//联系电话
	private String contactTel;
	//电子邮件
	private String email;
	//是否在职
	private String isDuty;
	//入职时间
	private Date onDutyDate;
	//备注
	private String remark;
	//权限等级
	private Integer rightsId;
	
	public Integer getRightsId() {
		return rightsId;
	}
	public void setRightsId(Integer rightsId) {
		this.rightsId = rightsId;
	}
	public Integer getUserId() {
		return userId;
	}
	public void setUserId(Integer userId) {
		this.userId = userId;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getLoginName() {
		return loginName;
	}
	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}
	public String getLoginPwd() {
		return loginPwd;
	}
	public void setLoginPwd(String loginPwd) {
		this.loginPwd = loginPwd;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContactTel() {
		return contactTel;
	}
	public void setContactTel(String contactTel) {
		this.contactTel = contactTel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getIsDuty() {
		return isDuty;
	}
	public void setIsDuty(String isDuty) {
		this.isDuty = isDuty;
	}
	public Date getOnDutyDate() {
		return onDutyDate;
	}
	public void setOnDutyDate(Date onDutyDate) {
		this.onDutyDate = onDutyDate;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	
	
	
}
