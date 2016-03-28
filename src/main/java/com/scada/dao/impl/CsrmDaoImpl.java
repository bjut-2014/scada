package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.CsrmDao;
import com.scada.domain.Csrm;

public class CsrmDaoImpl extends HibernateDaoSupport implements CsrmDao {

	

	@Override
	public List<Csrm> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Csrm cm";
		return (List<Csrm>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void save(Csrm csrm) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(csrm);
	}

	@Override
	public void update() {
		// TODO Auto-generated method stub
		
	}

	
	
}