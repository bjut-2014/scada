package com.scada.dao;

import java.util.List;

import com.scada.domain.SysConfig;

public interface SysConfigDao {

	public void delete(Integer id);
	//public List<SysConfig> getAll();
	public void save(SysConfig sysConfig);
	public void update(SysConfig sysConfig);
	public SysConfig get(Integer id);
}
