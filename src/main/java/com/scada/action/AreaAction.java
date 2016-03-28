package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Area;
import com.scada.service.AreaService;
public class AreaAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private AreaService areaService;
	public AreaService getAreaService() {
		return areaService;
	}

	public void setAreaService(AreaService areaService) {
		this.areaService = areaService;
	}
	
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public String home(){
		request.setAttribute("area", areaService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		Area area = new Area();
		area.setName(request.getParameter("name"));
		area.setChief(request.getParameter("chief"));
		area.setResident(request.getParameter("resident"));
		area.setCompany(request.getParameter("company"));
		areaService.save(area);
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	
	
	
}