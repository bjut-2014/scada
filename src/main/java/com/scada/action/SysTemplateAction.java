package com.scada.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.service.SysTemplateService;

public class SysTemplateAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private SysTemplateService sysTemplateService;
	protected HttpServletRequest request;
	protected HttpServletResponse response;
	
	
	public String show(){
		return "show";
	}
	
	public String mainShow(){
		return "mainShow";
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public SysTemplateService getSysTemplateService() {
		return sysTemplateService;
	}

	public void setSysTemplateService(SysTemplateService sysTemplateService) {
		this.sysTemplateService = sysTemplateService;
	}
	
	
	
}
