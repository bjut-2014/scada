package com.scada.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.EleCase;
import com.scada.service.CaseService;

public class CaseAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private CaseService caseService;
	private EleCase elecase;
	
	
	public EleCase getElecase() {
		return elecase;
	}
	public void setElecase(EleCase elecase) {
		this.elecase = elecase;
	}
	public CaseService getCaseService() {
		return caseService;
	}
	public void setCaseService(CaseService caseService) {
		this.caseService = caseService;
	}
	@Override
	public void setServletResponse(HttpServletResponse response) {
		// TODO Auto-generated method stub
		this.response = response;
	}
	@Override
	public void setServletRequest(HttpServletRequest request) {
		// TODO Auto-generated method stub
		this.request = request;
	}
	
	public String caseshow(){
		request.setAttribute("Cases", caseService.getCaseByType("case"));		
		return "caseshow";
	}
	
	public String sourceshow(){
		request.setAttribute("sources", caseService.getCaseByType("source"));	
		return "sourceshow";
	}
	
	public String problemshow(){
		request.setAttribute("Problems", caseService.getCaseByType("problem"));		
		return "problemshow";
	}
	
	public String edit(){
		int id = Integer.parseInt(request.getParameter("id"));
		request.setAttribute("elecase", caseService.getCaseById(id));	
		return "edit";
	}
	
	public String update(){
		caseService.updateCase(elecase);
		System.out.println(elecase.getType());
		if(elecase.getType().equals("case")){
			System.out.println(elecase.getType());
			caseshow();
			return "caseshow";
		}else if(elecase.getType().equals("source")){
			System.out.println(elecase.getType());
			sourceshow();
			return "sourceshow";
		}else{
			System.out.println(elecase.getType());
			problemshow();
			return "problemshow";
		}
		
	}

}
