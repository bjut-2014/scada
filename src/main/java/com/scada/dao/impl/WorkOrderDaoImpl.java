package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.WorkOrderDao;
import com.scada.domain.WorkOrder;

public class WorkOrderDaoImpl extends HibernateDaoSupport implements WorkOrderDao{

	@Override
	public void save(WorkOrder workOrder) {
		this.getHibernateTemplate().save(workOrder);
	}

	@Override
	public void delete(WorkOrder workOrder) {
		this.getHibernateTemplate().delete(workOrder);
	}

	@Override
	public List<WorkOrder> getAll() {
		String hql = "from WorkOrder wo";
		return (List<WorkOrder>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update(WorkOrder workOrder) {
		this.getHibernateTemplate().update(workOrder);
	}

	@Override
	public WorkOrder getWorkOrderById(Integer id) {
		return (WorkOrder) this.getSessionFactory().openSession().get(WorkOrder.class, id);
	}

}
