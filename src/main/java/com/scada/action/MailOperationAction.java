package com.scada.action;

import javax.mail.Message;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;

public class MailOperationAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	
	Message message = null;
	
	public String execute() throws Exception {
		int id = Integer.valueOf(request.getParameter("id"));
		message = MaiLoginlAction.folder.getMessages()[id];
		request.setAttribute("message", message);
		System.out.println(id);
		return super.execute();
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
}
