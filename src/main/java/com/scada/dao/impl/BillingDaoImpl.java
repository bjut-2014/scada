package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.BillingDao;
import com.scada.dao.MachineRoomDao;
import com.scada.domain.Billing;
import com.scada.domain.MachineRoom;

public class BillingDaoImpl extends HibernateDaoSupport implements BillingDao {

	@Override
	public void saveBilling(Billing billing) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(billing);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Billing> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Billing bm";
		return (List<Billing>) this.getHibernateTemplate().find(hql);
	}

	
	
	
}

