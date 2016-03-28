package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.MailBlacklistDao;
import com.scada.domain.MailBlacklist;

public class MailBlacklistDaoImpl extends HibernateDaoSupport implements MailBlacklistDao {

	@Override
	public void save(MailBlacklist mailBlacklist) {
		getHibernateTemplate().save(mailBlacklist);
	}

	@Override
	public void delete(Integer id) {
		MailBlacklist mailBlacklist = getHibernateTemplate().get(MailBlacklist.class, id);
		getHibernateTemplate().delete(mailBlacklist);
	}

	@Override
	public List<MailBlacklist> getAll() {
		String hql = "from MailBlacklist mb";
		return (List<MailBlacklist>) getHibernateTemplate().find(hql);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

}
