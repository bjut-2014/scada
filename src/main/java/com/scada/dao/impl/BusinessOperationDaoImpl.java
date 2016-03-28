package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.BusinessOperationDao;
import com.scada.domain.BusinessOperation;

public class BusinessOperationDaoImpl extends HibernateDaoSupport implements BusinessOperationDao {

	@Override
	public void saveBusinessOperation(BusinessOperation businessOperation) {
		this.getHibernateTemplate().save(businessOperation);
		
	}
	

	@Override
	public void delete(Integer id) {
		//String hsql = "delete from MachineRoom mr where mr.id = ?";
	}

	@Override
	public List<BusinessOperation> getAll() {
		String hql = "from BusinessOperation mr";
		return (List<BusinessOperation>) this.getHibernateTemplate().find(hql);
		//return this.getSessionFactory().getCurrentSession().createQuery(hql).list();
	}

	@Override
	public BusinessOperation getBusinessOperationByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	

}