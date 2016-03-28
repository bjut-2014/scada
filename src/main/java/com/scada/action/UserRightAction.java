package com.scada.action;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.User;
import com.scada.domain.UserRight;
import com.scada.service.UserRightService;
import com.scada.utils.SystemLog;

public class UserRightAction extends ActionSupport implements ServletRequestAware,ServletResponseAware{

	private UserRightService userRightService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	
	//用户权限的属性
	private Integer rightId;
	private String dataAcquisition;
	private String coordinatedDispatch;
	private String unifiedDatabase;
	private String applicationShow;
	private String serviceOperation;
	private String customerService;
	private String comprehensiveOffice;
	private String wanSystem;
	private String websiteSystem;
	private String mailSystem;
	
	
	//罗列出所有的用户权限
	public String list() {
		getRightsAndRightIDNouUsed();
		return SUCCESS;
	}
	
	//添加新的用户权限
	public String add(){
		UserRight userRight = new UserRight();
		userRight.setRightId(rightId);
		userRight.setDataAcquisition("on".equals(dataAcquisition));
		userRight.setCoordinatedDispatch("on".equals(coordinatedDispatch));
		userRight.setUnifiedDatabase("on".equals(unifiedDatabase));
		userRight.setApplicationShow("on".equals(applicationShow));
		userRight.setServiceOperation("on".equals(serviceOperation));
		userRight.setCustomerService("on".equals(customerService));
		userRight.setComprehensiveOffice("on".equals(comprehensiveOffice));
		userRight.setWanSystem("on".equals(wanSystem));
		userRight.setWebsiteSystem("on".equals(websiteSystem));
		userRight.setMailSystem("on".equals(mailSystem));
		userRightService.save(userRight);
		getRightsAndRightIDNouUsed();
		return INPUT;
	}

	//删除已有的权限
	public String delete(){
		Integer id = Integer.parseInt(request.getParameter("id"));
		userRightService.delete(id);
		return "delete";
	}
	
	//获得当前所有的用户权限以及未被使用的用户权限ID
	public void getRightsAndRightIDNouUsed(){
		List<UserRight> list = userRightService.getAll();
		List<Integer> userRightNotUse = new ArrayList<Integer>();
		for(int i=1;i<=10;i++){
			userRightNotUse.add(i);
		}
		for(int j=0;j<list.size();j++){
			if(userRightNotUse.contains(list.get(j).getRightId())){
				userRightNotUse.remove(list.get(j).getRightId());
			}
		}
		request.setAttribute("userRightNotUse", userRightNotUse);
		request.setAttribute("userList", list);
	}
	
	//=====================================以下为：getter与setter方法=====================================
	public UserRightService getUserRightService() {
		return userRightService;
	}

	public void setUserRightService(UserRightService userRightService) {
		this.userRightService = userRightService;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	
	public Integer getRightId() {
		return rightId;
	}

	public void setRightId(Integer rightId) {
		this.rightId = rightId;
	}

	public String getDataAcquisition() {
		return dataAcquisition;
	}

	public void setDataAcquisition(String dataAcquisition) {
		this.dataAcquisition = dataAcquisition;
	}

	public String getCoordinatedDispatch() {
		return coordinatedDispatch;
	}

	public void setCoordinatedDispatch(String coordinatedDispatch) {
		this.coordinatedDispatch = coordinatedDispatch;
	}

	public String getUnifiedDatabase() {
		return unifiedDatabase;
	}

	public void setUnifiedDatabase(String unifiedDatabase) {
		this.unifiedDatabase = unifiedDatabase;
	}

	public String getApplicationShow() {
		return applicationShow;
	}

	public void setApplicationShow(String applicationShow) {
		this.applicationShow = applicationShow;
	}

	public String getServiceOperation() {
		return serviceOperation;
	}

	public void setServiceOperation(String serviceOperation) {
		this.serviceOperation = serviceOperation;
	}

	public String getCustomerService() {
		return customerService;
	}

	public void setCustomerService(String customerService) {
		this.customerService = customerService;
	}

	public String getComprehensiveOffice() {
		return comprehensiveOffice;
	}

	public void setComprehensiveOffice(String comprehensiveOffice) {
		this.comprehensiveOffice = comprehensiveOffice;
	}

	public String getWanSystem() {
		return wanSystem;
	}

	public void setWanSystem(String wanSystem) {
		this.wanSystem = wanSystem;
	}

	public String getWebsiteSystem() {
		return websiteSystem;
	}

	public void setWebsiteSystem(String websiteSystem) {
		this.websiteSystem = websiteSystem;
	}

	public String getMailSystem() {
		return mailSystem;
	}

	public void setMailSystem(String mailSystem) {
		this.mailSystem = mailSystem;
	}
}
