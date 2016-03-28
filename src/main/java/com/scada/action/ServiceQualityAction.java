package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.ServiceQuality;
import com.scada.service.ServiceQualityService;
public class ServiceQualityAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private ServiceQualityService serviceQualityService;
	
	public ServiceQualityService getServiceQualityService() {
		return serviceQualityService;
	}

	public void setServiceQualityService(ServiceQualityService serviceQualityService) {
		this.serviceQualityService = serviceQualityService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("serviceQuality", serviceQualityService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		
		ServiceQuality serviceQuality = new ServiceQuality();
		serviceQuality.setEventtype(request.getParameter("eventtype"));
		serviceQuality.setType(request.getParameter("type"));
		serviceQuality.setName(request.getParameter("name"));
		serviceQuality.setServicename(request.getParameter("servicename"));
		serviceQuality.setDate(request.getParameter("date"));
		serviceQuality.setContactway(request.getParameter("contactway"));
		serviceQuality.setArea(request.getParameter("area"));
		serviceQuality.setOperatename(request.getParameter("operatename"));
		serviceQuality.setGrade(request.getParameter("grade"));
		serviceQuality.setRemark(request.getParameter("remark"));
		serviceQualityService.save(serviceQuality);
		
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	

	
}