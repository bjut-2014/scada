package com.scada.service.impl;

import java.util.List;

import com.scada.dao.WorkOrderDao;
import com.scada.domain.WorkOrder;
import com.scada.service.WorkOrderService;

public class WorkOrderServiceImpl implements WorkOrderService {

	private WorkOrderDao workOrderDao;
	
	public WorkOrderDao getWorkOrderDao() {
		return workOrderDao;
	}

	public void setWorkOrderDao(WorkOrderDao workOrderDao) {
		this.workOrderDao = workOrderDao;
	}

	@Override
	public void save(WorkOrder workOrder) {
		this.workOrderDao.save(workOrder);
	}

	@Override
	public List<WorkOrder> getAll() {
		return this.workOrderDao.getAll();
	}

	@Override
	public void delete(WorkOrder workOrder) {
		this.workOrderDao.delete(workOrder);
	}

	@Override
	public WorkOrder getWorkOrderById(Integer id) {
		return this.workOrderDao.getWorkOrderById(id);
	}

}
