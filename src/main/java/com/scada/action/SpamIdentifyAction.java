package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.SpamIdentify;
import com.scada.service.MailBlacklistService;
import com.scada.service.SpamIdentifyService;

public class SpamIdentifyAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private SpamIdentifyService spamIdentifyService;
	private MailBlacklistService mailBlacklistService;
	
	/**
	 * 显示数据库中已经有的敏感词汇
	 * @return 返回到“垃圾邮件智能识别”页面
	 */
	public String home(){
		request.setAttribute("spamIdentify", spamIdentifyService.getAll());
		request.setAttribute("mailBlacklist", mailBlacklistService.getAll());
		return "home";
	}
	
	/**
	 * 为数据库添加新的敏感词汇
	 * @return 返回到spamIdentifyAction_home.action，再尤其跳转到“垃圾邮件智能识别”页面
	 * @throws UnsupportedEncodingException
	 */
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		SpamIdentify spamIdentify = new SpamIdentify();
		spamIdentify.setField(request.getParameter("sensitiveWord"));
		spamIdentifyService.save(spamIdentify);
		return "save";
	}
	
	
	public String delete(){
		Integer id = Integer.parseInt(request.getParameter("spamIdentifyId"));
		spamIdentifyService.delete(id);
		return "delete";
	}
	
	
	public String execute() throws Exception {
		return super.execute();
	}
	
	
	/*------------------------------------get与set方法-------------------------------------------------------------*/
	public SpamIdentifyService getSpamIdentifyService() {
		return spamIdentifyService;
	}

	public void setSpamIdentifyService(SpamIdentifyService spamIdentifyService) {
		this.spamIdentifyService = spamIdentifyService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public MailBlacklistService getMailBlacklistService() {
		return mailBlacklistService;
	}

	public void setMailBlacklistService(MailBlacklistService mailBlacklistService) {
		this.mailBlacklistService = mailBlacklistService;
	}
	
	
}
