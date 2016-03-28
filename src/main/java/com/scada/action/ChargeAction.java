package com.scada.action;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Charge;
import com.scada.service.ChargeService;
public class ChargeAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {
	


	private HttpServletRequest request =null;
	private HttpServletResponse response =null;
	private ChargeService chargeService;
	
	
	public ChargeService getChargeService() {
		return chargeService;
	}

	public void setChargeService(ChargeService chargeService) {
		this.chargeService = chargeService;
	}

	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public String home(){
		request.setAttribute("charge", chargeService.getAll());
		return "home";
	}
	
	public String save() throws UnsupportedEncodingException{
		request.setCharacterEncoding("utf-8");
		Charge charge = new Charge();
		charge.setType(request.getParameter("type"));
		charge.setUnit(request.getParameter("unit"));
		charge.setArea(request.getParameter("area"));
		charge.setName(request.getParameter("name"));
		charge.setMoney(request.getParameter("money"));
		charge.setBalance(request.getParameter("balance"));
		charge.setDate(request.getParameter("date"));
		charge.setOperatename(request.getParameter("operatename"));
		
		chargeService.save(charge);
		
		return "save";
	}
	
	public String execute() throws Exception {
		
		return super.execute();
	}
	

	
}