package com.scada.dao.impl;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SysSafetyDao;
import com.scada.domain.SysSafety;

public class SysSafetyDaoImpl extends HibernateDaoSupport implements SysSafetyDao{

	@Override
	public void save(SysSafety sysSafety) {
		getHibernateTemplate().save(sysSafety);
	}

	@Override
	public void delete(Integer id) {
		SysSafety sysSafety = getHibernateTemplate().get(SysSafety.class, id);
		getHibernateTemplate().delete(sysSafety);
	}

	@Override
	public void update(SysSafety sysSafety) {
		getHibernateTemplate().update(sysSafety);
	}

	@Override
	public SysSafety get(Integer id) {
		return getHibernateTemplate().get(SysSafety.class, id);
	}

}
