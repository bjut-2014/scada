package com.scada.domain;

import java.util.Date;

public class Publish {
	//序号
	private Integer id;
	
	//标题
	private String title;
	
	//时间
	private Date date;
	
	//内容
	private String context;
	
	//类别
	private String type;
	
	//上传者
	private String user;

	public Publish(){
		date = new Date();
	}
	
	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public Date getDate() {
		return date;
	}

	public void setDate(Date date) {
		this.date = date;
	}

	public String getContext() {
		return context;
	}

	public void setContext(String context) {
		this.context = context;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getUser() {
		return user;
	}

	public void setUser(String user) {
		this.user = user;
	}
	
	
}
