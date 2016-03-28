package com.scada.domain;

public class Device {
	//ID
	private Integer id;
	//装置ID
	private Integer device_id;
	//装置名称
	private String device_name;
	//装置类型
	private String device_type;
	private String device_station;
	//规约类型
	private String device_ruletype;
	//规约名称
	private String device_rulename;
	//通道类型
	private String device_pipletype;
	//当前状态
	private String device_state;
	//电压等级
	private String device_elec;
	
	public String getDevice_station() {
		return device_station;
	}
	public void setDevice_station(String device_station) {
		this.device_station = device_station;
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getDevice_id() {
		return device_id;
	}
	public void setDevice_id(Integer device_id) {
		this.device_id = device_id;
	}
	public String getDevice_name() {
		return device_name;
	}
	public void setDevice_name(String device_name) {
		this.device_name = device_name;
	}
	public String getDevice_type() {
		return device_type;
	}
	public void setDevice_type(String device_type) {
		this.device_type = device_type;
	}
	public String getDevice_ruletype() {
		return device_ruletype;
	}
	public void setDevice_ruletype(String device_ruletype) {
		this.device_ruletype = device_ruletype;
	}
	public String getDevice_rulename() {
		return device_rulename;
	}
	public void setDevice_rulename(String device_rulename) {
		this.device_rulename = device_rulename;
	}
	public String getDevice_pipletype() {
		return device_pipletype;
	}
	public void setDevice_pipletype(String device_pipletype) {
		this.device_pipletype = device_pipletype;
	}
	public String getDevice_state() {
		return device_state;
	}
	public void setDevice_state(String device_state) {
		this.device_state = device_state;
	}
	public String getDevice_elec() {
		return device_elec;
	}
	public void setDevice_elec(String device_elec) {
		this.device_elec = device_elec;
	}
	
	
	
}
