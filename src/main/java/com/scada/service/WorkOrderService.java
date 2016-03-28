package com.scada.service;

import java.util.List;

import com.scada.domain.WorkOrder;

public interface WorkOrderService {
	public void save(WorkOrder workOrder);
	public void delete(WorkOrder workOrder);
	public List<WorkOrder> getAll();
	public WorkOrder getWorkOrderById(Integer id);
}
