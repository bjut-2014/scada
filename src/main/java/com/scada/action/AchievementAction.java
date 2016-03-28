package com.scada.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.service.AchievementService;

public class AchievementAction extends ActionSupport implements RequestAware{

	private static final long serialVersionUID = 1L;
	private Map<String, Object> request;
    private AchievementService achievementService;
    private String select;
    private String message;
    private String swit;
    private String information;
    
    /*******addAch的参数*******/
  
    /*******addFile的参数*******/
    
    public String Achievement(){
		int id;
		ActionContext actionContext = ActionContext.getContext();
		Map<String, Object> session = actionContext.getSession();
		session.put("select", select);
		session.put("message", message);
		session.put("swit", swit);
		session.put("information", information);
		
		
		/*******addFile的Session*******/
		
		/*******addFile的Session*******/
		
		if(swit!=null){
			switch(swit){
			case "查找信息":
			{
			   if(message!=""){
			       request.put("achievement", achievementService.Search());
			       request.put("infors", achievementService.getAllinformation());
			       return "Achievement";
			   }else{
				   request.put("infors", achievementService.getAllinformation());
			 	   return "Achievement";
			   }
			}
			case "删除信息":{
				if(message.equals("")||select.equals("name")||select.equals("card")){
					
					request.put("achievement", achievementService.getAll());
					request.put("infors", achievementService.getAllinformation());
				 	return "Achievement";
				}else{
				 	id=Integer.valueOf(message); 
				 	achievementService.delete(id);
				    request.put("achievement", achievementService.getAll());
				    request.put("infors", achievementService.getAllinformation());
				    return "Achievement";
				}
			}
			case "提交":
			{
				achievementService.save();
				request.put("achievement", achievementService.getAll());
				request.put("infors", achievementService.getAllinformation());
			 	return "Achievement";
			}
			default:
			    {
			    achievementService.save();
				request.put("achievement", achievementService.getAll());
				request.put("infors", achievementService.getAllinformation());
			    return "Achievement";
			    }
			}
			}else{
				request.put("achievement", achievementService.getAll());
				request.put("infors", achievementService.getAllinformation());
			    return "Achievement";
			}
	}
    
	public AchievementService getAchievementService() {
		return achievementService;
	}

	public void setAchievementService(AchievementService achievementService) {
		this.achievementService = achievementService;
	}

	@Override
	public void setRequest(Map<String, Object> request) {
		this.request=request;
		
	}

	public Map<String, Object> getRequest() {
		return request;
	}

	public String getSelect() {
		return select;
	}

	public void setSelect(String select) {
		this.select = select;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getSwit() {
		return swit;
	}

	public void setSwit(String swit) {
		this.swit = swit;
	}

	public String getInformation() {
		return information;
	}

	public void setInformation(String information) {
		this.information = information;
	}

	

    
	
}
