package com.scada.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate4.support.HibernateDaoSupport;

import com.scada.dao.DeviceDao;
import com.scada.domain.Device;
import com.scada.domain.Publish;
import com.scada.domain.Telemetring;

public class DeviceDaoImpl extends HibernateDaoSupport implements DeviceDao {

	@Override
	public void saveDevice(Device device) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().save(device);
	}

	@Override
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		String hql = "from Device d where d.id = "+id;
		Device device = getDeviceById(id);
		
		this.getHibernateTemplate().delete(device);
	}

	@Override
	public List<Device> getAll() {
		// TODO Auto-generated method stub
		String hql = "from Device d";
		return (List<Device>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public List<Device> getDeviceByStation(String station) {
		// TODO Auto-generated method stub
		String hql = "from Device d where d.device_station = '"+station+"'";
		return (List<Device>) this.getHibernateTemplate().find(hql);
	}

	@Override
	public Device getDeviceByName(String name) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void modify(Device device) {
		// TODO Auto-generated method stub
	}

	@Override
	public void update(Device device) {
		// TODO Auto-generated method stub
		this.getHibernateTemplate().update(device);
	}

	@Override
	public Device getDeviceById(int id) {
		// TODO Auto-generated method stub
		String hql = "from Device d where d.id = "+id;
		return (Device) this.getHibernateTemplate().find(hql).get(0);
	}

	@Override
	public List<Device> getDeviceByState(String station, String state) {
		// TODO Auto-generated method stub
		String hql = "from Device d where d.device_station = '"+station+"' and device_state = '"+state+"'";
		return (List<Device>) this.getHibernateTemplate().find(hql);
	}

}
