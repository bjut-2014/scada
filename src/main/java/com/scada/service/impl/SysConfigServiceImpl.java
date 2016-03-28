package com.scada.service.impl;

import com.scada.dao.SysConfigDao;
import com.scada.domain.SysConfig;
import com.scada.service.SysConfigService;

public class SysConfigServiceImpl implements SysConfigService {

	private SysConfigDao sysConfigDao;
	
	@Override
	public void delete(Integer id) {
		sysConfigDao.delete(id);
	}

	@Override
	public void save(SysConfig sysConfig) {
		sysConfigDao.save(sysConfig);
	}

	@Override
	public void update(SysConfig sysConfig) {
		sysConfigDao.update(sysConfig);
	}
	
	@Override
	public SysConfig get(Integer id) {
		return this.sysConfigDao.get(id);
	}
	
	

	public SysConfigDao getSysConfigDao() {
		return sysConfigDao;
	}

	public void setSysConfigDao(SysConfigDao sysConfigDao) {
		this.sysConfigDao = sysConfigDao;
	}

	

	
	
}
