package com.scada.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.MailBlacklist;
import com.scada.service.MailBlacklistService;

public class MailBlacklistAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private MailBlacklistService mailBlacklistService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	
	private String mailName;
	private String mailAddress;
	
	public String show(){
		request.setAttribute("mailBlacklist", mailBlacklistService.getAll());
		return "show";
	}
	
	/**
	 * 添加新的黑名单地址
	 * @return 
	 */
	public String save(){
		MailBlacklist mailBlacklist = new MailBlacklist();
		mailBlacklist.setMailName(mailName);
		mailBlacklist.setMailAddress(mailAddress);
		mailBlacklistService.save(mailBlacklist);
		return "save";
	}
	
	/**
	 * 删除已有的黑名单地址
	 * @return
	 */
	public String delete(){
		Integer id = Integer.parseInt(request.getParameter("id"));
		mailBlacklistService.delete(id);
		return "delete";
	}
	
	/*---------------------------------get和set方法-----------------------------------------------*/
	public MailBlacklistService getMailBlacklistService() {
		return mailBlacklistService;
	}

	public void setMailBlacklistService(MailBlacklistService mailBlacklistService) {
		this.mailBlacklistService = mailBlacklistService;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String getMailName() {
		return mailName;
	}

	public void setMailName(String mailName) {
		this.mailName = mailName;
	}

	public String getMailAddress() {
		return mailAddress;
	}

	public void setMailAddress(String mailAddress) {
		this.mailAddress = mailAddress;
	}

	
}
