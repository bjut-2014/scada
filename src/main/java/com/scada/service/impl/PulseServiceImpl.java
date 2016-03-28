package com.scada.service.impl;

import java.util.List;

import com.scada.dao.PulseDao;
import com.scada.domain.Pulse;
import com.scada.domain.Telemetring;
import com.scada.service.PulseService;

public class PulseServiceImpl implements PulseService {

	private PulseDao pulseDao; 
	public PulseDao getPulseDao() {
		return pulseDao;
	}

	public void setPulseDao(PulseDao pulseDao) {
		this.pulseDao = pulseDao;
	}

	@Override
	public void savePulse(Pulse pulse) {
		// TODO Auto-generated method stub
		pulseDao.savePulse(pulse);
	}

	@Override
	public void updatePulse(Pulse pulse) {
		// TODO Auto-generated method stub
		pulseDao.update(pulse);
	}

	@Override
	public List<Pulse> getAll() {
		// TODO Auto-generated method stub
		return pulseDao.getAll();
	}

	@Override
	public void delInfoById(int id) {
		// TODO Auto-generated method stub
		pulseDao.delete(id);
	}

	@Override
	public Pulse getPulseById(int id) {
		// TODO Auto-generated method stub
		return pulseDao.getPulseById(id);
	}

	@Override
	public List<Pulse> getPulseByStation(String station) {
		// TODO Auto-generated method stub
		List<Pulse> pulses = pulseDao.getPulseByStation(station);
		return pulses;
	}

	@Override
	public List<Pulse> getPulseByState(String station, String state) {
		// TODO Auto-generated method stub
		List<Pulse> pulses = pulseDao.getPulseByState(station,state);
		return pulses;
	}

}
