package com.scada.service;

import java.util.List;

import com.scada.domain.Device;

public interface DeviceService {
	public void saveDevice(Device device);
	
	public List<Device> getAll();
	
	public void updateDevice(Device device);
	
	public void delInfoById(int id); 
	
	public Device getDeviceById(int id);

	public List<Device> getDeviceByStation(String station);

	public List<Device> getDeviceByState(String station, String state);
}
