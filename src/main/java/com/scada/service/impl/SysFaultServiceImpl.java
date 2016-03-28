package com.scada.service.impl;

import java.util.List;

import com.scada.dao.SysFaultDao;
import com.scada.domain.SysFault;
import com.scada.service.SysFaultService;

public class SysFaultServiceImpl implements SysFaultService {

	private SysFaultDao sysFaultDao;

	public SysFaultDao getSysFaultDao() {
		return sysFaultDao;
	}

	public void setSysFaultDao(SysFaultDao sysFaultDao) {
		this.sysFaultDao = sysFaultDao;
	}

	@Override
	public void delete(Integer id) {
		
	}

	@Override
	public List<SysFault> getAll() {
		return this.sysFaultDao.getAll();
	}

	@Override
	public void save(SysFault sysFault) {
		this.sysFaultDao.save(sysFault);
	}

	@Override
	public void update() {
		
	}

}
