package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.SystemSetting;
import com.scada.service.SystemSettingService;

public class SystemSettingAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	
	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
    private SystemSettingService systemSettingService;
	
	public SystemSettingService getSystemSettingService() {
		return systemSettingService;
	}

	public void setSystemSettingService(SystemSettingService systemSettingService) {
		this.systemSettingService = systemSettingService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String home(){
		request.setAttribute("systemSettings", systemSettingService.getAll());
		return "home";
	}
	
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		SystemSetting systemSetting = new SystemSetting();
		systemSetting.setArea(request.getParameter("area"));
		systemSetting.setChief(request.getParameter("chief"));
		systemSetting.setNum(request.getParameter("num"));
		systemSetting.setState(request.getParameter("state"));
		systemSetting.setRemark(request.getParameter("remark"));
		systemSettingService.saveSystemSetting(systemSetting);
		return "save";
	}

	public String execute() throws Exception {
		
		return super.execute();
	}
	
	
}