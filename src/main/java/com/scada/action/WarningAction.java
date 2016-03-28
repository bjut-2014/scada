package com.scada.action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.EleCase;
import com.scada.domain.User;
import com.scada.domain.Warning;
import com.scada.service.CaseService;
import com.scada.service.WarningService;

public class WarningAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private WarningService warningService;
	private Warning warning;
	private CaseService caseService;
	private EleCase elecase;
	
	public CaseService getCaseService() {
		return caseService;
	}
	public void setCaseService(CaseService caseService) {
		this.caseService = caseService;
	}
	public EleCase getElecase() {
		return elecase;
	}
	public void setElecase(EleCase elecase) {
		this.elecase = elecase;
	}
	public Warning getWarning() {
		return warning;
	}
	public void setWarning(Warning warning) {
		this.warning = warning;
	}
	public WarningService getWarningService() {
		return warningService;
	}
	public void setWarningService(WarningService warningService) {
		this.warningService = warningService;
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
	
	public String show(){
		request.setAttribute("Warnings", warningService.getWarning());		
		return "show";
	}
	public String SecureShow(){
		request.setAttribute("WarningSecures", warningService.getSecure());
		return "SecureShow";
	}
	public String option(){
		request.setAttribute("Warnings", warningService.getWarning());		
		return "option";
	}
	public String SecureShowOption(){
		request.setAttribute("WarningSecures", warningService.getSecure());		
		return "SecureShowOption";
	}
	public String edit(){
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		request.setAttribute("warning",warningService.getWarningById(id));
		String type = (String) request.getAttribute("type");
		System.out.println(type);
		if(type.equals("secure")){			
			return "SecureShowEdit";
		}else{
			return "edit";
		}
		
	}
	public String update(){
		User user = (User) request.getSession().getAttribute("global_user");
		Warning warning1 = (Warning) warningService.getWarningById(warning.getId());
		if(warning.equals(warning1)){
			System.out.println("warning no change");
		}else{
			warningService.updateWarning(warning);
			elecase = new EleCase();
			elecase.setUser(user.getUsername());
			elecase.setType("problem");
			String action ="";
			if(!warning.getDevice().equals(warning1.getDevice())){
				action +="将装置名："+warning1.getDevice()+" 改为 "+warning.getDevice()+"\n";
			}
			if(!warning.getStation().equals(warning1.getStation())){
				action +="将装置名："+warning1.getStation()+" 改为 "+warning.getStation()+"\n";
			}
			if(!warning.getWarning_info().equals(warning1.getWarning_info())){
				action +="将告警信息："+warning1.getWarning_info()+" 改为 "+warning.getWarning_info()+"\n";
			}
			if(!warning.getWarning_level().equals(warning1.getWarning_level())){
				action +="将告警等级："+warning1.getWarning_level()+" 改为 "+warning.getWarning_level()+"\n";
			}
			if(!warning.getWarning_obj().equals(warning1.getWarning_obj())){
				action +="将对象名："+warning1.getWarning_obj()+" 改为 "+warning.getWarning_obj()+"\n";
			}
			if(!warning.getWarning_subtype().equals(warning1.getWarning_subtype())){
				action +="将告警信息："+warning1.getWarning_subtype()+" 改为 "+warning.getWarning_subtype()+"\n";
			}
			if(!warning.getWarning_type().equals(warning1.getWarning_type())){
				action +="将告警等级："+warning1.getWarning_type()+" 改为 "+warning.getWarning_type()+"\n";
			}
			elecase.setAction(action);
			caseService.saveCase(elecase);
		}
		String type = (String) request.getAttribute("type");
		if(type.equals("secure")){
			SecureShowOption();
			return "SecureShowUpdate";
		}else{
			show();
			return "update";
		}
	}
	
	public String delete(){
		int id = Integer.parseInt(request.getParameter("id"));
		warningService.delInfoById(id);//执行删除操作
		show();		
		return "delete";
	}
	
}

