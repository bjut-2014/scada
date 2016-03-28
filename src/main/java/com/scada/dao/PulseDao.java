package com.scada.dao;

import java.util.List;

import com.scada.domain.Pulse;

public interface PulseDao {
	public void savePulse(Pulse pulse);
	
	public void delete(Integer id);
	
	public void modify(Pulse pulse);
	
	public List<Pulse> getAll();
	
	public List<Pulse> getPulseByStation(String station);
	
	public Pulse getPulseByName(String name);
	
	public Pulse getPulseById(int id);

	public void update(Pulse pulse);

	public List<Pulse> getPulseByState(String station, String state);
}
