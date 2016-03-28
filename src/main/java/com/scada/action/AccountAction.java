package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Account;
import com.scada.service.AccountService;
public class AccountAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private AccountService accountService;
	


	public AccountService getAccountService() {
		return accountService;
	}

	public void setAccountService(AccountService accountService) {
		this.accountService = accountService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("account", accountService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		Account account = new Account();
		account.setType(request.getParameter("type"));
		account.setName(request.getParameter("name"));
		account.setOwnername(request.getParameter("ownername"));
		account.setNum(request.getParameter("num"));
		account.setArea(request.getParameter("area"));
		account.setChief(request.getParameter("chief"));
		
		accountService.save(account);
		
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	

	
}