package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.SysTemplateDao;
import com.scada.domain.SysTemplate;

public class SysTemplateDaoImpl extends HibernateDaoSupport implements SysTemplateDao {

	@Override
	public void delete(Integer id) {
		SysTemplate sysTemplate = getHibernateTemplate().get(SysTemplate.class, id);
		getHibernateTemplate().delete(sysTemplate);
	}

	@Override
	public void save(SysTemplate sysTemplate) {
		getHibernateTemplate().save(sysTemplate);
	}

	@Override
	public List<SysTemplate> getAll() {
		String hql = "from SysTemplate st";
		return (List<SysTemplate>) getHibernateTemplate().find(hql);
	}

}
