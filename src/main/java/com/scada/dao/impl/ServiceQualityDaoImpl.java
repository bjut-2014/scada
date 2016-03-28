package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.ServiceQualityDao;
import com.scada.domain.ServiceQuality;

public class ServiceQualityDaoImpl extends HibernateDaoSupport implements ServiceQualityDao {

	@Override
	public void save(ServiceQuality serviceQuality) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(serviceQuality);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<ServiceQuality> getAll() {
		// TODO Auto-generated method stub
		String hql = "from ServiceQuality sq";
		return (List<ServiceQuality>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	

	
	
	
}