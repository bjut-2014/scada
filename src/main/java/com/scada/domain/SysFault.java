package com.scada.domain;

import java.util.Date;

public class SysFault {
	//主键
	private Integer id;
	//设备编号
	private String equipmentId;
	//设备类型
	private String equipmentType;
	//设备故障时间
	private Date equipmentFailureTime;
	//设备故障原因
	private String equipmentFailureReason;
	//设备修理内容
	private String equipmentRepairContent;
	//设备负责人
	private String equipmentPersonInCharge;
	//设备故障维修人员
	private String equipmentMaintenance;
	//设备修理完成时间
	private Date equipmentRepairTime;
	//设备修理次数
	private Integer eqequipmentRepairCounts;
	//备注
	private String equipmentRemark;
	
	public Integer getId() {
		return id;
	}
	public void setId(Integer id) {
		this.id = id;
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
