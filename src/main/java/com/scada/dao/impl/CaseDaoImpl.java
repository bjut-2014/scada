package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.CaseDao;
import com.scada.domain.EleCase;
import com.scada.domain.Warning;

public class CaseDaoImpl extends HibernateDaoSupport implements CaseDao {

	@Override
	public void saveCase(EleCase Case) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(Case);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<EleCase> getAll() {
		// TODO Auto-generated method stub
		String hql = "from EleCase c";
		return (List<EleCase>) this.getHibernateTemplate().find(hql);
	}


	@Override
	public EleCase getCaseByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<EleCase> getCaseByState(String station, String state) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public EleCase getCaseById(Integer id) {
		// TODO Auto-generated method stub
		String hql="from EleCase ec where id =  "+id;
		return (EleCase) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public void update(EleCase Case) {
		// TODO Auto-generated method stub
		 this.getHibernateTemplate().update(Case);
	}

	@Override
	public List<EleCase> getCaseByType(String type) {
		// TODO Auto-generated method stub
		String hql = "from EleCase c where c.type = '"+type+"'";
		return (List<EleCase>)this.getHibernateTemplate().find(hql);
	}

}
