package com.scada.action;

import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.Billing;
import com.scada.service.BillingService;

public class BillingAction extends ActionSupport implements RequestAware {

	private BillingService billingService;
	
	public BillingService getMachineRoomService() {
		return billingService;
	}

	public void setBillingService(BillingService billingService) {
		this.billingService = billingService;
	}

	public String saveBilling(){
		Billing billing = new Billing();
		billing.setType("居民");
		billing.setName("001");
		billing.setOwnername("张三");
		billing.setTotal("789.10");
		billing.setPresentmonth("65.20");
		billing.setBalance("24.40");
		billing.setArea("朝阳区");

		billingService.saveBilling(billing);
		return null;
	}
	
	public String input(){
		request.put("billings", billingService.getAll());
		return INPUT;
	}
	
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	
	public String show(){
		request.put("billings", billingService.getAll());
		return "show";
	}
	
}
