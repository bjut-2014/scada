package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.ChargeDao;
import com.scada.domain.Charge;

public class ChargeDaoImpl extends HibernateDaoSupport implements ChargeDao {

	@Override
	public void save(Charge charge) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(charge);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Charge> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Charge cg";
		return (List<Charge>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	
	
	
}