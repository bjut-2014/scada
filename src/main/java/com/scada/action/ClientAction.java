package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Client;
import com.scada.service.ClientService;
public class ClientAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private ClientService clientService;
	
	public ClientService getClientService() {
		return clientService;
	}

	public void setClientService(ClientService clientService) {
		this.clientService = clientService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("client", clientService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		Client client = new Client();
		client.setType(request.getParameter("type"));
		client.setName(request.getParameter("name"));
		client.setArea(request.getParameter("area"));
		client.setNum(request.getParameter("num"));
		client.setOwnername(request.getParameter("ownername"));
		client.setSex(request.getParameter("sex"));
		client.setBirthday(request.getParameter("birthday"));
		client.setAddress(request.getParameter("address"));
		client.setTel(request.getParameter("tel"));
		
		clientService.save(client);
		
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	

	
}