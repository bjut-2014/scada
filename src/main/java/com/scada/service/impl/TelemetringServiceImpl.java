package com.scada.service.impl;

import java.util.List;

import com.scada.dao.TelemetringDao;
import com.scada.domain.Telemetring;
import com.scada.service.TelemetringService;

public class TelemetringServiceImpl implements TelemetringService{
	private TelemetringDao telemetringDao;
	
	public TelemetringDao getTelemetringDao() {
		return telemetringDao;
	}

	public void setTelemetringDao(TelemetringDao telemetringDao) {
		this.telemetringDao = telemetringDao;
	}

	@Override
	public void saveTelemetring(Telemetring telemetring) {
		// TODO Auto-generated method stub
		this.telemetringDao.saveTelemetring(telemetring);
	}

	@Override
	public List<Telemetring> getAll() {
		// TODO Auto-generated method stub
		List<Telemetring> telemetrings = telemetringDao.getAll();
		return telemetrings;
	}

	@Override
	public List<Telemetring> getTelemetringByStation(String station) {
		// TODO Auto-generated method stub
		List<Telemetring> telemetrings = telemetringDao.getTelemetringByStation(station);
		return telemetrings;
	}

	@Override
	public List<Telemetring> getTelemetringByState(String station, String state) {
		// TODO Auto-generated method stub
		List<Telemetring> telemetrings = telemetringDao.getTelemetringByState(station,  state);
		return telemetrings;
	}

	@Override
	public Object getTelemetringById(int id) {
		// TODO Auto-generated method stub
		return telemetringDao.getTelemetringById(id);
	}

	@Override
	public void updateTelemetring(Telemetring telemetring) {
		// TODO Auto-generated method stub
		telemetringDao.update(telemetring);
	}

	

}
