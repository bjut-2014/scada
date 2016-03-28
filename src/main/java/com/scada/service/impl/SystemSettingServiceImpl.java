package com.scada.service.impl;

import java.util.List;

import com.scada.dao.SystemSettingDao;
import com.scada.domain.SystemSetting;
import com.scada.service.SystemSettingService;

public class SystemSettingServiceImpl implements SystemSettingService {
	
	private SystemSettingDao systemSettingDao;

	public SystemSettingDao getSystemSettingDao() {
		return systemSettingDao;
	}
	public void setSystemSettingDao(SystemSettingDao systemSettingDao) {
		this.systemSettingDao = systemSettingDao;
	}
	@Override
	public void saveSystemSetting(SystemSetting systemSetting) {
		// TODO Auto-generated method stub
		this.systemSettingDao.saveSystemSetting(systemSetting);
	}
	@Override
	public List<SystemSetting> getAll() {
		// TODO Auto-generated method stub
		List<SystemSetting> systemSettings = systemSettingDao.getAll();
		return systemSettings;
	}
	
	
}