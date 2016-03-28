package com.scada.dao;

import java.util.List;

import com.scada.domain.Telemetring;

public interface TelemetringDao {
	public void saveTelemetring(Telemetring telemetring);
	
	public void delete(Integer id);
	
	public List<Telemetring> getAll();
	
	public List<Telemetring> getTelemetringByStation(String station);
	
	public Telemetring getTelemetringByName(String name);

	public List<Telemetring> getTelemetringByState(String station, String state);

	public Object getTelemetringById(int id);

	public void update(Telemetring telemetring);

	
}
