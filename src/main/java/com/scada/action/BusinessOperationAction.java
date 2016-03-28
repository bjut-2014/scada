package com.scada.action;

import java.sql.*;
import java.util.*;
import java.awt.*;
import java.util.Map;

import org.apache.struts2.interceptor.RequestAware;

import com.scada.domain.BusinessOperation;
import com.opensymphony.xwork2.ActionSupport;
import com.scada.service.BusinessOperationService;
import com.scada.service.MachineRoomService;

public class BusinessOperationAction extends ActionSupport implements RequestAware{
	
	private BusinessOperationService businessOperationService;
	
	public BusinessOperationService getBusinessOperationService() {
		return businessOperationService;
	}
	public void setBusinessOperationService(BusinessOperationService businessOperationService) {
		this.businessOperationService = businessOperationService;
	}

	public String saveBusinessOperation(){
		BusinessOperation businessOperation = new BusinessOperation();
		businessOperation.setuserType("类型");
		businessOperation.setcompanyName("公司名字");
		businessOperation.setresidentName("居民姓名");
		businessOperation.setarea("所属区域");
		businessOperation.setcompanyNum("13800000000");
		businessOperation.setfamilyNum("01088889999");
		businessOperation.setownerName("户主名字");
		businessOperation.setmainName("法人名字");
		businessOperation.setsex("性别");
		businessOperation.setbirthday("出生日期");
		businessOperation.setaddress("联系地址");
		businessOperation.settel("联系电话");
		businessOperation.setmobile("手机号码");
		businessOperation.setemail("电子邮箱");
		
		
		businessOperationService.saveBusinessOperation(businessOperation);
		return null;
	}
	public String input(){
		request.put("businessOperationAcyion", businessOperationService.getAll());
		return INPUT;
	}
	
	
	private Map<String, Object> request;
	
	@Override
	public void setRequest(Map<String, Object> request) {
		this.request = request;
	}
	
	
	public String show(){
		request.put("businessOperationAcyion", businessOperationService.getAll());
		return "show";
	}
	
		
}
