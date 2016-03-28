package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.TelecommandDao;
import com.scada.domain.Telecommand;
import com.scada.domain.Telemetring;
import com.scada.domain.Warning;

public class TelecommandDaoImpl extends HibernateDaoSupport implements TelecommandDao {

	@Override
	public void saveTelecommandDao(Telecommand telecommand) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(telecommand);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub

		Telecommand telecommand = getTelecommandById(id);
		
		this.getHibernateTemplate().delete(telecommand);
	}
	@Override
	public Telecommand getTelecommandById(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Telecommand tt where tt.id = "+id;
		return (Telecommand) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public List<Telecommand> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Telecommand tt";
		return (List<Telecommand>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Telecommand> getTelecommandByName(String station) {
		// TODO Auto-generated method stub
		String hql = "from Telecommand tt where tt.telec_station = '"+station+"'";
		return (List<Telecommand>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Telecommand> getTelecommandByState(String station, String state) {
		// TODO Auto-generated method stub
		String hql = "from Telecommand tt where tt.telec_station = '"+station+"'"+" and tt.telec_state ='"+state+"'";
		return (List<Telecommand>) this.getHibernateTemplate().find(hql);
	}
	
	@Override
	public void update(Telecommand telecommand) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(telecommand);
	}

}
