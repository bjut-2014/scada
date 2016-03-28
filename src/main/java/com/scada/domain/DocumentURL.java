package com.scada.domain;

import java.util.Date;

public class DocumentURL {
	//ID
	private Integer id;
	//name
	private String doc_name;
	//user
	private String doc_author;
	//type
	private String doc_type;
	//subtype
	private String doc_subtype;
	//URL
	private String doc_url;
	//date
	private Date doc_date;
	public DocumentURL(){
		doc_date = new Date();
	}
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
	}
	public String getDoc_name() {
		return doc_name;
	}
	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	
	public String getDoc_author() {
		return doc_author;
	}
	public void setDoc_author(String doc_author) {
		this.doc_author = doc_author;
	}
	public String getDoc_type() {
		return doc_type;
	}
	public void setDoc_type(String doc_type) {
		this.doc_type = doc_type;
	}
	
	public String getDoc_subtype() {
		return doc_subtype;
	}
	public void setDoc_subtype(String doc_subtype) {
		this.doc_subtype = doc_subtype;
	}
	public String getDoc_url() {
		return doc_url;
	}
	public void setDoc_url(String doc_url) {
		this.doc_url = doc_url;
	}
	public Date getDoc_date() {
		return doc_date;
	}
	public void setDoc_date(Date doc_date) {
		this.doc_date = doc_date;
	}
	
	
	
	
}
