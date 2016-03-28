package com.scada.service;

import java.util.List;

import com.scada.domain.Telecommand;


public interface TelecommandService {
	public void saveTelecommand(Telecommand telecommand);
	
	public List<Telecommand> getAll();
	
	public List<Telecommand> getTelecommandByStation(String station);

	public List<Telecommand> getTelecommandByState(String station, String state);
}
