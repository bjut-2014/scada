package com.scada.domain;
//计费管理

public class Billing {
	
	private Integer id;
	private String type;
	private String name;
	private String ownername;
	private String total;
	private String presentmonth;
	private String balance;
	private String area;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOwnername() {
		return ownername;
	}
	public void setOwnername(String ownername) {
		this.ownername = ownername;
	}
	public String getTotal() {
		return total;
	}
	public void setTotal(String total) {
		this.total = total;
	}
	public String getPresentmonth() {
		return presentmonth;
	}
	public void setPresentmonth(String presentmonth) {
		this.presentmonth = presentmonth;
	}
	public String getBalance() {
		return balance;
	}
	public void setBalance(String balance) {
		this.balance = balance;
	}
	public String getArea() {
		return area;
	}
	public void setArea(String area) {
		this.area = area;
	}
	
}
	