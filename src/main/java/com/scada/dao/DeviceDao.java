package com.scada.dao;

import java.util.List;

import com.scada.domain.Device;

public interface DeviceDao {
	public void saveDevice(Device device);
	
	public void delete(Integer id);
	
	public void modify(Device device);
	
	public List<Device> getAll();
	
	public List<Device> getDeviceByStation(String station);
	
	public Device getDeviceByName(String name);

	public void update(Device device);

	public Device getDeviceById(int id);

	public List<Device> getDeviceByState(String station, String state);

	
}
