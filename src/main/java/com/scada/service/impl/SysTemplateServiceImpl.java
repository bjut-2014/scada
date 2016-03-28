package com.scada.service.impl;

import java.util.List;

import com.scada.dao.SysTemplateDao;
import com.scada.domain.SysTemplate;
import com.scada.service.SysTemplateService;

public class SysTemplateServiceImpl implements SysTemplateService {

	private SysTemplateDao sysTemplateDao;
	
	@Override
	public void delete(Integer id) {
		sysTemplateDao.delete(id);
	}

	@Override
	public void save(SysTemplate sysTemplate) {
		sysTemplateDao.save(sysTemplate);
	}

	@Override
	public List<SysTemplate> getAll() {
		return sysTemplateDao.getAll();
	}

	public SysTemplateDao getSysTemplateDao() {
		return sysTemplateDao;
	}

	public void setSysTemplateDao(SysTemplateDao sysTemplateDao) {
		this.sysTemplateDao = sysTemplateDao;
	}

	
	
}
