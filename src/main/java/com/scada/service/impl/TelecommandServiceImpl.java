package com.scada.service.impl;

import java.util.List;

import com.scada.dao.TelecommandDao;
import com.scada.domain.Telecommand;
import com.scada.domain.Telemetring;
import com.scada.service.TelecommandService;

public class TelecommandServiceImpl implements TelecommandService {
	private TelecommandDao telecommandDao;

	public TelecommandDao getTelecommandDao() {
		return telecommandDao;
	}

	public void setTelecommandDao(TelecommandDao telecommandDao) {
		this.telecommandDao = telecommandDao;
	}

	@Override
	public void saveTelecommand(Telecommand telecommand) {
		// TODO Auto-generated method stub
		this.telecommandDao.saveTelecommandDao(telecommand);
	}

	@Override
	public List<Telecommand> getAll() {
		// TODO Auto-generated method stub
		List<Telecommand> telecommands = telecommandDao.getAll();
		return telecommands;
	}

	@Override
	public List<Telecommand> getTelecommandByStation(String station) {
		// TODO Auto-generated method stub
		List<Telecommand> telecommands = telecommandDao.getTelecommandByName(station);
		//System.out.print(telecommands.get(0).gettelec_code());
		return telecommands;
	}

	@Override
	public List<Telecommand> getTelecommandByState(String station, String state) {
		// TODO Auto-generated method stub
		List<Telecommand> telecommands = telecommandDao.getTelecommandByState(station,state);
		//System.out.print(telecommands.get(0).gettelec_code());
		return telecommands;
	}

	

}
