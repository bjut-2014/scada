package com.scada.domain;

public class Pulse {
		//编号
		private Integer id;
		//脉冲代号
		private Integer pulse_code;
		//脉冲名称
		private String pulse_name;
		//所属场站
		private String pulse_station;
		//装置
		private String pulse_device;
		//整型值
		private Integer pulse_int;
		//浮点值
		private Float pulse_float;
		//基值
		private Integer pulse_basicvalue;
		//满码值
		private Integer pulse_fullcodevalue;
		//系数
		private Float pulse_factor;
		//状态
		private String pulse_state;
		
		public String getPulse_state() {
			return pulse_state;
		}
		public void setPulse_state(String pulse_state) {
			this.pulse_state = pulse_state;
		}
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public Integer getPulse_code() {
			return pulse_code;
		}
		public void setPulse_code(Integer pulse_code) {
			this.pulse_code = pulse_code;
		}
		public String getPulse_name() {
			return pulse_name;
		}
		public void setPulse_name(String pulse_name) {
			this.pulse_name = pulse_name;
		}
		public String getPulse_station() {
			return pulse_station;
		}
		public void setPulse_station(String pulse_station) {
			this.pulse_station = pulse_station;
		}
		public String getPulse_device() {
			return pulse_device;
		}
		public void setPulse_device(String pulse_device) {
			this.pulse_device = pulse_device;
		}
		public Integer getPulse_int() {
			return pulse_int;
		}
		public void setPulse_int(Integer pulse_int) {
			this.pulse_int = pulse_int;
		}
		public Float getPulse_float() {
			return pulse_float;
		}
		public void setPulse_float(Float pulse_float) {
			this.pulse_float = pulse_float;
		}
		public Integer getPulse_basicvalue() {
			return pulse_basicvalue;
		}
		public void setPulse_basicvalue(Integer pulse_basicvalue) {
			this.pulse_basicvalue = pulse_basicvalue;
		}
		public Integer getPulse_fullcodevalue() {
			return pulse_fullcodevalue;
		}
		public void setPulse_fullcodevalue(Integer pulse_fullcodevalue) {
			this.pulse_fullcodevalue = pulse_fullcodevalue;
		}
		public Float getPulse_factor() {
			return pulse_factor;
		}
		public void setPulse_factor(Float pulse_factor) {
			this.pulse_factor = pulse_factor;
		}

		
}
