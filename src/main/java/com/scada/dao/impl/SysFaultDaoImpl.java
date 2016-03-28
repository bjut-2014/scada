package com.scada.dao.impl;

import java.util.List;

import org.hibernate.Hibernate;
import org.springframework.orm.hibernate4.HibernateTemplate;
import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SysFaultDao;
import com.scada.domain.SysFault;

public class SysFaultDaoImpl extends HibernateDaoSupport implements SysFaultDao {

	@Override
	public void delete(Integer id) {
		
	}

	@Override
	public List<SysFault> getAll() {
		String hql = "from SysFault sf";
		return (List<SysFault>)this.getHibernateTemplate().find(hql);
	}

	@Override
	public void save(SysFault sysFault) {
		this.getHibernateTemplate().save(sysFault);
	}

	@Override
	public void update() {
		
	}

}
