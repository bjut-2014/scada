package com.scada.service;

import com.scada.domain.SysConfig;

public interface SysConfigService {

	public void delete(Integer id);
	//public List<SysConfig> getAll();
	public void save(SysConfig sysConfig);
	public void update(SysConfig sysConfig);
	public SysConfig get(Integer id);
}
