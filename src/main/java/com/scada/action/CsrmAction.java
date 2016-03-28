package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Csrm;
import com.scada.service.CsrmService;
public class CsrmAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private CsrmService csrmService;
	
	public CsrmService getCsrmService() {
		return csrmService;
	}

	public void setCsrmService(CsrmService csrmService) {
		this.csrmService = csrmService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("csrm", csrmService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		Csrm csrm = new Csrm();
		csrm.setType(request.getParameter("type"));
		csrm.setName(request.getParameter("name"));
		csrm.setResearchname(request.getParameter("researchname"));
		csrm.setDate(request.getParameter("date"));
		csrm.setWay(request.getParameter("way"));
		csrm.setContactway(request.getParameter("contactway"));
		csrm.setDegree(request.getParameter("degree"));
		csrm.setSuggestion(request.getParameter("suggestion"));
		csrm.setArea(request.getParameter("area"));
		csrm.setChief(request.getParameter("chief"));
		csrm.setRemark(request.getParameter("remark"));
		csrmService.save(csrm);
		
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	

	
}