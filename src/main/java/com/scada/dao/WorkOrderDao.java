package com.scada.dao;

import java.util.List;

import com.scada.domain.WorkOrder;


public interface WorkOrderDao {
	public void save(WorkOrder workOrder);
	public void delete(WorkOrder workOrder);
	public List<WorkOrder> getAll();
	public void update(WorkOrder workOrder);
	public WorkOrder getWorkOrderById(Integer id);
}
