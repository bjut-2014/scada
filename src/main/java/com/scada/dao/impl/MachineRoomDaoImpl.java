package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.MachineRoomDao;
import com.scada.domain.MachineRoom;

public class MachineRoomDaoImpl extends HibernateDaoSupport implements MachineRoomDao {

	@Override
	public void saveMachineRoom(MachineRoom machineRoom) {
		this.getHibernateTemplate().save(machineRoom);
	}

	@Override
	public void delete(Integer id) {
		//String hsql = "delete from MachineRoom mr where mr.id = ?";
	}

	@Override
	public List<MachineRoom> getAll() {
		String hql = "from MachineRoom mr";
		return (List<MachineRoom>) this.getHibernateTemplate().find(hql);
		//return this.getSessionFactory().getCurrentSession().createQuery(hql).list();
	}

	@Override
	public MachineRoom getMachineRoomByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

}
