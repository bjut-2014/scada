package com.scada.service;

import java.util.List;

import com.scada.domain.Pulse;

public interface PulseService {
	public void savePulse(Pulse pulse);
	public void updatePulse(Pulse pulse);
	
	public List<Pulse> getAll();
	
	public void delInfoById(int id); 
	
	public Pulse getPulseById(int id);
	public List<Pulse> getPulseByStation(String station);
	public List<Pulse> getPulseByState(String station, String state);
	
}
