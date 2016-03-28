package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.WarningDao;
import com.scada.domain.Device;
import com.scada.domain.Warning;

public class WarningDaoImpl extends HibernateDaoSupport implements WarningDao {

	@Override
	public void saveWarning(Warning warning) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(warning);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Warning w where w.id = "+id;
		Warning warning = getWarningById(id);
		
		this.getHibernateTemplate().delete(warning);
	}

	public Warning getWarningById(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Warning w where w.id = "+id;
		return (Warning) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public List<Warning> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Warning w";
		return (List<Warning>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Warning> getWarningByStation(String station) {
		// TODO Auto-generated method stub
		String hql = "from Warning w where w.station = '"+station+"'";
		return (List<Warning>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Warning getWarningByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Warning> getWarningByState(String station, String state) {
		// TODO Auto-generated method stub
		String hql = "from Warning w where w.station = '"+station+"' and warning_level = '"+state+"'";
		return (List<Warning>) this.getHibernateTemplate().find(hql);
	}
	
	@Override
	public void update(Warning warning) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(warning);
	}

	@Override
	public List<Warning> getWarning() {
		// TODO Auto-generated method stub
		String hql = "from Warning w where w.warning_type in('遥测类告警','遥信类告警','脉冲类告警')";
		return (List<Warning>) this.getHibernateTemplate().find(hql);
	}
	@Override
	public List<Warning> getSecure() {
		// TODO Auto-generated method stub
		String hql = "from Warning w where w.warning_type in('人工类告警','工况类告警','其他类告警')";
		return (List<Warning>) this.getHibernateTemplate().find(hql);
	}


}
