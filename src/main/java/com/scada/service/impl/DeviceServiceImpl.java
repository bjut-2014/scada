package com.scada.service.impl;

import java.util.List;

import com.scada.dao.DeviceDao;
import com.scada.dao.DocumentURLDao;
import com.scada.domain.Device;
import com.scada.service.DeviceService;

public class DeviceServiceImpl implements DeviceService{

	private DeviceDao DeviceDao;
	
	
	public DeviceDao getDeviceDao() {
		return DeviceDao;
	}

	public void setDeviceDao(DeviceDao deviceDao) {
		DeviceDao = deviceDao;
	}

	@Override
	public void saveDevice(Device device) {
		// TODO Auto-generated method stub
		this.DeviceDao.saveDevice(device);
	}

	@Override
	public List<Device> getAll() {
		// TODO Auto-generated method stub
		List<Device> devices = DeviceDao.getAll();
		return devices;
	}

	@Override
	public void updateDevice(Device device) {
		// TODO Auto-generated method stub
		DeviceDao.update(device);
	}

	@Override
	public void delInfoById(int id) {
		// TODO Auto-generated method stub
		DeviceDao.delete(id);
	}



	@Override
	public Device getDeviceById(int id) {
		// TODO Auto-generated method stub
		return DeviceDao.getDeviceById(id);
	}

	@Override
	public List<Device> getDeviceByStation(String station) {
		// TODO Auto-generated method stub
		return DeviceDao.getDeviceByStation(station);
	}

	@Override
	public List<Device> getDeviceByState(String station, String state) {
		// TODO Auto-generated method stub
		return DeviceDao.getDeviceByState(station,state);
	}

	

}
