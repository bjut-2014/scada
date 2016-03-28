package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.TelemetringDao;
import com.scada.domain.Telemetring;

public class TelemetringDaoImpl extends HibernateDaoSupport implements TelemetringDao {

	@Override
	public void saveTelemetring(Telemetring telemetring) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(telemetring);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Telemetring> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Telemetring tt";
		return (List<Telemetring>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Telemetring getTelemetringByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Telemetring> getTelemetringByStation(String station) {
		// TODO Auto-generated method stub
		String hql = "from Telemetring tt where tele_station = '"+station+"'";
		return (List<Telemetring>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Telemetring> getTelemetringByState(String station, String state) {
		// TODO Auto-generated method stub
		String hql = "from Telemetring tt where tele_station = '"+station+"' and tele_state = '"+state+"'";
		return (List<Telemetring>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Object getTelemetringById(int id) {
		// TODO Auto-generated method stub
		String hql = "from Telemetring tt where id = '"+id+"'";
		return (Telemetring)this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public void update(Telemetring telemetring) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(telemetring);
	}


}
