package com.scada.service.impl;

import com.scada.dao.SysSafetyDao;
import com.scada.domain.SysSafety;
import com.scada.service.SysSafetyService;

public class SysSafetyServiceImpl implements SysSafetyService {

	private SysSafetyDao sysSafetyDao;
	
	@Override
	public void delete(Integer id) {
		sysSafetyDao.delete(id);
	}

	@Override
	public void save(SysSafety sysSafety) {
		sysSafetyDao.save(sysSafety);
	}

	@Override
	public void update(SysSafety sysSafety) {
		sysSafetyDao.update(sysSafety);
	}

	@Override
	public SysSafety get(Integer id) {
		return sysSafetyDao.get(id);
	}

	public SysSafetyDao getSysSafetyDao() {
		return sysSafetyDao;
	}

	public void setSysSafetyDao(SysSafetyDao sysSafetyDao) {
		this.sysSafetyDao = sysSafetyDao;
	}

}
