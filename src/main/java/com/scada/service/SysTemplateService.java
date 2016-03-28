package com.scada.service;

import java.util.List;

import com.scada.domain.SysTemplate;

public interface SysTemplateService {
	public void delete(Integer id);
	public void save(SysTemplate sysTemplate);
	public List<SysTemplate> getAll();
}
