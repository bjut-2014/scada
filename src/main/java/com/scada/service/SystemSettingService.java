package com.scada.service;

import java.util.List;

import com.scada.domain.SystemSetting;

public interface SystemSettingService {

	public void saveSystemSetting(SystemSetting systemSetting);
	
	public List<SystemSetting> getAll();
}
