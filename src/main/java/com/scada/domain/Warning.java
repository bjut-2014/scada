package com.scada.domain;

import java.util.Date;

public class Warning {
	//id
	private Integer id;
	//时间
	private Date warning_time;
	//类型
	private String warning_type;
	//子类型
	private String warning_subtype;
	//告警等级
	private String warning_level;
	//厂站名
	private String station;
	//装置名
	private String device;
	//对象名
	private String warning_obj;
	//告警信息
	private String warning_info;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Date getWarning_time() {
		return warning_time;
	}
	public void setWarning_time(Date warning_time) {
		this.warning_time = warning_time;
	}
	public String getWarning_type() {
		return warning_type;
	}
	public void setWarning_type(String warning_type) {
		this.warning_type = warning_type;
	}
	public String getWarning_subtype() {
		return warning_subtype;
	}
	public void setWarning_subtype(String warning_subtype) {
		this.warning_subtype = warning_subtype;
	}
	public String getWarning_level() {
		return warning_level;
	}
	public void setWarning_level(String warning_level) {
		this.warning_level = warning_level;
	}
	public String getStation() {
		return station;
	}
	public void setStation(String station) {
		this.station = station;
	}
	public String getDevice() {
		return device;
	}
	public void setDevice(String device) {
		this.device = device;
	}
	public String getWarning_obj() {
		return warning_obj;
	}
	public void setWarning_obj(String warning_obj) {
		this.warning_obj = warning_obj;
	}
	public String getWarning_info() {
		return warning_info;
	}
	public void setWarning_info(String warning_info) {
		this.warning_info = warning_info;
	}
	
	
}
