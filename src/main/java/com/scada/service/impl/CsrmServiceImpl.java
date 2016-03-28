package com.scada.service.impl;

import java.util.List;

import com.scada.dao.CsrmDao;
import com.scada.domain.Csrm;
import com.scada.service.CsrmService;

public class CsrmServiceImpl implements CsrmService {

	private CsrmDao csrmDao;

	public CsrmDao getCsrmDao() {
		return csrmDao;
	}
	public void setCsrmDao(CsrmDao csrmDao) {
		this.csrmDao = csrmDao;
	}
	
	public void save(Csrm csrm) {
		this.csrmDao.save(csrm);
	}
	
	@Override
	public List<Csrm> getAll() {
		// TODO Auto-generated method stub
		List<Csrm> csrms = csrmDao.getAll();
		return csrms;
	}
	
	
	
}