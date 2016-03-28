package com.scada.domain;

public class Telemetring {
	//编号
	private Integer id;
	//遥测代号
	private Integer tele_code;
	//遥测名称
	private String tele_name;
	//所属场站
	private String tele_station;
	//装置
	private String tele_device;
	//遥测类型
	private String tele_type;
	//整型值
	private Integer tele_int;
	//浮点值
	private Float tele_float;
	//状态
	private String tele_state;
	//基值
	private Float tele_basicvalue;
	//系数
	private Float tele_factor;
	//阀值
	private Float tele_threshold;
	//死区值
	private Float tele_deadvalue;
	//滤波因子
	private Float tele_filtering;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public Integer getTele_code() {
		return tele_code;
	}
	public void setTele_code(Integer tele_code) {
		this.tele_code = tele_code;
	}
	public String getTele_name() {
		return tele_name;
	}
	public void setTele_name(String tele_name) {
		this.tele_name = tele_name;
	}
	public String getTele_station() {
		return tele_station;
	}
	public void setTele_station(String tele_station) {
		this.tele_station = tele_station;
	}
	public String getTele_device() {
		return tele_device;
	}
	public void setTele_device(String tele_device) {
		this.tele_device = tele_device;
	}
	public String getTele_type() {
		return tele_type;
	}
	public void setTele_type(String tele_type) {
		this.tele_type = tele_type;
	}
	public Integer getTele_int() {
		return tele_int;
	}
	public void setTele_int(Integer tele_int) {
		this.tele_int = tele_int;
	}
	public Float getTele_float() {
		return tele_float;
	}
	public void setTele_float(Float tele_float) {
		this.tele_float = tele_float;
	}
	public String getTele_state() {
		return tele_state;
	}
	public void setTele_state(String tele_state) {
		this.tele_state = tele_state;
	}
	public Float getTele_basicvalue() {
		return tele_basicvalue;
	}
	public void setTele_basicvalue(Float tele_basicvalue) {
		this.tele_basicvalue = tele_basicvalue;
	}
	public Float getTele_factor() {
		return tele_factor;
	}
	public void setTele_factor(Float tele_factor) {
		this.tele_factor = tele_factor;
	}
	public Float getTele_deadvalue() {
		return tele_deadvalue;
	}
	public void setTele_deadvalue(Float tele_deadvalue) {
		this.tele_deadvalue = tele_deadvalue;
	}
	public Float getTele_filtering() {
		return tele_filtering;
	}
	public void setTele_filtering(Float tele_filtering) {
		this.tele_filtering = tele_filtering;
	}
	public Float getTele_threshold() {
		return tele_threshold;
	}
	public void setTele_threshold(Float tele_threshold) {
		this.tele_threshold = tele_threshold;
	}
}
