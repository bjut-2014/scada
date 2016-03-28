package com.scada.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.WorkOrder;
import com.scada.service.WorkOrderService;

public class WorkOrderAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private Integer workOrderId;
	private String workOrderApplicant;
	private String workOrderDeal;
	private String workOrderIssuer;
	private String workOrderAcceptance;
	private String workOrderApproval;
	
	private WorkOrderService workOrderService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	
	public String show(){
		request.setAttribute("workOrderList", workOrderService.getAll());
		return "show";
	}
	
	public String add(){
		WorkOrder workOrder = new WorkOrder();
		workOrder.setWorkOrderId(workOrderId);
		workOrder.setWorkOrderApplicant(workOrderApplicant);
		workOrder.setWorkOrderDeal(workOrderDeal);
		workOrder.setWorkOrderAcceptance(workOrderAcceptance);
		workOrder.setWorkOrderApproval(workOrderApproval);
		workOrder.setWorkOrderIssuer(workOrderIssuer);
		workOrderService.save(workOrder);
		return "add";
	}
	
	public String delete(){
		Integer id = Integer.parseInt(request.getParameter("id"));
		WorkOrder workOrder = workOrderService.getWorkOrderById(id);
		workOrderService.delete(workOrder);
		return "delete";
	}
	
	public String update(){
		return "update";
	}
	
	
	
	
	
	
	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}

	public WorkOrderService getWorkOrderService() {
		return workOrderService;
	}

	public void setWorkOrderService(WorkOrderService workOrderService) {
		this.workOrderService = workOrderService;
	}

	public Integer getWorkOrderId() {
		return workOrderId;
	}

	public void setWorkOrderId(Integer workOrderId) {
		this.workOrderId = workOrderId;
	}

	public String getWorkOrderApplicant() {
		return workOrderApplicant;
	}

	public void setWorkOrderApplicant(String workOrderApplicant) {
		this.workOrderApplicant = workOrderApplicant;
	}

	public String getWorkOrderDeal() {
		return workOrderDeal;
	}

	public void setWorkOrderDeal(String workOrderDeal) {
		this.workOrderDeal = workOrderDeal;
	}

	public String getWorkOrderIssuer() {
		return workOrderIssuer;
	}

	public void setWorkOrderIssuer(String workOrderIssuer) {
		this.workOrderIssuer = workOrderIssuer;
	}

	public String getWorkOrderAcceptance() {
		return workOrderAcceptance;
	}

	public void setWorkOrderAcceptance(String workOrderAcceptance) {
		this.workOrderAcceptance = workOrderAcceptance;
	}

	public String getWorkOrderApproval() {
		return workOrderApproval;
	}

	public void setWorkOrderApproval(String workOrderApproval) {
		this.workOrderApproval = workOrderApproval;
	}
	
	
}
