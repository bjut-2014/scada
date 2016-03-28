package com.scada.service.impl;

import java.util.List;

import com.scada.dao.WarningDao;
import com.scada.domain.Warning;
import com.scada.service.WarningService;

public class WaringServiceImpl implements WarningService {

	private WarningDao warningDao;
	
	
	public WarningDao getWarningDao() {
		return warningDao;
	}

	public void setWarningDao(WarningDao warningDao) {
		this.warningDao = warningDao;
	}

	@Override
	public void saveWarning(Warning Warning) {
		// TODO Auto-generated method stub
		this.warningDao.saveWarning(Warning);
	}

	@Override
	public List<Warning> getAll() {
		// TODO Auto-generated method stub
		List<Warning> warnings = warningDao.getAll();
		return warnings;
	}

	@Override
	public List<Warning> getWarningByStation(String station) {
		// TODO Auto-generated method stub
		List<Warning> warnings = warningDao.getWarningByStation(station);
		return warnings;
	}

	@Override
	public List<Warning> getWarningByState(String station, String state) {
		// TODO Auto-generated method stub
		List<Warning> warnings = warningDao.getWarningByState(station,state);
		return warnings;
	}

	@Override
	public Object getWarningById(int id) {
		// TODO Auto-generated method stub
		return warningDao.getWarningById(id);
	}

	@Override
	public void updateWarning(Warning warning) {
		// TODO Auto-generated method stub
		warningDao.update(warning);
	}

	@Override
	public void delInfoById(int id) {
		// TODO Auto-generated method stub
		warningDao.delete(id);
	}

	@Override
	public List<Warning> getWarning() {
		// TODO Auto-generated method stub
		return warningDao.getWarning();
	}

	@Override
	public List<Warning> getSecure() {
		// TODO Auto-generated method stub
		return warningDao.getSecure();
	}

}
