package com.scada.dao.impl;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SysConfigDao;
import com.scada.domain.SysConfig;

public class SysConfigDaoImpl extends HibernateDaoSupport implements SysConfigDao {

	@Override
	public void delete(Integer id) {
		SysConfig sysConfig = getHibernateTemplate().get(SysConfig.class, id);
		getHibernateTemplate().delete(sysConfig);
	}

	@Override
	public void save(SysConfig sysConfig) {
		getHibernateTemplate().save(sysConfig);
	}

	@Override
	public void update(SysConfig sysConfig) {
		getHibernateTemplate().update(sysConfig);
	}

	@Override
	public SysConfig get(Integer id) {
		return getHibernateTemplate().get(SysConfig.class, id);
	}

}
