package com.scada.action;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Publish;
import com.scada.domain.User;
import com.scada.service.PublishService;

public class PublishAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private PublishService publishService;
	private Publish publish;

	public Publish getPublish() {
		return publish;
	}

	public void setPublish(Publish publish) {
		this.publish = publish;
	}

	public PublishService getPublishService() {
		return publishService;
	}

	public void setPublishService(PublishService publishService) {
		this.publishService = publishService;
	}

	public HttpServletRequest getRequest() {
		return request;
	}

	public HttpServletResponse getResponse() {
		return response;
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
		//publish.setContext(publish.getContext().substring(0, 10));
		request.setAttribute("Publishes", publishService.getAll());		
		return "show";
	}
	public String publish(){
		
		return "publish";
	}
	
	//添加新闻
	public String p(){
			User user = (User) request.getSession().getAttribute("global_user");
			publish.setUser(user.getUsername());
			publishService.savePublish(publish);
			show();
			return "p";
	}
	
	public String delete(){
		int id = Integer.parseInt(request.getParameter("id"));
		//System.out.println(id);
		publishService.delInfoById(id);//执行删除操作
		show();
		return "delete";
	}
	public String edit(){
		int id = Integer.parseInt(request.getParameter("id"));
		System.out.println(id);
		
		request.setAttribute("Publish",publishService.getPublishById(id));
		return "edit";
	}
	public String update(){
		User user = (User) request.getSession().getAttribute("global_user");
		publish.setUser(user.getUsername());
		publishService.updatePublish(publish);
		show();
		return "update";
	}
}
