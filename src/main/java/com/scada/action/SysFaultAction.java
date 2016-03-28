package com.scada.action;

import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;

import com.opensymphony.xwork2.ActionSupport;
import com.scada.domain.SysFault;
import com.scada.service.SysFaultService;

public class SysFaultAction extends ActionSupport implements ServletRequestAware,ServletResponseAware {

	private SysFaultService sysFaultService;
	protected HttpServletRequest request =null;
	protected HttpServletResponse response =null;
	
	private String equipmentId;
	private String equipmentType;
	private Date equipmentFailureTime;
	private String equipmentFailureReason;
	private String equipmentRepairContent;
	private String equipmentPersonInCharge;
	private String equipmentMaintenance;
	private Date equipmentRepairTime;
	private Integer eqequipmentRepairCounts;
	private String equipmentRemark;
	
	public String show(){
		List<SysFault> sysFaultList = sysFaultService.getAll();
		request.setAttribute("sysFaultList", sysFaultList);
		return "show";
	}
	
	public String add(){
		SysFault sysFault = new SysFault();
		sysFault.setEquipmentId(equipmentId);
		sysFault.setEquipmentType(equipmentType);
		sysFault.setEquipmentFailureReason(equipmentFailureReason);
		sysFault.setEqequipmentRepairCounts(eqequipmentRepairCounts);
		sysFault.setEquipmentFailureTime(new Date());
		sysFault.setEquipmentMaintenance(equipmentMaintenance);
		sysFault.setEquipmentPersonInCharge(equipmentPersonInCharge);
		sysFault.setEquipmentRemark(equipmentRemark);
		sysFault.setEquipmentRepairTime(new Date());
		sysFault.setEquipmentRepairContent(equipmentRepairContent);
		this.sysFaultService.save(sysFault);
		return "add";
	}
	
	public SysFaultService getSysFaultService() {
		return sysFaultService;
	}

	public void setSysFaultService(SysFaultService sysFaultService) {
		this.sysFaultService = sysFaultService;
	}

	@Override
	public void setServletResponse(HttpServletResponse response) {
		this.response = response;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request = request;
	}
	

	public String getEquipmentId() {
		return equipmentId;
	}

	public void setEquipmentId(String equipmentId) {
		this.equipmentId = equipmentId;
	}

	public String getEquipmentType() {
		return equipmentType;
	}

	public void setEquipmentType(String equipmentType) {
		this.equipmentType = equipmentType;
	}

	public Date getEquipmentFailureTime() {
		return equipmentFailureTime;
	}

	public void setEquipmentFailureTime(Date equipmentFailureTime) {
		this.equipmentFailureTime = equipmentFailureTime;
	}

	public String getEquipmentFailureReason() {
		return equipmentFailureReason;
	}

	public void setEquipmentFailureReason(String equipmentFailureReason) {
		this.equipmentFailureReason = equipmentFailureReason;
	}

	public String getEquipmentRepairContent() {
		return equipmentRepairContent;
	}

	public void setEquipmentRepairContent(String equipmentRepairContent) {
		this.equipmentRepairContent = equipmentRepairContent;
	}

	public String getEquipmentPersonInCharge() {
		return equipmentPersonInCharge;
	}

	public void setEquipmentPersonInCharge(String equipmentPersonInCharge) {
		this.equipmentPersonInCharge = equipmentPersonInCharge;
	}

	public String getEquipmentMaintenance() {
		return equipmentMaintenance;
	}

	public void setEquipmentMaintenance(String equipmentMaintenance) {
		this.equipmentMaintenance = equipmentMaintenance;
	}

	public Date getEquipmentRepairTime() {
		return equipmentRepairTime;
	}

	public void setEquipmentRepairTime(Date equipmentRepairTime) {
		this.equipmentRepairTime = equipmentRepairTime;
	}

	public Integer getEqequipmentRepairCounts() {
		return eqequipmentRepairCounts;
	}

	public void setEqequipmentRepairCounts(Integer eqequipmentRepairCounts) {
		this.eqequipmentRepairCounts = eqequipmentRepairCounts;
	}

	public String getEquipmentRemark() {
		return equipmentRemark;
	}

	public void setEquipmentRemark(String equipmentRemark) {
		this.equipmentRemark = equipmentRemark;
	}
	
	
}
