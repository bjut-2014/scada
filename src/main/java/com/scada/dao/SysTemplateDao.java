package com.scada.dao;

import java.util.List;

import com.scada.domain.SysTemplate;

public interface SysTemplateDao {

	public void delete(Integer id);
	public void save(SysTemplate sysTemplate);
	public List<SysTemplate> getAll();
	
}
