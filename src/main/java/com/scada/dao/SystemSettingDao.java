package com.scada.dao;

import java.util.List;

import com.scada.domain.SystemSetting;

public interface SystemSettingDao {

	public void saveSystemSetting(SystemSetting systemSetting);
	
	public void delete(Integer id);
	
	public List<SystemSetting> getAll();
	
	public void update();
	
}