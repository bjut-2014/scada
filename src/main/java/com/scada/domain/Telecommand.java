package com.scada.domain;

public class Telecommand {
		//编号
		private Integer id;
		//遥信代号
		private Integer telec_code;
		//遥信名称
		private String telec_name;
		//所属场站
		private String telec_station;
		//装置
		private String telec_device;
		//遥信类型
		private String telec_type;
		//遥信值
		private Integer telec_value;
		//变位次数
		private Integer telec_displacement;
		//最大变位次数
		private Integer telec_maxdisplacement;
		//遥信极性
		private String telec_polarity;
		//状态
		private String telec_state;
		public Integer getId() {
			return id;
		}
		public void setId(Integer id) {
			this.id = id;
		}
		public Integer getTelec_code() {
			return telec_code;
		}
		public void setTelec_code(Integer telec_code) {
			this.telec_code = telec_code;
		}
		public String getTelec_name() {
			return telec_name;
		}
		public void setTelec_name(String telec_name) {
			this.telec_name = telec_name;
		}
		public String getTelec_station() {
			return telec_station;
		}
		public void setTelec_station(String telec_station) {
			this.telec_station = telec_station;
		}
		public String gettelec_device() {
			return telec_device;
		}
		public String getTelec_device() {
			return telec_device;
		}
		public void setTelec_device(String telec_device) {
			this.telec_device = telec_device;
		}
		public String getTelec_type() {
			return telec_type;
		}
		public void setTelec_type(String telec_type) {
			this.telec_type = telec_type;
		}
		public Integer getTelec_value() {
			return telec_value;
		}
		public void setTelec_value(Integer telec_value) {
			this.telec_value = telec_value;
		}
		public Integer getTelec_displacement() {
			return telec_displacement;
		}
		public void setTelec_displacement(Integer telec_displacement) {
			this.telec_displacement = telec_displacement;
		}
		public Integer getTelec_maxdisplacement() {
			return telec_maxdisplacement;
		}
		public void setTelec_maxdisplacement(Integer telec_maxdisplacement) {
			this.telec_maxdisplacement = telec_maxdisplacement;
		}
		public String getTelec_polarity() {
			return telec_polarity;
		}
		public void setTelec_polarity(String telec_polarity) {
			this.telec_polarity = telec_polarity;
		}
		public String getTelec_state() {
			return telec_state;
		}
		public void setTelec_state(String telec_state) {
			this.telec_state = telec_state;
		}
		
		
		
		
}
