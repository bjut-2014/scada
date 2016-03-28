package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.PulseDao;
import com.scada.domain.Publish;
import com.scada.domain.Pulse;
import com.scada.domain.Warning;

public class PulseDaoImpl extends HibernateDaoSupport implements PulseDao {

	@Override
	public void savePulse(Pulse pulse) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(pulse);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Pulse p where p.id = "+id;
		Pulse pulse = getPulseById(id);
		System.out.println("deldete:"+pulse.getId());
		this.getHibernateTemplate().delete(pulse);
	}

	@Override
	public void modify(Pulse pulse) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Pulse> getAll() {
		// TODO Auto-generated method stub
		String hql = " from Pulse p";
		@SuppressWarnings("unchecked")
		List<Pulse> pulse = (List<Pulse>) this.getHibernateTemplate().find(hql);
		return pulse;
	}


	@Override
	public Pulse getPulseByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Pulse getPulseById(int id) {
		// TODO Auto-generated method stub
		String hql = "from Pulse p where p.id = "+id;
		return (Pulse) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public void update(Pulse pulse) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(pulse);
	}

	@Override
	public List<Pulse> getPulseByState(String station, String state) {
		// TODO Auto-generated method stub
		String hql = "from Pulse p where p.pulse_station = '"+station+"' and p.pluse_state ='"+state+"'";
		return (List<Pulse>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Pulse> getPulseByStation(String station) {
		// TODO Auto-generated method stub
	
		String hql = "from Pulse p where p.pulse_station = '"+station+"'";
		return (List<Pulse>) this.getHibernateTemplate().find(hql);
	}

	
}
