package com.scada.domain;

public class WorkOrder {

	//主键ID
	private Integer id;
	//工单编号
	private Integer workOrderId;
	//工单申请人
	private String workOrderApplicant;
	//工单处理人
	private String workOrderDeal;
	//工单签发人
	private String workOrderIssuer;
	//工单验收人
	private String workOrderAcceptance;
	//工单审批人
	private String workOrderApproval;
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
